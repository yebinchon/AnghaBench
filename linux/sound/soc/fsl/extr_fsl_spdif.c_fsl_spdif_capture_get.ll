; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_fsl_spdif_capture_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_fsl_spdif_capture_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_dai = type { i32 }
%struct.fsl_spdif_priv = type { %struct.regmap* }
%struct.regmap = type { i32 }

@REG_SPDIF_SIS = common dso_local global i32 0, align 4
@INT_CNEW = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@REG_SPDIF_SRCSH = common dso_local global i32 0, align 4
@REG_SPDIF_SRCSL = common dso_local global i32 0, align 4
@REG_SPDIF_SIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @fsl_spdif_capture_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_spdif_capture_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.fsl_spdif_priv*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.snd_soc_dai* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_soc_dai* %12, %struct.snd_soc_dai** %6, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %14 = call %struct.fsl_spdif_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %13)
  store %struct.fsl_spdif_priv* %14, %struct.fsl_spdif_priv** %7, align 8
  %15 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %7, align 8
  %16 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %15, i32 0, i32 0
  %17 = load %struct.regmap*, %struct.regmap** %16, align 8
  store %struct.regmap* %17, %struct.regmap** %8, align 8
  %18 = load %struct.regmap*, %struct.regmap** %8, align 8
  %19 = load i32, i32* @REG_SPDIF_SIS, align 4
  %20 = call i32 @regmap_read(%struct.regmap* %18, i32 %19, i32* %10)
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @INT_CNEW, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %91

28:                                               ; preds = %2
  %29 = load %struct.regmap*, %struct.regmap** %8, align 8
  %30 = load i32, i32* @REG_SPDIF_SRCSH, align 4
  %31 = call i32 @regmap_read(%struct.regmap* %29, i32 %30, i32* %9)
  %32 = load i32, i32* %9, align 4
  %33 = ashr i32 %32, 16
  %34 = and i32 %33, 255
  %35 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %34, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 255
  %44 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %45 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %43, i32* %49, align 4
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, 255
  %52 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %53 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  store i32 %51, i32* %57, align 4
  %58 = load %struct.regmap*, %struct.regmap** %8, align 8
  %59 = load i32, i32* @REG_SPDIF_SRCSL, align 4
  %60 = call i32 @regmap_read(%struct.regmap* %58, i32 %59, i32* %9)
  %61 = load i32, i32* %9, align 4
  %62 = ashr i32 %61, 16
  %63 = and i32 %62, 255
  %64 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %65 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  store i32 %63, i32* %69, align 4
  %70 = load i32, i32* %9, align 4
  %71 = ashr i32 %70, 8
  %72 = and i32 %71, 255
  %73 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %74 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  store i32 %72, i32* %78, align 4
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, 255
  %81 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %82 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 5
  store i32 %80, i32* %86, align 4
  %87 = load %struct.regmap*, %struct.regmap** %8, align 8
  %88 = load i32, i32* @REG_SPDIF_SIC, align 4
  %89 = load i32, i32* @INT_CNEW, align 4
  %90 = call i32 @regmap_write(%struct.regmap* %87, i32 %88, i32 %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %28, %25
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.snd_soc_dai* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.fsl_spdif_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
