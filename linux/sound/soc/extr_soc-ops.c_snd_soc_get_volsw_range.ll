; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_get_volsw_range.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_get_volsw_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_get_volsw_range(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.soc_mixer_control*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
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
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %22, %struct.soc_mixer_control** %7, align 8
  %23 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %24 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %27 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %30 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %33 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %36 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @fls(i32 %38)
  %40 = shl i32 1, %39
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %13, align 4
  %42 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %43 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %14, align 4
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @snd_soc_component_read(%struct.snd_soc_component* %45, i32 %46, i32* %15)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %2
  %51 = load i32, i32* %16, align 4
  store i32 %51, i32* %3, align 4
  br label %158

52:                                               ; preds = %2
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %10, align 4
  %55 = lshr i32 %53, %54
  %56 = load i32, i32* %13, align 4
  %57 = and i32 %55, %56
  %58 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %59 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %57, i32* %63, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %52
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %69 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = sub i32 %67, %74
  %76 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %77 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 %75, i32* %81, align 4
  br label %98

82:                                               ; preds = %52
  %83 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %84 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %11, align 4
  %91 = sub i32 %89, %90
  %92 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %93 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 %91, i32* %97, align 4
  br label %98

98:                                               ; preds = %82, %66
  %99 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %100 = call i64 @snd_soc_volsw_is_stereo(%struct.soc_mixer_control* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %157

102:                                              ; preds = %98
  %103 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @snd_soc_component_read(%struct.snd_soc_component* %103, i32 %104, i32* %15)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* %16, align 4
  store i32 %109, i32* %3, align 4
  br label %158

110:                                              ; preds = %102
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %10, align 4
  %113 = lshr i32 %111, %112
  %114 = load i32, i32* %13, align 4
  %115 = and i32 %113, %114
  %116 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %117 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  store i32 %115, i32* %121, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %140

124:                                              ; preds = %110
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %127 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = sub i32 %125, %132
  %134 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %135 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  store i32 %133, i32* %139, align 4
  br label %156

140:                                              ; preds = %110
  %141 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %142 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %11, align 4
  %149 = sub i32 %147, %148
  %150 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %151 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  store i32 %149, i32* %155, align 4
  br label %156

156:                                              ; preds = %140, %124
  br label %157

157:                                              ; preds = %156, %98
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %157, %108, %50
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @snd_soc_component_read(%struct.snd_soc_component*, i32, i32*) #1

declare dso_local i64 @snd_soc_volsw_is_stereo(%struct.soc_mixer_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
