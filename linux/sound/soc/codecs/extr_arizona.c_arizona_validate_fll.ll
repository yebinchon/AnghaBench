; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_validate_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_validate_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona_fll = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Can't change output on active FLL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ARIZONA_FLL_MAX_REFDIV = common dso_local global i32 0, align 4
@ARIZONA_FLL_MAX_FREF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Can't scale %dMHz in to <=13.5MHz\0A\00", align 1
@ARIZONA_FLL_MIN_FVCO = common dso_local global i32 0, align 4
@ARIZONA_FLL_MAX_OUTDIV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"No FLL_OUTDIV for Fout=%uHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arizona_fll*, i32, i32)* @arizona_validate_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_validate_fll(%struct.arizona_fll* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arizona_fll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.arizona_fll* %0, %struct.arizona_fll** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.arizona_fll*, %struct.arizona_fll** %5, align 8
  %10 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.arizona_fll*, %struct.arizona_fll** %5, align 8
  %16 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.arizona_fll*, %struct.arizona_fll** %5, align 8
  %21 = call i32 (%struct.arizona_fll*, i8*, ...) @arizona_fll_err(%struct.arizona_fll* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %54

24:                                               ; preds = %13, %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @ARIZONA_FLL_MAX_REFDIV, align 4
  %27 = udiv i32 %25, %26
  %28 = load i32, i32* @ARIZONA_FLL_MAX_FREF, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.arizona_fll*, %struct.arizona_fll** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (%struct.arizona_fll*, i8*, ...) @arizona_fll_err(%struct.arizona_fll* %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %54

36:                                               ; preds = %24
  %37 = load i32, i32* @ARIZONA_FLL_MIN_FVCO, align 4
  %38 = load %struct.arizona_fll*, %struct.arizona_fll** %5, align 8
  %39 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul i32 %37, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @ARIZONA_FLL_MAX_OUTDIV, align 4
  %44 = mul i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load %struct.arizona_fll*, %struct.arizona_fll** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (%struct.arizona_fll*, i8*, ...) @arizona_fll_err(%struct.arizona_fll* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %54

53:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %47, %30, %19
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @arizona_fll_err(%struct.arizona_fll*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
