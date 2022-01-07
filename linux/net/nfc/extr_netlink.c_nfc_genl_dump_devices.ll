; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_dump_devices.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_dump_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i64*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.class_dev_iter = type { i32 }
%struct.nfc_dev = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfc_devlist_mutex = common dso_local global i32 0, align 4
@nfc_devlist_generation = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @nfc_genl_dump_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfc_genl_dump_devices(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.class_dev_iter*, align 8
  %7 = alloca %struct.nfc_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %11 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %12 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.class_dev_iter*
  store %struct.class_dev_iter* %16, %struct.class_dev_iter** %6, align 8
  %17 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %18 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.nfc_dev*
  store %struct.nfc_dev* %22, %struct.nfc_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %23 = load %struct.class_dev_iter*, %struct.class_dev_iter** %6, align 8
  %24 = icmp ne %struct.class_dev_iter* %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.class_dev_iter* @kmalloc(i32 4, i32 %26)
  store %struct.class_dev_iter* %27, %struct.class_dev_iter** %6, align 8
  %28 = load %struct.class_dev_iter*, %struct.class_dev_iter** %6, align 8
  %29 = icmp ne %struct.class_dev_iter* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %91

33:                                               ; preds = %25
  %34 = load %struct.class_dev_iter*, %struct.class_dev_iter** %6, align 8
  %35 = ptrtoint %struct.class_dev_iter* %34 to i64
  %36 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %37 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  store i64 %35, i64* %39, align 8
  br label %40

40:                                               ; preds = %33, %2
  %41 = call i32 @mutex_lock(i32* @nfc_devlist_mutex)
  %42 = load i32, i32* @nfc_devlist_generation, align 4
  %43 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %44 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.class_dev_iter*, %struct.class_dev_iter** %6, align 8
  %49 = call i32 @nfc_device_iter_init(%struct.class_dev_iter* %48)
  %50 = load %struct.class_dev_iter*, %struct.class_dev_iter** %6, align 8
  %51 = call %struct.nfc_dev* @nfc_device_iter_next(%struct.class_dev_iter* %50)
  store %struct.nfc_dev* %51, %struct.nfc_dev** %7, align 8
  br label %52

52:                                               ; preds = %47, %40
  br label %53

53:                                               ; preds = %77, %52
  %54 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %55 = icmp ne %struct.nfc_dev* %54, null
  br i1 %55, label %56, label %80

56:                                               ; preds = %53
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %59 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %60 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @NETLINK_CB(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %67 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %72 = load i32, i32* @NLM_F_MULTI, align 4
  %73 = call i32 @nfc_genl_send_device(%struct.sk_buff* %57, %struct.nfc_dev* %58, i32 %65, i32 %70, %struct.netlink_callback* %71, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %56
  br label %80

77:                                               ; preds = %56
  %78 = load %struct.class_dev_iter*, %struct.class_dev_iter** %6, align 8
  %79 = call %struct.nfc_dev* @nfc_device_iter_next(%struct.class_dev_iter* %78)
  store %struct.nfc_dev* %79, %struct.nfc_dev** %7, align 8
  br label %53

80:                                               ; preds = %76, %53
  %81 = call i32 @mutex_unlock(i32* @nfc_devlist_mutex)
  %82 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %83 = ptrtoint %struct.nfc_dev* %82 to i64
  %84 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %85 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 1
  store i64 %83, i64* %87, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %80, %30
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.class_dev_iter* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nfc_device_iter_init(%struct.class_dev_iter*) #1

declare dso_local %struct.nfc_dev* @nfc_device_iter_next(%struct.class_dev_iter*) #1

declare dso_local i32 @nfc_genl_send_device(%struct.sk_buff*, %struct.nfc_dev*, i32, i32, %struct.netlink_callback*, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
