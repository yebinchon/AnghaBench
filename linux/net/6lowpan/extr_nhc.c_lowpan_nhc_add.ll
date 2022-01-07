; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_nhc.c_lowpan_nhc_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_nhc.c_lowpan_nhc_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lowpan_nhc = type { i64, i64, {}* }

@EINVAL = common dso_local global i32 0, align 4
@LOWPAN_NHC_MAX_ID_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"LOWPAN_NHC_MAX_ID_LEN should be updated to %zd.\0A\00", align 1
@lowpan_nhc_lock = common dso_local global i32 0, align 4
@lowpan_nexthdr_nhcs = common dso_local global %struct.lowpan_nhc** null, align 8
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lowpan_nhc_add(%struct.lowpan_nhc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lowpan_nhc*, align 8
  %4 = alloca i32, align 4
  store %struct.lowpan_nhc* %0, %struct.lowpan_nhc** %3, align 8
  %5 = load %struct.lowpan_nhc*, %struct.lowpan_nhc** %3, align 8
  %6 = getelementptr inbounds %struct.lowpan_nhc, %struct.lowpan_nhc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.lowpan_nhc*, %struct.lowpan_nhc** %3, align 8
  %11 = getelementptr inbounds %struct.lowpan_nhc, %struct.lowpan_nhc* %10, i32 0, i32 2
  %12 = bitcast {}** %11 to i32 (%struct.lowpan_nhc*)**
  %13 = load i32 (%struct.lowpan_nhc*)*, i32 (%struct.lowpan_nhc*)** %12, align 8
  %14 = icmp ne i32 (%struct.lowpan_nhc*)* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %9, %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %62

18:                                               ; preds = %9
  %19 = load %struct.lowpan_nhc*, %struct.lowpan_nhc** %3, align 8
  %20 = getelementptr inbounds %struct.lowpan_nhc, %struct.lowpan_nhc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LOWPAN_NHC_MAX_ID_LEN, align 8
  %23 = icmp sgt i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load %struct.lowpan_nhc*, %struct.lowpan_nhc** %3, align 8
  %26 = getelementptr inbounds %struct.lowpan_nhc, %struct.lowpan_nhc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @WARN_ONCE(i32 %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load %struct.lowpan_nhc*, %struct.lowpan_nhc** %3, align 8
  %30 = getelementptr inbounds %struct.lowpan_nhc, %struct.lowpan_nhc* %29, i32 0, i32 2
  %31 = bitcast {}** %30 to i32 (%struct.lowpan_nhc*)**
  %32 = load i32 (%struct.lowpan_nhc*)*, i32 (%struct.lowpan_nhc*)** %31, align 8
  %33 = load %struct.lowpan_nhc*, %struct.lowpan_nhc** %3, align 8
  %34 = call i32 %32(%struct.lowpan_nhc* %33)
  %35 = call i32 @spin_lock_bh(i32* @lowpan_nhc_lock)
  %36 = load %struct.lowpan_nhc**, %struct.lowpan_nhc*** @lowpan_nexthdr_nhcs, align 8
  %37 = load %struct.lowpan_nhc*, %struct.lowpan_nhc** %3, align 8
  %38 = getelementptr inbounds %struct.lowpan_nhc, %struct.lowpan_nhc* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.lowpan_nhc*, %struct.lowpan_nhc** %36, i64 %39
  %41 = load %struct.lowpan_nhc*, %struct.lowpan_nhc** %40, align 8
  %42 = icmp ne %struct.lowpan_nhc* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %18
  %44 = load i32, i32* @EEXIST, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %59

46:                                               ; preds = %18
  %47 = load %struct.lowpan_nhc*, %struct.lowpan_nhc** %3, align 8
  %48 = call i32 @lowpan_nhc_insert(%struct.lowpan_nhc* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %59

52:                                               ; preds = %46
  %53 = load %struct.lowpan_nhc*, %struct.lowpan_nhc** %3, align 8
  %54 = load %struct.lowpan_nhc**, %struct.lowpan_nhc*** @lowpan_nexthdr_nhcs, align 8
  %55 = load %struct.lowpan_nhc*, %struct.lowpan_nhc** %3, align 8
  %56 = getelementptr inbounds %struct.lowpan_nhc, %struct.lowpan_nhc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.lowpan_nhc*, %struct.lowpan_nhc** %54, i64 %57
  store %struct.lowpan_nhc* %53, %struct.lowpan_nhc** %58, align 8
  br label %59

59:                                               ; preds = %52, %51, %43
  %60 = call i32 @spin_unlock_bh(i32* @lowpan_nhc_lock)
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %59, %15
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @lowpan_nhc_insert(%struct.lowpan_nhc*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
