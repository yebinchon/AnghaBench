; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_window_protected.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_window_protected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }

@BATADV_EXPECTED_SEQNO_RANGE = common dso_local global i32 0, align 4
@BATADV_RESET_PROTECTION_MS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BATADV_DBG_BATMAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"old packet received, start protection\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_window_protected(%struct.batadv_priv* %0, i32 %1, i32 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.batadv_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %9, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp sle i32 %12, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @BATADV_EXPECTED_SEQNO_RANGE, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %16, %5
  %21 = load i64*, i64** %10, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @BATADV_RESET_PROTECTION_MS, align 4
  %24 = call i32 @batadv_has_timed_out(i64 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  br label %39

27:                                               ; preds = %20
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i64*, i64** %10, align 8
  store i64 %28, i64* %29, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32*, i32** %11, align 8
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %36 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %37 = call i32 @batadv_dbg(i32 %35, %struct.batadv_priv* %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %16
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %26
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @batadv_has_timed_out(i64, i32) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
