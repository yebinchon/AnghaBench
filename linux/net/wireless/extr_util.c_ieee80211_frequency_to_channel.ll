; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_util.c_ieee80211_frequency_to_channel.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_util.c_ieee80211_frequency_to_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_frequency_to_channel(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 2484
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 14, i32* %2, align 4
  br label %49

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 2484
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = sub nsw i32 %11, 2407
  %13 = sdiv i32 %12, 5
  store i32 %13, i32* %2, align 4
  br label %49

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = icmp sge i32 %15, 4910
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = icmp sle i32 %18, 4980
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = sub nsw i32 %21, 4000
  %23 = sdiv i32 %22, 5
  store i32 %23, i32* %2, align 4
  br label %49

24:                                               ; preds = %17, %14
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 5945
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = sub nsw i32 %28, 5000
  %30 = sdiv i32 %29, 5
  store i32 %30, i32* %2, align 4
  br label %49

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = icmp sle i32 %32, 45000
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = sub nsw i32 %35, 5940
  %37 = sdiv i32 %36, 5
  store i32 %37, i32* %2, align 4
  br label %49

38:                                               ; preds = %31
  %39 = load i32, i32* %3, align 4
  %40 = icmp sge i32 %39, 58320
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = icmp sle i32 %42, 70200
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = sub nsw i32 %45, 56160
  %47 = sdiv i32 %46, 2160
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %41, %38
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %44, %34, %27, %20, %10, %6
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
