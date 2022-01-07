; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_put_volsw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_put_volsw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_put_volsw(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %23 = call %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol* %22)
  store %struct.snd_soc_component* %23, %struct.snd_soc_component** %6, align 8
  %24 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %25 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %27, %struct.soc_mixer_control** %7, align 8
  %28 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %29 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %32 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %35 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %38 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %41 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %12, align 4
  %43 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %44 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %13, align 4
  %46 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %47 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @fls(i32 %49)
  %51 = shl i32 1, %50
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %15, align 4
  %53 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %54 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %2
  %59 = load i32, i32* %14, align 4
  %60 = add i32 %59, 1
  %61 = call i32 @BIT(i32 %60)
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %15, align 4
  br label %63

63:                                               ; preds = %58, %2
  %64 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %65 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* %15, align 4
  %74 = and i32 %72, %73
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* %16, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %63
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %20, align 4
  %80 = sub i32 %78, %79
  store i32 %80, i32* %20, align 4
  br label %81

81:                                               ; preds = %77, %63
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %10, align 4
  %84 = shl i32 %82, %83
  store i32 %84, i32* %21, align 4
  %85 = load i32, i32* %20, align 4
  %86 = load i32, i32* %10, align 4
  %87 = shl i32 %85, %86
  store i32 %87, i32* %20, align 4
  %88 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %89 = call i64 @snd_soc_volsw_is_stereo(%struct.soc_mixer_control* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %129

91:                                               ; preds = %81
  %92 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %93 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* %15, align 4
  %102 = and i32 %100, %101
  store i32 %102, i32* %19, align 4
  %103 = load i32, i32* %16, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %91
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %19, align 4
  %108 = sub i32 %106, %107
  store i32 %108, i32* %19, align 4
  br label %109

109:                                              ; preds = %105, %91
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %109
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %11, align 4
  %116 = shl i32 %114, %115
  %117 = load i32, i32* %21, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %21, align 4
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %11, align 4
  %121 = shl i32 %119, %120
  %122 = load i32, i32* %20, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %20, align 4
  br label %128

124:                                              ; preds = %109
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* %10, align 4
  %127 = shl i32 %125, %126
  store i32 %127, i32* %19, align 4
  store i32 1, i32* %18, align 4
  br label %128

128:                                              ; preds = %124, %113
  br label %129

129:                                              ; preds = %128, %81
  %130 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %21, align 4
  %133 = load i32, i32* %20, align 4
  %134 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %130, i32 %131, i32 %132, i32 %133)
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %17, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %129
  %138 = load i32, i32* %17, align 4
  store i32 %138, i32* %3, align 4
  br label %150

139:                                              ; preds = %129
  %140 = load i32, i32* %18, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %21, align 4
  %146 = load i32, i32* %19, align 4
  %147 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %143, i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %17, align 4
  br label %148

148:                                              ; preds = %142, %139
  %149 = load i32, i32* %17, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %137
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @snd_soc_volsw_is_stereo(%struct.soc_mixer_control*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
