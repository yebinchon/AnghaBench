; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_ssi = type { i32, i32, i64, i32 }

@REG_SSI_SFCSR = common dso_local global i32 0, align 4
@REG_SSI_SCR = common dso_local global i32 0, align 4
@SSI_SCR_TCH_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_ssi*)* @fsl_ssi_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_ssi_hw_init(%struct.fsl_ssi* %0) #0 {
  %2 = alloca %struct.fsl_ssi*, align 8
  %3 = alloca i32, align 4
  store %struct.fsl_ssi* %0, %struct.fsl_ssi** %2, align 8
  %4 = load %struct.fsl_ssi*, %struct.fsl_ssi** %2, align 8
  %5 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load %struct.fsl_ssi*, %struct.fsl_ssi** %2, align 8
  %8 = call i32 @fsl_ssi_setup_regvals(%struct.fsl_ssi* %7)
  %9 = load %struct.fsl_ssi*, %struct.fsl_ssi** %2, align 8
  %10 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @REG_SSI_SFCSR, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @SSI_SFCSR_TFWM0(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @SSI_SFCSR_RFWM0(i32 %15)
  %17 = or i32 %14, %16
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @SSI_SFCSR_TFWM1(i32 %18)
  %20 = or i32 %17, %19
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @SSI_SFCSR_RFWM1(i32 %21)
  %23 = or i32 %20, %22
  %24 = call i32 @regmap_write(i32 %11, i32 %12, i32 %23)
  %25 = load %struct.fsl_ssi*, %struct.fsl_ssi** %2, align 8
  %26 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load %struct.fsl_ssi*, %struct.fsl_ssi** %2, align 8
  %31 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @REG_SSI_SCR, align 4
  %34 = load i32, i32* @SSI_SCR_TCH_EN, align 4
  %35 = load i32, i32* @SSI_SCR_TCH_EN, align 4
  %36 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %29, %1
  %38 = load %struct.fsl_ssi*, %struct.fsl_ssi** %2, align 8
  %39 = call i64 @fsl_ssi_is_ac97(%struct.fsl_ssi* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load %struct.fsl_ssi*, %struct.fsl_ssi** %2, align 8
  %43 = load %struct.fsl_ssi*, %struct.fsl_ssi** %2, align 8
  %44 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @_fsl_ssi_set_dai_fmt(%struct.fsl_ssi* %42, i32 %45)
  %47 = load %struct.fsl_ssi*, %struct.fsl_ssi** %2, align 8
  %48 = call i32 @fsl_ssi_setup_ac97(%struct.fsl_ssi* %47)
  br label %49

49:                                               ; preds = %41, %37
  ret i32 0
}

declare dso_local i32 @fsl_ssi_setup_regvals(%struct.fsl_ssi*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SSI_SFCSR_TFWM0(i32) #1

declare dso_local i32 @SSI_SFCSR_RFWM0(i32) #1

declare dso_local i32 @SSI_SFCSR_TFWM1(i32) #1

declare dso_local i32 @SSI_SFCSR_RFWM1(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i64 @fsl_ssi_is_ac97(%struct.fsl_ssi*) #1

declare dso_local i32 @_fsl_ssi_set_dai_fmt(%struct.fsl_ssi*, i32) #1

declare dso_local i32 @fsl_ssi_setup_ac97(%struct.fsl_ssi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
