; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_querier_log.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_querier_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.batadv_mcast_querier_state = type { i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"%s Querier appeared\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"%s Querier disappeared - multicast optimizations disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"No %s Querier present - multicast optimizations disabled\0A\00", align 1
@BATADV_DBG_MCAST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"%s Querier is behind our bridged segment: Might shadow listeners\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"%s Querier is not behind our bridged segment\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, i8*, %struct.batadv_mcast_querier_state*, %struct.batadv_mcast_querier_state*)* @batadv_mcast_querier_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_mcast_querier_log(%struct.batadv_priv* %0, i8* %1, %struct.batadv_mcast_querier_state* %2, %struct.batadv_mcast_querier_state* %3) #0 {
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.batadv_mcast_querier_state*, align 8
  %8 = alloca %struct.batadv_mcast_querier_state*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.batadv_mcast_querier_state* %2, %struct.batadv_mcast_querier_state** %7, align 8
  store %struct.batadv_mcast_querier_state* %3, %struct.batadv_mcast_querier_state** %8, align 8
  %9 = load %struct.batadv_mcast_querier_state*, %struct.batadv_mcast_querier_state** %7, align 8
  %10 = getelementptr inbounds %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %4
  %14 = load %struct.batadv_mcast_querier_state*, %struct.batadv_mcast_querier_state** %8, align 8
  %15 = getelementptr inbounds %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %20 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @batadv_info(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %60

24:                                               ; preds = %13, %4
  %25 = load %struct.batadv_mcast_querier_state*, %struct.batadv_mcast_querier_state** %7, align 8
  %26 = getelementptr inbounds %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.batadv_mcast_querier_state*, %struct.batadv_mcast_querier_state** %8, align 8
  %31 = getelementptr inbounds %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %36 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @batadv_info(i32 %37, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  br label %59

40:                                               ; preds = %29, %24
  %41 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %42 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %40
  %48 = load %struct.batadv_mcast_querier_state*, %struct.batadv_mcast_querier_state** %8, align 8
  %49 = getelementptr inbounds %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %54 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @batadv_info(i32 %55, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %52, %47, %40
  br label %59

59:                                               ; preds = %58, %34
  br label %60

60:                                               ; preds = %59, %18
  %61 = load %struct.batadv_mcast_querier_state*, %struct.batadv_mcast_querier_state** %8, align 8
  %62 = getelementptr inbounds %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %107

65:                                               ; preds = %60
  %66 = load %struct.batadv_mcast_querier_state*, %struct.batadv_mcast_querier_state** %7, align 8
  %67 = getelementptr inbounds %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load %struct.batadv_mcast_querier_state*, %struct.batadv_mcast_querier_state** %8, align 8
  %72 = getelementptr inbounds %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %70, %65
  %76 = load %struct.batadv_mcast_querier_state*, %struct.batadv_mcast_querier_state** %7, align 8
  %77 = getelementptr inbounds %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %75
  %81 = load %struct.batadv_mcast_querier_state*, %struct.batadv_mcast_querier_state** %8, align 8
  %82 = getelementptr inbounds %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80, %70
  %86 = load i32, i32* @BATADV_DBG_MCAST, align 4
  %87 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @batadv_dbg(i32 %86, %struct.batadv_priv* %87, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i8* %88)
  br label %106

90:                                               ; preds = %80, %75
  %91 = load %struct.batadv_mcast_querier_state*, %struct.batadv_mcast_querier_state** %7, align 8
  %92 = getelementptr inbounds %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = load %struct.batadv_mcast_querier_state*, %struct.batadv_mcast_querier_state** %8, align 8
  %97 = getelementptr inbounds %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* @BATADV_DBG_MCAST, align 4
  %102 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 @batadv_dbg(i32 %101, %struct.batadv_priv* %102, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %100, %95, %90
  br label %106

106:                                              ; preds = %105, %85
  br label %107

107:                                              ; preds = %106, %60
  ret void
}

declare dso_local i32 @batadv_info(i32, i8*, i8*) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
