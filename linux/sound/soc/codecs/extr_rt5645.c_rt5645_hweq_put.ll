; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_hweq_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_hweq_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.snd_soc_component = type { i32 }
%struct.rt5645_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i8* }
%struct.rt5645_eq_param_s_be16 = type { i32, i32 }

@RT5645_HWEQ_NUM = common dso_local global i32 0, align 4
@RT5645_EQ_CTRL2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @rt5645_hweq_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5645_hweq_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.rt5645_priv*, align 8
  %8 = alloca %struct.rt5645_eq_param_s_be16*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %6, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %13 = call %struct.rt5645_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.rt5645_priv* %13, %struct.rt5645_priv** %7, align 8
  %14 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %15 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.rt5645_eq_param_s_be16*
  store %struct.rt5645_eq_param_s_be16* %19, %struct.rt5645_eq_param_s_be16** %8, align 8
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %54, %2
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @RT5645_HWEQ_NUM, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %20
  %25 = load %struct.rt5645_eq_param_s_be16*, %struct.rt5645_eq_param_s_be16** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.rt5645_eq_param_s_be16, %struct.rt5645_eq_param_s_be16* %25, i64 %27
  %29 = getelementptr inbounds %struct.rt5645_eq_param_s_be16, %struct.rt5645_eq_param_s_be16* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @be16_to_cpu(i32 %30)
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.rt5645_priv*, %struct.rt5645_priv** %7, align 8
  %34 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i64 %32, i64* %39, align 8
  %40 = load %struct.rt5645_eq_param_s_be16*, %struct.rt5645_eq_param_s_be16** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.rt5645_eq_param_s_be16, %struct.rt5645_eq_param_s_be16* %40, i64 %42
  %44 = getelementptr inbounds %struct.rt5645_eq_param_s_be16, %struct.rt5645_eq_param_s_be16* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @be16_to_cpu(i32 %45)
  %47 = load %struct.rt5645_priv*, %struct.rt5645_priv** %7, align 8
  %48 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i8* %46, i8** %53, align 8
  br label %54

54:                                               ; preds = %24
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %20

57:                                               ; preds = %20
  %58 = load i32, i32* @RT5645_HWEQ_NUM, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %87, %57
  %61 = load i32, i32* %9, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %60
  %64 = load %struct.rt5645_priv*, %struct.rt5645_priv** %7, align 8
  %65 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %87

74:                                               ; preds = %63
  %75 = load %struct.rt5645_priv*, %struct.rt5645_priv** %7, align 8
  %76 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @RT5645_EQ_CTRL2, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %134

86:                                               ; preds = %74
  br label %90

87:                                               ; preds = %73
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %9, align 4
  br label %60

90:                                               ; preds = %86, %60
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %130, %90
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @RT5645_HWEQ_NUM, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %133

95:                                               ; preds = %91
  %96 = load %struct.rt5645_priv*, %struct.rt5645_priv** %7, align 8
  %97 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @rt5645_validate_hweq(i64 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %95
  %107 = load %struct.rt5645_priv*, %struct.rt5645_priv** %7, align 8
  %108 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %134

117:                                              ; preds = %106, %95
  %118 = load %struct.rt5645_priv*, %struct.rt5645_priv** %7, align 8
  %119 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %118, i32 0, i32 0
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %117
  br label %133

128:                                              ; preds = %117
  br label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %91

133:                                              ; preds = %127, %91
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %116, %85
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.rt5645_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @rt5645_validate_hweq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
