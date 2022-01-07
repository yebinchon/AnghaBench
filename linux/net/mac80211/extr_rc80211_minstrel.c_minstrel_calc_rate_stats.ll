; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel.c_minstrel_calc_rate_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel.c_minstrel_calc_rate_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_rate_stats = type { i64, i64, i32, i64, i64, i64, i64, i32 }

@EWMA_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @minstrel_calc_rate_stats(%struct.minstrel_rate_stats* %0) #0 {
  %2 = alloca %struct.minstrel_rate_stats*, align 8
  %3 = alloca i32, align 4
  store %struct.minstrel_rate_stats* %0, %struct.minstrel_rate_stats** %2, align 8
  %4 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %5 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %59

11:                                               ; preds = %1
  %12 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %13 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %12, i32 0, i32 6
  store i64 0, i64* %13, align 8
  %14 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %15 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %18 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @MINSTREL_FRAC(i64 %16, i64 %19)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %22 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %11
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %32 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  br label %42

33:                                               ; preds = %11
  %34 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %35 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @EWMA_LEVEL, align 4
  %39 = call i32 @minstrel_ewma(i32 %36, i32 %37, i32 %38)
  %40 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %41 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %33, %29
  %43 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %44 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %47 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  %50 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %51 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %54 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %52
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 8
  br label %64

59:                                               ; preds = %1
  %60 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %61 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  br label %64

64:                                               ; preds = %59, %42
  %65 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %66 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %69 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %68, i32 0, i32 5
  store i64 %67, i64* %69, align 8
  %70 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %71 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %74 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %73, i32 0, i32 3
  store i64 %72, i64* %74, align 8
  %75 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %76 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %75, i32 0, i32 4
  store i64 0, i64* %76, align 8
  %77 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %78 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @MINSTREL_FRAC(i64, i64) #1

declare dso_local i32 @minstrel_ewma(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
