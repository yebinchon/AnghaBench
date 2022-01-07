; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_bridge_log.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_bridge_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.batadv_mcast_mla_flags }
%struct.batadv_mcast_mla_flags = type { i32, i32, i64 }

@BATADV_DBG_MCAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Bridge added: Setting Unsnoopables(U)-flag\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Bridge removed: Unsetting Unsnoopables(U)-flag\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"IGMP\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"MLD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.batadv_mcast_mla_flags*)* @batadv_mcast_bridge_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_mcast_bridge_log(%struct.batadv_priv* %0, %struct.batadv_mcast_mla_flags* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.batadv_mcast_mla_flags*, align 8
  %5 = alloca %struct.batadv_mcast_mla_flags*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.batadv_mcast_mla_flags* %1, %struct.batadv_mcast_mla_flags** %4, align 8
  %6 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %7 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.batadv_mcast_mla_flags* %8, %struct.batadv_mcast_mla_flags** %5, align 8
  %9 = load %struct.batadv_mcast_mla_flags*, %struct.batadv_mcast_mla_flags** %5, align 8
  %10 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load %struct.batadv_mcast_mla_flags*, %struct.batadv_mcast_mla_flags** %4, align 8
  %15 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* @BATADV_DBG_MCAST, align 4
  %20 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %21 = call i32 @batadv_dbg(i32 %19, %struct.batadv_priv* %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %37

22:                                               ; preds = %13, %2
  %23 = load %struct.batadv_mcast_mla_flags*, %struct.batadv_mcast_mla_flags** %5, align 8
  %24 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.batadv_mcast_mla_flags*, %struct.batadv_mcast_mla_flags** %4, align 8
  %29 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @BATADV_DBG_MCAST, align 4
  %34 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %35 = call i32 @batadv_dbg(i32 %33, %struct.batadv_priv* %34, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %27, %22
  br label %37

37:                                               ; preds = %36, %18
  %38 = load %struct.batadv_mcast_mla_flags*, %struct.batadv_mcast_mla_flags** %4, align 8
  %39 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %44 = load %struct.batadv_mcast_mla_flags*, %struct.batadv_mcast_mla_flags** %5, align 8
  %45 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %44, i32 0, i32 1
  %46 = load %struct.batadv_mcast_mla_flags*, %struct.batadv_mcast_mla_flags** %4, align 8
  %47 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %46, i32 0, i32 1
  %48 = call i32 @batadv_mcast_querier_log(%struct.batadv_priv* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %45, i32* %47)
  %49 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %50 = load %struct.batadv_mcast_mla_flags*, %struct.batadv_mcast_mla_flags** %5, align 8
  %51 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %50, i32 0, i32 0
  %52 = load %struct.batadv_mcast_mla_flags*, %struct.batadv_mcast_mla_flags** %4, align 8
  %53 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %52, i32 0, i32 0
  %54 = call i32 @batadv_mcast_querier_log(%struct.batadv_priv* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %51, i32* %53)
  br label %55

55:                                               ; preds = %42, %37
  ret void
}

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*) #1

declare dso_local i32 @batadv_mcast_querier_log(%struct.batadv_priv*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
