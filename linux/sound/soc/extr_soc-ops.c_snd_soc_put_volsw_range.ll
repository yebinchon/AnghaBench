; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_put_volsw_range.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_put_volsw_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_put_volsw_range(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.soc_mixer_control*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %21, %struct.soc_mixer_control** %6, align 8
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %23 = call %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol* %22)
  store %struct.snd_soc_component* %23, %struct.snd_soc_component** %7, align 8
  %24 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %25 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %28 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %31 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %34 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %37 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @fls(i32 %39)
  %41 = shl i32 1, %40
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %13, align 4
  %43 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %44 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %2
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %51 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %49, %56
  %58 = load i32, i32* %13, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %15, align 4
  br label %72

60:                                               ; preds = %2
  %61 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %62 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %13, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %15, align 4
  br label %72

72:                                               ; preds = %60, %48
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %10, align 4
  %75 = shl i32 %73, %74
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %10, align 4
  %78 = shl i32 %76, %77
  store i32 %78, i32* %15, align 4
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %79, i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %72
  %87 = load i32, i32* %17, align 4
  store i32 %87, i32* %3, align 4
  br label %133

88:                                               ; preds = %72
  %89 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %90 = call i64 @snd_soc_volsw_is_stereo(%struct.soc_mixer_control* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %131

92:                                               ; preds = %88
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %98 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %96, %103
  %105 = load i32, i32* %13, align 4
  %106 = and i32 %104, %105
  store i32 %106, i32* %15, align 4
  br label %119

107:                                              ; preds = %92
  %108 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %109 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %114, %115
  %117 = load i32, i32* %13, align 4
  %118 = and i32 %116, %117
  store i32 %118, i32* %15, align 4
  br label %119

119:                                              ; preds = %107, %95
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %10, align 4
  %122 = shl i32 %120, %121
  store i32 %122, i32* %16, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %10, align 4
  %125 = shl i32 %123, %124
  store i32 %125, i32* %15, align 4
  %126 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %126, i32 %127, i32 %128, i32 %129)
  store i32 %130, i32* %17, align 4
  br label %131

131:                                              ; preds = %119, %88
  %132 = load i32, i32* %17, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %131, %86
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i64 @snd_soc_volsw_is_stereo(%struct.soc_mixer_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
