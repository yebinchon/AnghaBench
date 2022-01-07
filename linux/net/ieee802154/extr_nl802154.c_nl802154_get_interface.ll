; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_get_interface.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_get_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, %struct.wpan_dev** }
%struct.wpan_dev = type { i32 }
%struct.cfg802154_registered_device = type opaque

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl802154_get_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl802154_get_interface(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.cfg802154_registered_device*, align 8
  %8 = alloca %struct.wpan_dev*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %10 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %9, i32 0, i32 2
  %11 = load %struct.wpan_dev**, %struct.wpan_dev*** %10, align 8
  %12 = getelementptr inbounds %struct.wpan_dev*, %struct.wpan_dev** %11, i64 0
  %13 = load %struct.wpan_dev*, %struct.wpan_dev** %12, align 8
  %14 = bitcast %struct.wpan_dev* %13 to %struct.cfg802154_registered_device*
  store %struct.cfg802154_registered_device* %14, %struct.cfg802154_registered_device** %7, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 2
  %17 = load %struct.wpan_dev**, %struct.wpan_dev*** %16, align 8
  %18 = getelementptr inbounds %struct.wpan_dev*, %struct.wpan_dev** %17, i64 1
  %19 = load %struct.wpan_dev*, %struct.wpan_dev** %18, align 8
  store %struct.wpan_dev* %19, %struct.wpan_dev** %8, align 8
  %20 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.sk_buff* @nlmsg_new(i32 %20, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %6, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %50

28:                                               ; preds = %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %31 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %34 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %7, align 8
  %37 = bitcast %struct.cfg802154_registered_device* %36 to %struct.wpan_dev*
  %38 = load %struct.wpan_dev*, %struct.wpan_dev** %8, align 8
  %39 = call i64 @nl802154_send_iface(%struct.sk_buff* %29, i32 %32, i32 %35, i32 0, %struct.wpan_dev* %37, %struct.wpan_dev* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %28
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = call i32 @nlmsg_free(%struct.sk_buff* %42)
  %44 = load i32, i32* @ENOBUFS, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %50

46:                                               ; preds = %28
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %49 = call i32 @genlmsg_reply(%struct.sk_buff* %47, %struct.genl_info* %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %41, %25
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i64 @nl802154_send_iface(%struct.sk_buff*, i32, i32, i32, %struct.wpan_dev*, %struct.wpan_dev*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
