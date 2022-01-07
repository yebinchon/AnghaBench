; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc.c_fsl_asrc_set_ideal_ratio.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc.c_fsl_asrc_set_ideal_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_asrc_pair = type { i32, %struct.fsl_asrc* }
%struct.fsl_asrc = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"output rate should not be zero\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IDEAL_RATIO_DECIMAL_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_asrc_pair*, i32, i32)* @fsl_asrc_set_ideal_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_asrc_set_ideal_ratio(%struct.fsl_asrc_pair* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_asrc_pair*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fsl_asrc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.fsl_asrc_pair* %0, %struct.fsl_asrc_pair** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %5, align 8
  %13 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %12, i32 0, i32 1
  %14 = load %struct.fsl_asrc*, %struct.fsl_asrc** %13, align 8
  store %struct.fsl_asrc* %14, %struct.fsl_asrc** %8, align 8
  %15 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %5, align 8
  %16 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = call i32 @pair_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %79

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sdiv i32 %25, %26
  %28 = load i32, i32* @IDEAL_RATIO_DECIMAL_DEPTH, align 4
  %29 = shl i32 %27, %28
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %10, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = srem i32 %32, %31
  store i32 %33, i32* %6, align 4
  store i32 1, i32* %11, align 4
  br label %34

34:                                               ; preds = %60, %24
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @IDEAL_RATIO_DECIMAL_DEPTH, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 %39, 1
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %60

45:                                               ; preds = %38
  %46 = load i32, i32* @IDEAL_RATIO_DECIMAL_DEPTH, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sub nsw i32 %46, %47
  %49 = shl i32 1, %48
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %10, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %10, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %45
  br label %63

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %44
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %34

63:                                               ; preds = %58, %34
  %64 = load %struct.fsl_asrc*, %struct.fsl_asrc** %8, align 8
  %65 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @REG_ASRIDRL(i32 %67)
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @regmap_write(i32 %66, i32 %68, i64 %69)
  %71 = load %struct.fsl_asrc*, %struct.fsl_asrc** %8, align 8
  %72 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @REG_ASRIDRH(i32 %74)
  %76 = load i64, i64* %10, align 8
  %77 = lshr i64 %76, 24
  %78 = call i32 @regmap_write(i32 %73, i32 %75, i64 %77)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %63, %20
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @pair_err(i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i64) #1

declare dso_local i32 @REG_ASRIDRL(i32) #1

declare dso_local i32 @REG_ASRIDRH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
