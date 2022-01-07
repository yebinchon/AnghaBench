; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_get_wiphy.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_get_wiphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, %struct.cfg80211_registered_device** }
%struct.cfg80211_registered_device = type { i32 }
%struct.nl80211_dump_wiphy_state = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_CMD_NEW_WIPHY = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_get_wiphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_get_wiphy(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.cfg80211_registered_device*, align 8
  %8 = alloca %struct.nl80211_dump_wiphy_state, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %10 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %9, i32 0, i32 2
  %11 = load %struct.cfg80211_registered_device**, %struct.cfg80211_registered_device*** %10, align 8
  %12 = getelementptr inbounds %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, i64 0
  %13 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  store %struct.cfg80211_registered_device* %13, %struct.cfg80211_registered_device** %7, align 8
  %14 = bitcast %struct.nl80211_dump_wiphy_state* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.sk_buff* @nlmsg_new(i32 4096, i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %43

22:                                               ; preds = %2
  %23 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %24 = load i32, i32* @NL80211_CMD_NEW_WIPHY, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %27 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %30 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @nl80211_send_wiphy(%struct.cfg80211_registered_device* %23, i32 %24, %struct.sk_buff* %25, i32 %28, i32 %31, i32 0, %struct.nl80211_dump_wiphy_state* %8)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %22
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i32 @nlmsg_free(%struct.sk_buff* %35)
  %37 = load i32, i32* @ENOBUFS, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %43

39:                                               ; preds = %22
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %42 = call i32 @genlmsg_reply(%struct.sk_buff* %40, %struct.genl_info* %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %34, %19
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #2

declare dso_local i64 @nl80211_send_wiphy(%struct.cfg80211_registered_device*, i32, %struct.sk_buff*, i32, i32, i32, %struct.nl80211_dump_wiphy_state*) #2

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #2

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
