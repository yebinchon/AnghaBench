; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_get_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i32* }
%struct.nfc_dev = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@NFC_ATTR_DEVICE_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nfc_genl_get_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfc_genl_get_device(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nfc_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %10 = load i32, i32* @ENOBUFS, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @NFC_ATTR_DEVICE_INDEX, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %72

22:                                               ; preds = %2
  %23 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %24 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @NFC_ATTR_DEVICE_INDEX, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nla_get_u32(i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call %struct.nfc_dev* @nfc_get_device(i32 %30)
  store %struct.nfc_dev* %31, %struct.nfc_dev** %7, align 8
  %32 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %33 = icmp ne %struct.nfc_dev* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %72

37:                                               ; preds = %22
  %38 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.sk_buff* @nlmsg_new(i32 %38, i32 %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %6, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %68

46:                                               ; preds = %37
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %49 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %50 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %53 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @nfc_genl_send_device(%struct.sk_buff* %47, %struct.nfc_dev* %48, i32 %51, i32 %54, i32* null, i32 0)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %65

59:                                               ; preds = %46
  %60 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %61 = call i32 @nfc_put_device(%struct.nfc_dev* %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %64 = call i32 @genlmsg_reply(%struct.sk_buff* %62, %struct.genl_info* %63)
  store i32 %64, i32* %3, align 4
  br label %72

65:                                               ; preds = %58
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = call i32 @nlmsg_free(%struct.sk_buff* %66)
  br label %68

68:                                               ; preds = %65, %43
  %69 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %70 = call i32 @nfc_put_device(%struct.nfc_dev* %69)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %59, %34, %19
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @nla_get_u32(i32) #1

declare dso_local %struct.nfc_dev* @nfc_get_device(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @nfc_genl_send_device(%struct.sk_buff*, %struct.nfc_dev*, i32, i32, i32*, i32) #1

declare dso_local i32 @nfc_put_device(%struct.nfc_dev*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
