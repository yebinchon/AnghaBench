; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_get_volsw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_get_volsw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_get_volsw(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
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
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %20 = call %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol* %19)
  store %struct.snd_soc_component* %20, %struct.snd_soc_component** %6, align 8
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %22 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %24, %struct.soc_mixer_control** %7, align 8
  %25 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %26 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %29 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %32 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %35 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %38 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %41 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %13, align 4
  %43 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %44 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @fls(i32 %46)
  %48 = shl i32 1, %47
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %15, align 4
  %50 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %51 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %2
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 1
  %58 = call i32 @BIT(i32 %57)
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %55, %2
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @snd_soc_read_signed(%struct.snd_soc_component* %61, i32 %62, i32 %63, i32 %64, i32 %65, i32* %17)
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* %18, align 4
  store i32 %70, i32* %3, align 4
  br label %156

71:                                               ; preds = %60
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %13, align 4
  %74 = sub nsw i32 %72, %73
  %75 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %76 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %74, i32* %80, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %71
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %86 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %84, %91
  %93 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %94 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  store i32 %92, i32* %98, align 4
  br label %99

99:                                               ; preds = %83, %71
  %100 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %101 = call i64 @snd_soc_volsw_is_stereo(%struct.soc_mixer_control* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %155

103:                                              ; preds = %99
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @snd_soc_read_signed(%struct.snd_soc_component* %108, i32 %109, i32 %110, i32 %111, i32 %112, i32* %17)
  store i32 %113, i32* %18, align 4
  br label %121

114:                                              ; preds = %103
  %115 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %14, align 4
  %120 = call i32 @snd_soc_read_signed(%struct.snd_soc_component* %115, i32 %116, i32 %117, i32 %118, i32 %119, i32* %17)
  store i32 %120, i32* %18, align 4
  br label %121

121:                                              ; preds = %114, %107
  %122 = load i32, i32* %18, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* %18, align 4
  store i32 %125, i32* %3, align 4
  br label %156

126:                                              ; preds = %121
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %13, align 4
  %129 = sub nsw i32 %127, %128
  %130 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %131 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  store i32 %129, i32* %135, align 4
  %136 = load i32, i32* %16, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %126
  %139 = load i32, i32* %12, align 4
  %140 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %141 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %139, %146
  %148 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %149 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  store i32 %147, i32* %153, align 4
  br label %154

154:                                              ; preds = %138, %126
  br label %155

155:                                              ; preds = %154, %99
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %155, %124, %69
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @snd_soc_read_signed(%struct.snd_soc_component*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @snd_soc_volsw_is_stereo(%struct.soc_mixer_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
