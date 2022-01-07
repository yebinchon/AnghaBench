; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_get_wpan_phy.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_get_wpan_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, %struct.cfg802154_registered_device** }
%struct.cfg802154_registered_device = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL802154_CMD_NEW_WPAN_PHY = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl802154_get_wpan_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl802154_get_wpan_phy(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.cfg802154_registered_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %8 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %9 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %8, i32 0, i32 2
  %10 = load %struct.cfg802154_registered_device**, %struct.cfg802154_registered_device*** %9, align 8
  %11 = getelementptr inbounds %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %10, i64 0
  %12 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %11, align 8
  store %struct.cfg802154_registered_device* %12, %struct.cfg802154_registered_device** %7, align 8
  %13 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.sk_buff* @nlmsg_new(i32 %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %42

21:                                               ; preds = %2
  %22 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %7, align 8
  %23 = load i32, i32* @NL802154_CMD_NEW_WPAN_PHY, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %26 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %29 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @nl802154_send_wpan_phy(%struct.cfg802154_registered_device* %22, i32 %23, %struct.sk_buff* %24, i32 %27, i32 %30, i32 0)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call i32 @nlmsg_free(%struct.sk_buff* %34)
  %36 = load i32, i32* @ENOBUFS, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %42

38:                                               ; preds = %21
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %41 = call i32 @genlmsg_reply(%struct.sk_buff* %39, %struct.genl_info* %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %33, %18
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i64 @nl802154_send_wpan_phy(%struct.cfg802154_registered_device*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
