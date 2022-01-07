; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_set_fll_refclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_set_fll_refclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera_fll = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Can't change Fout on active FLL\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @madera_set_fll_refclk(%struct.madera_fll* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.madera_fll*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.madera_fll* %0, %struct.madera_fll** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %12 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %4
  %17 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %18 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %24 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %69

29:                                               ; preds = %22, %16, %4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %35 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %40 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %41 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @madera_is_enabled_fll(%struct.madera_fll* %39, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %69

48:                                               ; preds = %38
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %53 = call i32 @madera_fll_err(%struct.madera_fll* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %69

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %32, %29
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %60 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %63 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %66 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %68 = call i32 @madera_apply_fll(%struct.madera_fll* %67)
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %57, %51, %46, %28
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @madera_is_enabled_fll(%struct.madera_fll*, i32) #1

declare dso_local i32 @madera_fll_err(%struct.madera_fll*, i8*) #1

declare dso_local i32 @madera_apply_fll(%struct.madera_fll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
