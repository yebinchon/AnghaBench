; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel.c_minstrel_get_tp_avg.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel.c_minstrel_get_tp_avg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_rate = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @minstrel_get_tp_avg(%struct.minstrel_rate* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.minstrel_rate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.minstrel_rate* %0, %struct.minstrel_rate** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.minstrel_rate*, %struct.minstrel_rate** %4, align 8
  %8 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 1000000, i32* %6, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = load %struct.minstrel_rate*, %struct.minstrel_rate** %4, align 8
  %15 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @MINSTREL_FRAC(i32 10, i32 100)
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %37

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @MINSTREL_FRAC(i32 90, i32 100)
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = call i32 @MINSTREL_FRAC(i32 90, i32 100)
  %27 = load i32, i32* %6, align 4
  %28 = sdiv i32 %26, %27
  %29 = mul nsw i32 100000, %28
  %30 = call i32 @MINSTREL_TRUNC(i32 %29)
  store i32 %30, i32* %3, align 4
  br label %37

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sdiv i32 %32, %33
  %35 = mul nsw i32 100000, %34
  %36 = call i32 @MINSTREL_TRUNC(i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %25, %20
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @MINSTREL_FRAC(i32, i32) #1

declare dso_local i32 @MINSTREL_TRUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
