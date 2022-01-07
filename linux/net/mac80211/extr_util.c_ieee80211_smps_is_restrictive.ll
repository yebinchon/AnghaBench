; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_smps_is_restrictive.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_smps_is_restrictive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IEEE80211_SMPS_AUTOMATIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_smps_is_restrictive(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @IEEE80211_SMPS_AUTOMATIC, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @IEEE80211_SMPS_AUTOMATIC, align 4
  %12 = icmp eq i32 %10, %11
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i1 [ true, %2 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON_ONCE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %33

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %30 [
    i32 128, label %21
    i32 130, label %22
    i32 129, label %26
  ]

21:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %33

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 128
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %33

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 129
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %33

30:                                               ; preds = %19
  %31 = call i32 @WARN_ON(i32 1)
  br label %32

32:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %26, %22, %21, %18
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
