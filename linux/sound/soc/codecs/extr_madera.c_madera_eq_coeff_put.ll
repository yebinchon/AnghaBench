; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_eq_coeff_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_eq_coeff_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.madera_priv = type { %struct.madera* }
%struct.madera = type { i32, i32 }
%struct.soc_bytes = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MADERA_EQ1_B1_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Rejecting unstable EQ coefficients\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @madera_eq_coeff_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.madera_priv*, align 8
  %8 = alloca %struct.madera*, align 8
  %9 = alloca %struct.soc_bytes*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %15 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %14)
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %6, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %17 = call %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.madera_priv* %17, %struct.madera_priv** %7, align 8
  %18 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %19 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %18, i32 0, i32 0
  %20 = load %struct.madera*, %struct.madera** %19, align 8
  store %struct.madera* %20, %struct.madera** %8, align 8
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %22 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast i8* %24 to %struct.soc_bytes*
  store %struct.soc_bytes* %25, %struct.soc_bytes** %9, align 8
  %26 = load %struct.soc_bytes*, %struct.soc_bytes** %9, align 8
  %27 = getelementptr inbounds %struct.soc_bytes, %struct.soc_bytes* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.madera*, %struct.madera** %8, align 8
  %30 = getelementptr inbounds %struct.madera, %struct.madera* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regmap_get_val_bytes(i32 %31)
  %33 = mul nsw i32 %28, %32
  store i32 %33, i32* %12, align 4
  %34 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %35 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = load i32, i32* @GFP_DMA, align 4
  %42 = or i32 %40, %41
  %43 = call i32* @kmemdup(i32 %38, i32 %39, i32 %42)
  store i32* %43, i32** %11, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %2
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %149

49:                                               ; preds = %2
  %50 = load i32, i32* @MADERA_EQ1_B1_MODE, align 4
  %51 = call i32 @cpu_to_be16(i32 %50)
  %52 = load i32*, i32** %11, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %11, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @madera_eq_filter_unstable(i32 %62, i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %107, label %71

71:                                               ; preds = %49
  %72 = load i32*, i32** %11, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 5
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @madera_eq_filter_unstable(i32 1, i32 %74, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %107, label %80

80:                                               ; preds = %71
  %81 = load i32*, i32** %11, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 9
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @madera_eq_filter_unstable(i32 1, i32 %83, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %107, label %89

89:                                               ; preds = %80
  %90 = load i32*, i32** %11, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 12
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %11, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 13
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @madera_eq_filter_unstable(i32 1, i32 %92, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %89
  %99 = load i32*, i32** %11, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 16
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 17
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @madera_eq_filter_unstable(i32 0, i32 %101, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %98, %89, %80, %71, %49
  %108 = load %struct.madera*, %struct.madera** %8, align 8
  %109 = getelementptr inbounds %struct.madera, %struct.madera* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dev_err(i32 %110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %13, align 4
  br label %145

114:                                              ; preds = %98
  %115 = load %struct.madera*, %struct.madera** %8, align 8
  %116 = getelementptr inbounds %struct.madera, %struct.madera* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.soc_bytes*, %struct.soc_bytes** %9, align 8
  %119 = getelementptr inbounds %struct.soc_bytes, %struct.soc_bytes* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @regmap_read(i32 %117, i32 %120, i32* %10)
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %114
  br label %145

125:                                              ; preds = %114
  %126 = load i32, i32* @MADERA_EQ1_B1_MODE, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %10, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @cpu_to_be16(i32 %130)
  %132 = load i32*, i32** %11, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  %136 = load %struct.madera*, %struct.madera** %8, align 8
  %137 = getelementptr inbounds %struct.madera, %struct.madera* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.soc_bytes*, %struct.soc_bytes** %9, align 8
  %140 = getelementptr inbounds %struct.soc_bytes, %struct.soc_bytes* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %11, align 8
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @regmap_raw_write(i32 %138, i32 %141, i32* %142, i32 %143)
  store i32 %144, i32* %13, align 4
  br label %145

145:                                              ; preds = %125, %124, %107
  %146 = load i32*, i32** %11, align 8
  %147 = call i32 @kfree(i32* %146)
  %148 = load i32, i32* %13, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %145, %46
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_get_val_bytes(i32) #1

declare dso_local i32* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i64 @madera_eq_filter_unstable(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_raw_write(i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
