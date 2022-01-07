; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_cfg80211_get_unii.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_cfg80211_get_unii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_get_unii(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sge i32 %4, 5150
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp sle i32 %7, 5250
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i32 0, i32* %2, align 4
  br label %69

10:                                               ; preds = %6, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp sgt i32 %11, 5250
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = icmp sle i32 %14, 5350
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %69

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %3, align 4
  %19 = icmp sgt i32 %18, 5350
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = icmp sle i32 %21, 5470
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 2, i32* %2, align 4
  br label %69

24:                                               ; preds = %20, %17
  %25 = load i32, i32* %3, align 4
  %26 = icmp sgt i32 %25, 5470
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = icmp sle i32 %28, 5725
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 3, i32* %2, align 4
  br label %69

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %3, align 4
  %33 = icmp sgt i32 %32, 5725
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = icmp sle i32 %35, 5825
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 4, i32* %2, align 4
  br label %69

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %3, align 4
  %40 = icmp sgt i32 %39, 5925
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = icmp sle i32 %42, 6425
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 5, i32* %2, align 4
  br label %69

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %3, align 4
  %47 = icmp sgt i32 %46, 6425
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %3, align 4
  %50 = icmp sle i32 %49, 6525
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 6, i32* %2, align 4
  br label %69

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %3, align 4
  %54 = icmp sgt i32 %53, 6525
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* %3, align 4
  %57 = icmp sle i32 %56, 6875
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 7, i32* %2, align 4
  br label %69

59:                                               ; preds = %55, %52
  %60 = load i32, i32* %3, align 4
  %61 = icmp sgt i32 %60, 6875
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* %3, align 4
  %64 = icmp sle i32 %63, 7125
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 8, i32* %2, align 4
  br label %69

66:                                               ; preds = %62, %59
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %66, %65, %58, %51, %44, %37, %30, %23, %16, %9
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
