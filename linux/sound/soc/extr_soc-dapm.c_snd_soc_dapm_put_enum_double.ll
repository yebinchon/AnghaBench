; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_put_enum_double.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_put_enum_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_dapm_context = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32, %struct.snd_soc_dapm_update* }
%struct.snd_soc_dapm_update = type { i64, i32, i32, %struct.snd_kcontrol* }
%struct.soc_enum = type { i32, i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAPM_CLASS_RUNTIME = common dso_local global i32 0, align 4
@SND_SOC_NOPM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_dapm_put_enum_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca %struct.snd_soc_card*, align 8
  %8 = alloca %struct.soc_enum*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.snd_soc_dapm_update, align 8
  %15 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = call %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol* %16)
  store %struct.snd_soc_dapm_context* %17, %struct.snd_soc_dapm_context** %6, align 8
  %18 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_card*, %struct.snd_soc_card** %19, align 8
  store %struct.snd_soc_card* %20, %struct.snd_soc_card** %7, align 8
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
  store i32 0, i32* %12, align 4
  %30 = bitcast %struct.snd_soc_dapm_update* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 24, i1 false)
  store i32 0, i32* %15, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %35 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp uge i32 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %164

41:                                               ; preds = %2
  %42 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @snd_soc_enum_item_to_val(%struct.soc_enum* %42, i32 %45)
  %47 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %48 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %46, %49
  store i32 %50, i32* %10, align 4
  %51 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %52 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %55 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %53, %56
  store i32 %57, i32* %13, align 4
  %58 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %59 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %62 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %60, %63
  br i1 %64, label %65, label %97

65:                                               ; preds = %41
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %70 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ugt i32 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %164

76:                                               ; preds = %65
  %77 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @snd_soc_enum_item_to_val(%struct.soc_enum* %77, i32 %80)
  %82 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %83 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %81, %84
  %86 = load i32, i32* %10, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %10, align 4
  %88 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %89 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %92 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %90, %93
  %95 = load i32, i32* %13, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %76, %41
  %98 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %99 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %98, i32 0, i32 0
  %100 = load i32, i32* @SND_SOC_DAPM_CLASS_RUNTIME, align 4
  %101 = call i32 @mutex_lock_nested(i32* %99, i32 %100)
  %102 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @dapm_kcontrol_set_value(%struct.snd_kcontrol* %102, i32 %103)
  store i32 %104, i32* %11, align 4
  %105 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %106 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SND_SOC_NOPM, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %97
  %111 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %112 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %113 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @soc_dapm_test_bits(%struct.snd_soc_dapm_context* %111, i64 %114, i32 %115, i32 %116)
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %110, %97
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %153

124:                                              ; preds = %121, %118
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %129 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %14, i32 0, i32 3
  store %struct.snd_kcontrol* %128, %struct.snd_kcontrol** %129, align 8
  %130 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %131 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %14, i32 0, i32 0
  store i64 %132, i64* %133, align 8
  %134 = load i32, i32* %13, align 4
  %135 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %14, i32 0, i32 1
  store i32 %134, i32* %135, align 8
  %136 = load i32, i32* %10, align 4
  %137 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %14, i32 0, i32 2
  store i32 %136, i32* %137, align 4
  %138 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %139 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %138, i32 0, i32 1
  store %struct.snd_soc_dapm_update* %14, %struct.snd_soc_dapm_update** %139, align 8
  br label %140

140:                                              ; preds = %127, %124
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %11, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %11, align 4
  %144 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %145 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %146 = load i32*, i32** %9, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %150 = call i32 @soc_dapm_mux_update_power(%struct.snd_soc_card* %144, %struct.snd_kcontrol* %145, i32 %148, %struct.soc_enum* %149)
  store i32 %150, i32* %15, align 4
  %151 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %152 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %151, i32 0, i32 1
  store %struct.snd_soc_dapm_update* null, %struct.snd_soc_dapm_update** %152, align 8
  br label %153

153:                                              ; preds = %140, %121
  %154 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %155 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %154, i32 0, i32 0
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load i32, i32* %15, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %153
  %160 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %161 = call i32 @soc_dpcm_runtime_update(%struct.snd_soc_card* %160)
  br label %162

162:                                              ; preds = %159, %153
  %163 = load i32, i32* %11, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %162, %73, %38
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @snd_soc_enum_item_to_val(%struct.soc_enum*, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @dapm_kcontrol_set_value(%struct.snd_kcontrol*, i32) #1

declare dso_local i32 @soc_dapm_test_bits(%struct.snd_soc_dapm_context*, i64, i32, i32) #1

declare dso_local i32 @soc_dapm_mux_update_power(%struct.snd_soc_card*, %struct.snd_kcontrol*, i32, %struct.soc_enum*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @soc_dpcm_runtime_update(%struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
