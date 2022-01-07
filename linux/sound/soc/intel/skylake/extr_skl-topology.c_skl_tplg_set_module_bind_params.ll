; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_set_module_bind_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_set_module_bind_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, %struct.snd_kcontrol_new*, %struct.skl_module_cfg* }
%struct.snd_kcontrol_new = type { i32, i64 }
%struct.skl_module_cfg = type { %struct.skl_specific_cfg, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.skl_specific_cfg = type { i64, i64, i32, i32* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.skl_dev = type { i32 }
%struct.soc_bytes_ext = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.skl_algo_data = type { i64, i64, i32, i32 }

@SKL_PIN_BIND_DONE = common dso_local global i64 0, align 8
@SKL_PARAM_BIND = common dso_local global i64 0, align 8
@SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.skl_module_cfg*, %struct.skl_dev*)* @skl_tplg_set_module_bind_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_set_module_bind_params(%struct.snd_soc_dapm_widget* %0, %struct.skl_module_cfg* %1, %struct.skl_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.skl_module_cfg*, align 8
  %7 = alloca %struct.skl_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.skl_module_cfg*, align 8
  %11 = alloca %struct.snd_kcontrol_new*, align 8
  %12 = alloca %struct.soc_bytes_ext*, align 8
  %13 = alloca %struct.skl_algo_data*, align 8
  %14 = alloca %struct.skl_specific_cfg*, align 8
  %15 = alloca i32*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.skl_module_cfg* %1, %struct.skl_module_cfg** %6, align 8
  store %struct.skl_dev* %2, %struct.skl_dev** %7, align 8
  %16 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %16, i32 0, i32 2
  %18 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %17, align 8
  store %struct.skl_module_cfg* %18, %struct.skl_module_cfg** %10, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %40, %3
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %22 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %19
  %28 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %29 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %28, i32 0, i32 3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SKL_PIN_BIND_DONE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %182

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %19

43:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %65, %43
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %47 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %46, i32 0, i32 2
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %45, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %44
  %53 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %54 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SKL_PIN_BIND_DONE, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %182

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %44

68:                                               ; preds = %44
  %69 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %10, align 8
  %70 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.skl_specific_cfg, %struct.skl_specific_cfg* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %101

74:                                               ; preds = %68
  %75 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %10, align 8
  %76 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.skl_specific_cfg, %struct.skl_specific_cfg* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SKL_PARAM_BIND, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %101

81:                                               ; preds = %74
  %82 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %10, align 8
  %83 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %82, i32 0, i32 0
  store %struct.skl_specific_cfg* %83, %struct.skl_specific_cfg** %14, align 8
  %84 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %85 = load %struct.skl_specific_cfg*, %struct.skl_specific_cfg** %14, align 8
  %86 = getelementptr inbounds %struct.skl_specific_cfg, %struct.skl_specific_cfg* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.skl_specific_cfg*, %struct.skl_specific_cfg** %14, align 8
  %89 = getelementptr inbounds %struct.skl_specific_cfg, %struct.skl_specific_cfg* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.skl_specific_cfg*, %struct.skl_specific_cfg** %14, align 8
  %92 = getelementptr inbounds %struct.skl_specific_cfg, %struct.skl_specific_cfg* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %10, align 8
  %95 = call i32 @skl_set_module_params(%struct.skl_dev* %84, i32* %87, i64 %90, i32 %93, %struct.skl_module_cfg* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %81
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %4, align 4
  br label %182

100:                                              ; preds = %81
  br label %101

101:                                              ; preds = %100, %74, %68
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %178, %101
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %105 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %181

108:                                              ; preds = %102
  %109 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %110 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %109, i32 0, i32 1
  %111 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %111, i64 %113
  store %struct.snd_kcontrol_new* %114, %struct.snd_kcontrol_new** %11, align 8
  %115 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %11, align 8
  %116 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %177

121:                                              ; preds = %108
  %122 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %11, align 8
  %123 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to i8*
  %126 = bitcast i8* %125 to %struct.soc_bytes_ext*
  store %struct.soc_bytes_ext* %126, %struct.soc_bytes_ext** %12, align 8
  %127 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %12, align 8
  %128 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to %struct.skl_algo_data*
  store %struct.skl_algo_data* %131, %struct.skl_algo_data** %13, align 8
  %132 = load %struct.skl_algo_data*, %struct.skl_algo_data** %13, align 8
  %133 = getelementptr inbounds %struct.skl_algo_data, %struct.skl_algo_data* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @SKL_PARAM_BIND, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %176

137:                                              ; preds = %121
  %138 = load %struct.skl_algo_data*, %struct.skl_algo_data** %13, align 8
  %139 = getelementptr inbounds %struct.skl_algo_data, %struct.skl_algo_data* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.skl_algo_data*, %struct.skl_algo_data** %13, align 8
  %142 = getelementptr inbounds %struct.skl_algo_data, %struct.skl_algo_data* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* @GFP_KERNEL, align 4
  %145 = call i32* @kmemdup(i32 %140, i64 %143, i32 %144)
  store i32* %145, i32** %15, align 8
  %146 = load i32*, i32** %15, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %137
  %149 = load i32, i32* @ENOMEM, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %4, align 4
  br label %182

151:                                              ; preds = %137
  %152 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %153 = load i32*, i32** %15, align 8
  %154 = load %struct.skl_algo_data*, %struct.skl_algo_data** %13, align 8
  %155 = getelementptr inbounds %struct.skl_algo_data, %struct.skl_algo_data* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %10, align 8
  %158 = call i32 @skl_fill_sink_instance_id(%struct.skl_dev* %152, i32* %153, i64 %156, %struct.skl_module_cfg* %157)
  %159 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %160 = load i32*, i32** %15, align 8
  %161 = load %struct.skl_algo_data*, %struct.skl_algo_data** %13, align 8
  %162 = getelementptr inbounds %struct.skl_algo_data, %struct.skl_algo_data* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.skl_algo_data*, %struct.skl_algo_data** %13, align 8
  %165 = getelementptr inbounds %struct.skl_algo_data, %struct.skl_algo_data* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %10, align 8
  %168 = call i32 @skl_set_module_params(%struct.skl_dev* %159, i32* %160, i64 %163, i32 %166, %struct.skl_module_cfg* %167)
  store i32 %168, i32* %9, align 4
  %169 = load i32*, i32** %15, align 8
  %170 = call i32 @kfree(i32* %169)
  %171 = load i32, i32* %9, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %151
  %174 = load i32, i32* %9, align 4
  store i32 %174, i32* %4, align 4
  br label %182

175:                                              ; preds = %151
  br label %176

176:                                              ; preds = %175, %121
  br label %177

177:                                              ; preds = %176, %108
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %8, align 4
  br label %102

181:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %182

182:                                              ; preds = %181, %173, %148, %98, %63, %38
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @skl_set_module_params(%struct.skl_dev*, i32*, i64, i32, %struct.skl_module_cfg*) #1

declare dso_local i32* @kmemdup(i32, i64, i32) #1

declare dso_local i32 @skl_fill_sink_instance_id(%struct.skl_dev*, i32*, i64, %struct.skl_module_cfg*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
