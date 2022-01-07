; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_audmix.c_fsl_audmix_put_mix_clk_src.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_audmix.c_fsl_audmix_put_mix_clk_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.fsl_audmix = type { i32 }
%struct.soc_enum = type { i32 }

@FSL_AUDMIX_CTR = common dso_local global i32 0, align 4
@FSL_AUDMIX_CTR_MIXCLK_MASK = common dso_local global i32 0, align 4
@FSL_AUDMIX_CTR_MIXCLK_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"TDMs=x%08x, val=x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Started TDM%d needed for config propagation!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"The selected clock source has no TDM%d enabled!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @fsl_audmix_put_mix_clk_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_audmix_put_mix_clk_src(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.fsl_audmix*, align 8
  %8 = alloca %struct.soc_enum*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %15 = call %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol* %14)
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %6, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %17 = call %struct.fsl_audmix* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.fsl_audmix* %17, %struct.fsl_audmix** %7, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.soc_enum*
  store %struct.soc_enum* %21, %struct.soc_enum** %8, align 8
  %22 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %23 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %9, align 8
  store i32 0, i32* %13, align 4
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %28 = load i32, i32* @FSL_AUDMIX_CTR, align 4
  %29 = call i32 @snd_soc_component_read(%struct.snd_soc_component* %27, i32 %28, i32* %10)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %3, align 4
  br label %90

34:                                               ; preds = %2
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @FSL_AUDMIX_CTR_MIXCLK_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @FSL_AUDMIX_CTR_MIXCLK_SHIFT, align 4
  %39 = lshr i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @snd_soc_enum_item_to_val(%struct.soc_enum* %40, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %46 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fsl_audmix*, %struct.fsl_audmix** %7, align 8
  %49 = getelementptr inbounds %struct.fsl_audmix, %struct.fsl_audmix* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load %struct.fsl_audmix*, %struct.fsl_audmix** %7, align 8
  %54 = getelementptr inbounds %struct.fsl_audmix, %struct.fsl_audmix* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @BIT(i32 %56)
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %34
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %62 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %12, align 4
  %65 = add i32 %64, 1
  %66 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %90

69:                                               ; preds = %34
  %70 = load %struct.fsl_audmix*, %struct.fsl_audmix** %7, align 8
  %71 = getelementptr inbounds %struct.fsl_audmix, %struct.fsl_audmix* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @BIT(i32 %73)
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %69
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %79 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %11, align 4
  %82 = add i32 %81, 1
  %83 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %90

86:                                               ; preds = %69
  %87 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %88 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %89 = call i32 @snd_soc_put_enum_double(%struct.snd_kcontrol* %87, %struct.snd_ctl_elem_value* %88)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %77, %60, %32
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.fsl_audmix* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read(%struct.snd_soc_component*, i32, i32*) #1

declare dso_local i32 @snd_soc_enum_item_to_val(%struct.soc_enum*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_put_enum_double(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
