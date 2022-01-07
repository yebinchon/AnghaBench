; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_stop_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_stop_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64, i32* }
%struct.nfc_dev = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@NFC_ATTR_DEVICE_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nfc_genl_stop_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfc_genl_stop_poll(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nfc_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %10 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @NFC_ATTR_DEVICE_INDEX, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %81

19:                                               ; preds = %2
  %20 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @NFC_ATTR_DEVICE_INDEX, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @nla_get_u32(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.nfc_dev* @nfc_get_device(i32 %27)
  store %struct.nfc_dev* %28, %struct.nfc_dev** %6, align 8
  %29 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %30 = icmp ne %struct.nfc_dev* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %81

34:                                               ; preds = %19
  %35 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %36 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %35, i32 0, i32 1
  %37 = call i32 @device_lock(i32* %36)
  %38 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %39 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %34
  %43 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %44 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %43, i32 0, i32 1
  %45 = call i32 @device_unlock(i32* %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %81

48:                                               ; preds = %34
  %49 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %50 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %49, i32 0, i32 1
  %51 = call i32 @device_unlock(i32* %50)
  %52 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %53 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %57 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %61 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %48
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %73

67:                                               ; preds = %48
  %68 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %69 = call i32 @nfc_stop_poll(%struct.nfc_dev* %68)
  store i32 %69, i32* %7, align 4
  %70 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %71 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %67, %64
  %74 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %75 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %79 = call i32 @nfc_put_device(%struct.nfc_dev* %78)
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %73, %42, %31, %16
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @nla_get_u32(i32) #1

declare dso_local %struct.nfc_dev* @nfc_get_device(i32) #1

declare dso_local i32 @device_lock(i32*) #1

declare dso_local i32 @device_unlock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nfc_stop_poll(%struct.nfc_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nfc_put_device(%struct.nfc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
