; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_audmix.c_fsl_audmix_put_out_src.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_audmix.c_fsl_audmix_put_out_src.c"
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
@FSL_AUDMIX_CTR_OUTSRC_MASK = common dso_local global i32 0, align 4
@FSL_AUDMIX_CTR_OUTSRC_SHIFT = common dso_local global i32 0, align 4
@FSL_AUDMIX_CTR_MIXCLK_MASK = common dso_local global i32 0, align 4
@FSL_AUDMIX_CTR_MIXCLK_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"TDMs=x%08x, val=x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Started TDM%d needed for config propagation!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@prms = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @fsl_audmix_put_out_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_audmix_put_out_src(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
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
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %18 = call %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol* %17)
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %6, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %20 = call %struct.fsl_audmix* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.fsl_audmix* %20, %struct.fsl_audmix** %7, align 8
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %22 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.soc_enum*
  store %struct.soc_enum* %24, %struct.soc_enum** %8, align 8
  %25 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %26 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %9, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %31 = load i32, i32* @FSL_AUDMIX_CTR, align 4
  %32 = call i32 @snd_soc_component_read(%struct.snd_soc_component* %30, i32 %31, i32* %12)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %3, align 4
  br label %111

37:                                               ; preds = %2
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @FSL_AUDMIX_CTR_OUTSRC_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @FSL_AUDMIX_CTR_OUTSRC_SHIFT, align 4
  %42 = lshr i32 %40, %41
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @FSL_AUDMIX_CTR_MIXCLK_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @FSL_AUDMIX_CTR_MIXCLK_SHIFT, align 4
  %47 = lshr i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @snd_soc_enum_item_to_val(%struct.soc_enum* %48, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %54 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.fsl_audmix*, %struct.fsl_audmix** %7, align 8
  %57 = getelementptr inbounds %struct.fsl_audmix, %struct.fsl_audmix* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %111

65:                                               ; preds = %37
  %66 = load %struct.fsl_audmix*, %struct.fsl_audmix** %7, align 8
  %67 = getelementptr inbounds %struct.fsl_audmix, %struct.fsl_audmix* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @BIT(i32 %69)
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %65
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %75 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = add i32 %77, 1
  %79 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %111

82:                                               ; preds = %65
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %84 = load i32**, i32*** @prms, align 8
  %85 = load i32, i32* %10, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @fsl_audmix_state_trans(%struct.snd_soc_component* %83, i32* %14, i32* %15, i32 %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %82
  %97 = load i32, i32* %16, align 4
  store i32 %97, i32* %3, align 4
  br label %111

98:                                               ; preds = %82
  %99 = load i32, i32* @FSL_AUDMIX_CTR_OUTSRC_MASK, align 4
  %100 = load i32, i32* %14, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @FSL_AUDMIX_CTR_OUTSRC(i32 %102)
  %104 = load i32, i32* %15, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %15, align 4
  %106 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %107 = load i32, i32* @FSL_AUDMIX_CTR, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %106, i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %98, %96, %73, %64, %35
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.fsl_audmix* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read(%struct.snd_soc_component*, i32, i32*) #1

declare dso_local i32 @snd_soc_enum_item_to_val(%struct.soc_enum*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @fsl_audmix_state_trans(%struct.snd_soc_component*, i32*, i32*, i32) #1

declare dso_local i32 @FSL_AUDMIX_CTR_OUTSRC(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
