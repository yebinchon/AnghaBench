; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_notify_wiphy.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_notify_wiphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nl80211_dump_wiphy_state = type { i32 }

@NL80211_CMD_NEW_WIPHY = common dso_local global i32 0, align 4
@NL80211_CMD_DEL_WIPHY = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@nl80211_fam = common dso_local global i32 0, align 4
@NL80211_MCGRP_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nl80211_notify_wiphy(%struct.cfg80211_registered_device* %0, i32 %1) #0 {
  %3 = alloca %struct.cfg80211_registered_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nl80211_dump_wiphy_state, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast %struct.nl80211_dump_wiphy_state* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @NL80211_CMD_NEW_WIPHY, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @NL80211_CMD_DEL_WIPHY, align 4
  %14 = icmp ne i32 %12, %13
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i1 [ false, %2 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.sk_buff* @nlmsg_new(i32 %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %42

25:                                               ; preds = %15
  %26 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i64 @nl80211_send_wiphy(%struct.cfg80211_registered_device* %26, i32 %27, %struct.sk_buff* %28, i32 0, i32 0, i32 0, %struct.nl80211_dump_wiphy_state* %6)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i32 @nlmsg_free(%struct.sk_buff* %32)
  br label %42

34:                                               ; preds = %25
  %35 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %36 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %35, i32 0, i32 0
  %37 = call i32 @wiphy_net(i32* %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load i32, i32* @NL80211_MCGRP_CONFIG, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @genlmsg_multicast_netns(i32* @nl80211_fam, i32 %37, %struct.sk_buff* %38, i32 0, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %34, %31, %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #2

declare dso_local i64 @nl80211_send_wiphy(%struct.cfg80211_registered_device*, i32, %struct.sk_buff*, i32, i32, i32, %struct.nl80211_dump_wiphy_state*) #2

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #2

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #2

declare dso_local i32 @wiphy_net(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
