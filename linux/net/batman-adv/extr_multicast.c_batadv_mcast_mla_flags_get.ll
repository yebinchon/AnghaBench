; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_mla_flags_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_mla_flags_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_mcast_mla_flags = type { i32, i32, i32, %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state }
%struct.batadv_mcast_querier_state = type { i8*, i8* }
%struct.batadv_priv = type { %struct.net_device* }
%struct.net_device = type { i32 }

@CONFIG_BRIDGE_IGMP_SNOOPING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"No bridge IGMP snooping compiled - multicast optimizations disabled\0A\00", align 1
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@BATADV_MCAST_WANT_ALL_UNSNOOPABLES = common dso_local global i32 0, align 4
@BATADV_MCAST_WANT_ALL_IPV4 = common dso_local global i32 0, align 4
@BATADV_MCAST_WANT_NO_RTR4 = common dso_local global i32 0, align 4
@BATADV_MCAST_WANT_ALL_IPV6 = common dso_local global i32 0, align 4
@BATADV_MCAST_WANT_NO_RTR6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_mcast_mla_flags*, %struct.batadv_priv*)* @batadv_mcast_mla_flags_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_mcast_mla_flags_get(%struct.batadv_mcast_mla_flags* noalias sret %0, %struct.batadv_priv* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.batadv_mcast_querier_state*, align 8
  %6 = alloca %struct.batadv_mcast_querier_state*, align 8
  %7 = alloca %struct.net_device*, align 8
  store %struct.batadv_priv* %1, %struct.batadv_priv** %3, align 8
  %8 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %9 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %8, i32 0, i32 0
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.net_device* @batadv_mcast_get_bridge(%struct.net_device* %11)
  store %struct.net_device* %12, %struct.net_device** %7, align 8
  %13 = call i32 @memset(%struct.batadv_mcast_mla_flags* %0, i32 0, i32 48)
  %14 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %0, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = call i32 @batadv_mcast_mla_rtr_flags_get(%struct.batadv_priv* %15, %struct.net_device* %16)
  %18 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %0, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 8
  %21 = load %struct.net_device*, %struct.net_device** %7, align 8
  %22 = icmp ne %struct.net_device* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %100

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = call i32 @dev_put(%struct.net_device* %25)
  %27 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %0, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %0, i32 0, i32 4
  store %struct.batadv_mcast_querier_state* %28, %struct.batadv_mcast_querier_state** %5, align 8
  %29 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %0, i32 0, i32 3
  store %struct.batadv_mcast_querier_state* %29, %struct.batadv_mcast_querier_state** %6, align 8
  %30 = load i32, i32* @CONFIG_BRIDGE_IGMP_SNOOPING, align 4
  %31 = call i32 @IS_ENABLED(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %24
  %34 = call i32 @pr_warn_once(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %24
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = load i32, i32* @ETH_P_IP, align 4
  %38 = call i8* @br_multicast_has_querier_anywhere(%struct.net_device* %36, i32 %37)
  %39 = load %struct.batadv_mcast_querier_state*, %struct.batadv_mcast_querier_state** %5, align 8
  %40 = getelementptr inbounds %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = load i32, i32* @ETH_P_IP, align 4
  %43 = call i8* @br_multicast_has_querier_adjacent(%struct.net_device* %41, i32 %42)
  %44 = load %struct.batadv_mcast_querier_state*, %struct.batadv_mcast_querier_state** %5, align 8
  %45 = getelementptr inbounds %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = load i32, i32* @ETH_P_IPV6, align 4
  %48 = call i8* @br_multicast_has_querier_anywhere(%struct.net_device* %46, i32 %47)
  %49 = load %struct.batadv_mcast_querier_state*, %struct.batadv_mcast_querier_state** %6, align 8
  %50 = getelementptr inbounds %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = load i32, i32* @ETH_P_IPV6, align 4
  %53 = call i8* @br_multicast_has_querier_adjacent(%struct.net_device* %51, i32 %52)
  %54 = load %struct.batadv_mcast_querier_state*, %struct.batadv_mcast_querier_state** %6, align 8
  %55 = getelementptr inbounds %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @BATADV_MCAST_WANT_ALL_UNSNOOPABLES, align 4
  %57 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %0, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 8
  %60 = load %struct.batadv_mcast_querier_state*, %struct.batadv_mcast_querier_state** %5, align 8
  %61 = getelementptr inbounds %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %35
  %65 = load %struct.batadv_mcast_querier_state*, %struct.batadv_mcast_querier_state** %5, align 8
  %66 = getelementptr inbounds %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %64, %35
  %70 = load i32, i32* @BATADV_MCAST_WANT_ALL_IPV4, align 4
  %71 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %0, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* @BATADV_MCAST_WANT_NO_RTR4, align 4
  %75 = xor i32 %74, -1
  %76 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %0, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %75
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %69, %64
  %80 = load %struct.batadv_mcast_querier_state*, %struct.batadv_mcast_querier_state** %6, align 8
  %81 = getelementptr inbounds %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.batadv_mcast_querier_state*, %struct.batadv_mcast_querier_state** %6, align 8
  %86 = getelementptr inbounds %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %99

89:                                               ; preds = %84, %79
  %90 = load i32, i32* @BATADV_MCAST_WANT_ALL_IPV6, align 4
  %91 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %0, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %90
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* @BATADV_MCAST_WANT_NO_RTR6, align 4
  %95 = xor i32 %94, -1
  %96 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %0, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %95
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %89, %84
  br label %100

100:                                              ; preds = %99, %23
  ret void
}

declare dso_local %struct.net_device* @batadv_mcast_get_bridge(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.batadv_mcast_mla_flags*, i32, i32) #1

declare dso_local i32 @batadv_mcast_mla_rtr_flags_get(%struct.batadv_priv*, %struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @pr_warn_once(i8*) #1

declare dso_local i8* @br_multicast_has_querier_anywhere(%struct.net_device*, i32) #1

declare dso_local i8* @br_multicast_has_querier_adjacent(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
