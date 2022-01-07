; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_mclk_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_mclk_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8825 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"No 'mclk' clock found, assume MCLK is managed externally\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Unable to prepare codec mclk\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Unable to set mclk rate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nau8825*, i32)* @nau8825_mclk_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8825_mclk_prepare(%struct.nau8825* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nau8825*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nau8825* %0, %struct.nau8825** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.nau8825*, %struct.nau8825** %4, align 8
  %8 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @devm_clk_get(i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.nau8825*, %struct.nau8825** %4, align 8
  %12 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.nau8825*, %struct.nau8825** %4, align 8
  %14 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @IS_ERR(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.nau8825*, %struct.nau8825** %4, align 8
  %20 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_info(i32 %21, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %72

23:                                               ; preds = %2
  %24 = load %struct.nau8825*, %struct.nau8825** %4, align 8
  %25 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %23
  %29 = load %struct.nau8825*, %struct.nau8825** %4, align 8
  %30 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_prepare_enable(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.nau8825*, %struct.nau8825** %4, align 8
  %37 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %72

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %23
  %43 = load %struct.nau8825*, %struct.nau8825** %4, align 8
  %44 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %42
  %49 = load %struct.nau8825*, %struct.nau8825** %4, align 8
  %50 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @clk_round_rate(i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load %struct.nau8825*, %struct.nau8825** %4, align 8
  %55 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @clk_set_rate(i32 %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %48
  %62 = load %struct.nau8825*, %struct.nau8825** %4, align 8
  %63 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %72

67:                                               ; preds = %48
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.nau8825*, %struct.nau8825** %4, align 8
  %70 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %42
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %61, %35, %18
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @clk_round_rate(i32, i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
