; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-cpu.c_lpass_cpu_regmap_volatile.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-cpu.c_lpass_cpu_regmap_volatile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lpass_data = type { %struct.lpass_variant* }
%struct.lpass_variant = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @lpass_cpu_regmap_volatile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpass_cpu_regmap_volatile(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpass_data*, align 8
  %7 = alloca %struct.lpass_variant*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.lpass_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.lpass_data* %10, %struct.lpass_data** %6, align 8
  %11 = load %struct.lpass_data*, %struct.lpass_data** %6, align 8
  %12 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %11, i32 0, i32 0
  %13 = load %struct.lpass_variant*, %struct.lpass_variant** %12, align 8
  store %struct.lpass_variant* %13, %struct.lpass_variant** %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %28, %2
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %17 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @LPAIF_IRQSTAT_REG(%struct.lpass_variant* %22, i32 %23)
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %73

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %14

31:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %46, %31
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %35 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @LPAIF_RDMACURR_REG(%struct.lpass_variant* %40, i32 %41)
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %73

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %32

49:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %69, %49
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %53 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %62 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = call i32 @LPAIF_WRDMACURR_REG(%struct.lpass_variant* %58, i64 %64)
  %66 = icmp eq i32 %57, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %73

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %50

72:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %67, %44, %26
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.lpass_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @LPAIF_IRQSTAT_REG(%struct.lpass_variant*, i32) #1

declare dso_local i32 @LPAIF_RDMACURR_REG(%struct.lpass_variant*, i32) #1

declare dso_local i32 @LPAIF_WRDMACURR_REG(%struct.lpass_variant*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
