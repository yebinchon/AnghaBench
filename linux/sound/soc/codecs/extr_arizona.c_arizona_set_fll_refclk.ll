; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_set_fll_refclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_set_fll_refclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona_fll = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arizona_set_fll_refclk(%struct.arizona_fll* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.arizona_fll*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.arizona_fll* %0, %struct.arizona_fll** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %12 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %18 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %62

23:                                               ; preds = %16, %4
  %24 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %25 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = icmp ugt i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %35 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @arizona_validate_fll(%struct.arizona_fll* %32, i32 %33, i64 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %62

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %28, %23
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %46 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %49 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %51 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %43
  %55 = load i32, i32* %8, align 4
  %56 = icmp ugt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %59 = call i32 @arizona_enable_fll(%struct.arizona_fll* %58)
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %57, %54, %43
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %40, %22
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @arizona_validate_fll(%struct.arizona_fll*, i32, i64) #1

declare dso_local i32 @arizona_enable_fll(%struct.arizona_fll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
