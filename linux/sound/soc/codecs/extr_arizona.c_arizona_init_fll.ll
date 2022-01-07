; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_init_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_init_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona = type { i32 }
%struct.arizona_fll = type { i32, i32, i32, i32, i32, i32, i8*, %struct.arizona* }

@ARIZONA_FLL_SRC_NONE = common dso_local global i8* null, align 8
@ARIZONA_CLOCK_32K_1 = common dso_local global i32 0, align 4
@ARIZONA_CLK_32K_SRC_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"FLL%d lock\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"FLL%d clock OK\00", align 1
@ARIZONA_FLL1_FREERUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arizona_init_fll(%struct.arizona* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.arizona_fll* %5) #0 {
  %7 = alloca %struct.arizona*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.arizona_fll*, align 8
  %13 = alloca i32, align 4
  store %struct.arizona* %0, %struct.arizona** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.arizona_fll* %5, %struct.arizona_fll** %12, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.arizona_fll*, %struct.arizona_fll** %12, align 8
  %16 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.arizona_fll*, %struct.arizona_fll** %12, align 8
  %19 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.arizona*, %struct.arizona** %7, align 8
  %21 = load %struct.arizona_fll*, %struct.arizona_fll** %12, align 8
  %22 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %21, i32 0, i32 7
  store %struct.arizona* %20, %struct.arizona** %22, align 8
  %23 = load i8*, i8** @ARIZONA_FLL_SRC_NONE, align 8
  %24 = load %struct.arizona_fll*, %struct.arizona_fll** %12, align 8
  %25 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %24, i32 0, i32 6
  store i8* %23, i8** %25, align 8
  %26 = load %struct.arizona*, %struct.arizona** %7, align 8
  %27 = getelementptr inbounds %struct.arizona, %struct.arizona* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ARIZONA_CLOCK_32K_1, align 4
  %30 = call i32 @regmap_read(i32 %28, i32 %29, i32* %13)
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @ARIZONA_CLK_32K_SRC_MASK, align 4
  %33 = and i32 %31, %32
  switch i32 %33, label %40 [
    i32 129, label %34
    i32 128, label %34
  ]

34:                                               ; preds = %6, %6
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @ARIZONA_CLK_32K_SRC_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load %struct.arizona_fll*, %struct.arizona_fll** %12, align 8
  %39 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  br label %45

40:                                               ; preds = %6
  %41 = load i8*, i8** @ARIZONA_FLL_SRC_NONE, align 8
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.arizona_fll*, %struct.arizona_fll** %12, align 8
  %44 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %40, %34
  %46 = load %struct.arizona_fll*, %struct.arizona_fll** %12, align 8
  %47 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %46, i32 0, i32 3
  store i32 32768, i32* %47, align 4
  %48 = load %struct.arizona_fll*, %struct.arizona_fll** %12, align 8
  %49 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @snprintf(i32 %50, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.arizona_fll*, %struct.arizona_fll** %12, align 8
  %54 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @snprintf(i32 %55, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.arizona*, %struct.arizona** %7, align 8
  %59 = getelementptr inbounds %struct.arizona, %struct.arizona* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.arizona_fll*, %struct.arizona_fll** %12, align 8
  %62 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* @ARIZONA_FLL1_FREERUN, align 4
  %66 = call i32 @regmap_update_bits(i32 %60, i32 %64, i32 %65, i32 0)
  ret i32 0
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
