; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_biquad_coeff_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_biquad_coeff_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.da7218_priv = type { i32, i32, i32 }
%struct.soc_bytes_ext = type { i32 }

@DA7218_BIQ_CFG_SIZE = common dso_local global i32 0, align 4
@DA7218_OUT_1_BIQ_5STAGE_DATA = common dso_local global i32 0, align 4
@DA7218_SIDETONE_BIQ_3STAGE_DATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DA7218_OUT_1L_FILTER_CTRL = common dso_local global i32 0, align 4
@DA7218_OUT_1L_FILTER_EN_MASK = common dso_local global i32 0, align 4
@DA7218_BIQ_CFG_DATA = common dso_local global i64 0, align 8
@DA7218_BIQ_CFG_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @da7218_biquad_coeff_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7218_biquad_coeff_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.da7218_priv*, align 8
  %8 = alloca %struct.soc_bytes_ext*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %16 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %15)
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %6, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %18 = call %struct.da7218_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.da7218_priv* %18, %struct.da7218_priv** %7, align 8
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.soc_bytes_ext*
  store %struct.soc_bytes_ext* %22, %struct.soc_bytes_ext** %8, align 8
  %23 = load i32, i32* @DA7218_BIQ_CFG_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %11, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %27 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %8, align 8
  %28 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %58 [
    i32 129, label %30
    i32 128, label %44
  ]

30:                                               ; preds = %2
  %31 = load i32, i32* @DA7218_OUT_1_BIQ_5STAGE_DATA, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.da7218_priv*, %struct.da7218_priv** %7, align 8
  %33 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %8, align 8
  %41 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @memcpy(i32 %34, i32* %39, i32 %42)
  br label %61

44:                                               ; preds = %2
  %45 = load i32, i32* @DA7218_SIDETONE_BIQ_3STAGE_DATA, align 4
  store i32 %45, i32* %9, align 4
  %46 = load %struct.da7218_priv*, %struct.da7218_priv** %7, align 8
  %47 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %50 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %8, align 8
  %55 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @memcpy(i32 %48, i32* %53, i32 %56)
  br label %61

58:                                               ; preds = %2
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %106

61:                                               ; preds = %44, %30
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %63 = load i32, i32* @DA7218_OUT_1L_FILTER_CTRL, align 4
  %64 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %66 = load i32, i32* @DA7218_OUT_1L_FILTER_CTRL, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @DA7218_OUT_1L_FILTER_EN_MASK, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %65, i32 %66, i32 %69)
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %98, %61
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %8, align 8
  %74 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %71
  %78 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %79 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i64, i64* @DA7218_BIQ_CFG_DATA, align 8
  %88 = getelementptr inbounds i32, i32* %26, i64 %87
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i64, i64* @DA7218_BIQ_CFG_ADDR, align 8
  %91 = getelementptr inbounds i32, i32* %26, i64 %90
  store i32 %89, i32* %91, align 4
  %92 = load %struct.da7218_priv*, %struct.da7218_priv** %7, align 8
  %93 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @DA7218_BIQ_CFG_SIZE, align 4
  %97 = call i32 @regmap_raw_write(i32 %94, i32 %95, i32* %26, i32 %96)
  br label %98

98:                                               ; preds = %77
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %13, align 4
  br label %71

101:                                              ; preds = %71
  %102 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %103 = load i32, i32* @DA7218_OUT_1L_FILTER_CTRL, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %102, i32 %103, i32 %104)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %106

106:                                              ; preds = %101, %58
  %107 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.da7218_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @regmap_raw_write(i32, i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
