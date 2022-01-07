; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_sender_end.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_sender_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_tp_vars = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BATADV_DBG_TP_METER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Test towards %pM finished..shutting down (reason=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Last timing stats: SRTT=%ums RTTVAR=%ums RTO=%ums\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Final values: cwnd=%u ss_threshold=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.batadv_tp_vars*)* @batadv_tp_sender_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_tp_sender_end(%struct.batadv_priv* %0, %struct.batadv_tp_vars* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.batadv_tp_vars*, align 8
  %5 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.batadv_tp_vars* %1, %struct.batadv_tp_vars** %4, align 8
  %6 = load i32, i32* @BATADV_DBG_TP_METER, align 4
  %7 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %8 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %4, align 8
  %9 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %4, align 8
  %12 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32, %struct.batadv_priv*, i8*, i32, i32, ...) @batadv_dbg(i32 %6, %struct.batadv_priv* %7, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load i32, i32* @BATADV_DBG_TP_METER, align 4
  %16 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %17 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %4, align 8
  %18 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 3
  %21 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %4, align 8
  %22 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 2
  %25 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %4, align 8
  %26 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, %struct.batadv_priv*, i8*, i32, i32, ...) @batadv_dbg(i32 %15, %struct.batadv_priv* %16, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %24, i32 %27)
  %29 = load i32, i32* @BATADV_DBG_TP_METER, align 4
  %30 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %31 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %4, align 8
  %32 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %4, align 8
  %35 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, %struct.batadv_priv*, i8*, i32, i32, ...) @batadv_dbg(i32 %29, %struct.batadv_priv* %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %4, align 8
  %39 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %4, align 8
  %42 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @batadv_tp_session_cookie(i32 %40, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %4, align 8
  %46 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %4, align 8
  %49 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %52 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %4, align 8
  %53 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %4, align 8
  %56 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %55, i32 0, i32 2
  %57 = call i32 @atomic64_read(i32* %56)
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @batadv_tp_batctl_notify(i32 %47, i32 %50, %struct.batadv_priv* %51, i32 %54, i32 %57, i32 %58)
  ret void
}

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i32, i32, ...) #1

declare dso_local i32 @batadv_tp_session_cookie(i32, i32) #1

declare dso_local i32 @batadv_tp_batctl_notify(i32, i32, %struct.batadv_priv*, i32, i32, i32) #1

declare dso_local i32 @atomic64_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
