; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_fllhj_validate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_fllhj_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera_fll = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"fllout set without valid input clk\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Can't change output on active FLL\0A\00", align 1
@MADERA_FLL_MAX_REFDIV = common dso_local global i32 0, align 4
@MADERA_FLLHJ_MAX_THRESH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Can't scale %dMHz to <=13MHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.madera_fll*, i32, i32)* @madera_fllhj_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_fllhj_validate(%struct.madera_fll* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.madera_fll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.madera_fll* %0, %struct.madera_fll** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = load %struct.madera_fll*, %struct.madera_fll** %5, align 8
  %15 = call i32 (%struct.madera_fll*, i8*, ...) @madera_fll_err(%struct.madera_fll* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %47

18:                                               ; preds = %10, %3
  %19 = load %struct.madera_fll*, %struct.madera_fll** %5, align 8
  %20 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.madera_fll*, %struct.madera_fll** %5, align 8
  %26 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.madera_fll*, %struct.madera_fll** %5, align 8
  %31 = call i32 (%struct.madera_fll*, i8*, ...) @madera_fll_err(%struct.madera_fll* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %47

34:                                               ; preds = %23, %18
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MADERA_FLL_MAX_REFDIV, align 4
  %37 = udiv i32 %35, %36
  %38 = load i32, i32* @MADERA_FLLHJ_MAX_THRESH, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.madera_fll*, %struct.madera_fll** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (%struct.madera_fll*, i8*, ...) @madera_fll_err(%struct.madera_fll* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %40, %29, %13
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @madera_fll_err(%struct.madera_fll*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
