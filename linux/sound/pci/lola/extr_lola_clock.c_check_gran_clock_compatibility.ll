; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_clock.c_check_gran_clock_compatibility.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_clock.c_check_gran_clock_compatibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { i32 }

@LOLA_GRANULARITY_MIN = common dso_local global i32 0, align 4
@LOLA_GRANULARITY_MAX = common dso_local global i32 0, align 4
@LOLA_GRANULARITY_STEP = common dso_local global i32 0, align 4
@LOLA_MAXFREQ_AT_GRANULARITY_MIN = common dso_local global i32 0, align 4
@LOLA_MAXFREQ_AT_GRANULARITY_BELOW_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lola*, i32, i32)* @check_gran_clock_compatibility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_gran_clock_compatibility(%struct.lola* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lola*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lola* %0, %struct.lola** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.lola*, %struct.lola** %5, align 8
  %9 = getelementptr inbounds %struct.lola, %struct.lola* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %49

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @LOLA_GRANULARITY_MIN, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @LOLA_GRANULARITY_MAX, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @LOLA_GRANULARITY_STEP, align 4
  %24 = urem i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %17, %13
  store i32 0, i32* %4, align 4
  br label %49

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @LOLA_GRANULARITY_MIN, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @LOLA_MAXFREQ_AT_GRANULARITY_MIN, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %49

36:                                               ; preds = %31
  br label %48

37:                                               ; preds = %27
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @LOLA_GRANULARITY_MAX, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @LOLA_MAXFREQ_AT_GRANULARITY_BELOW_MAX, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %49

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %37
  br label %48

48:                                               ; preds = %47, %36
  store i32 1, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %45, %35, %26, %12
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
