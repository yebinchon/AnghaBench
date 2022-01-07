; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_set_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_set_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona_fll = type { i32, i32, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arizona_set_fll(%struct.arizona_fll* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  br i1 %15, label %16, label %29

16:                                               ; preds = %4
  %17 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %18 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %24 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %79

29:                                               ; preds = %22, %16, %4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %29
  %33 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %34 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %39 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %40 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @arizona_validate_fll(%struct.arizona_fll* %38, i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %79

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %32
  %50 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @arizona_validate_fll(%struct.arizona_fll* %50, i32 %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %5, align 4
  br label %79

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %29
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %62 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %65 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %68 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %59
  %72 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %73 = call i32 @arizona_enable_fll(%struct.arizona_fll* %72)
  store i32 %73, i32* %10, align 4
  br label %77

74:                                               ; preds = %59
  %75 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %76 = call i32 @arizona_disable_fll(%struct.arizona_fll* %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %56, %46, %28
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @arizona_validate_fll(%struct.arizona_fll*, i32, i32) #1

declare dso_local i32 @arizona_enable_fll(%struct.arizona_fll*) #1

declare dso_local i32 @arizona_disable_fll(%struct.arizona_fll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
