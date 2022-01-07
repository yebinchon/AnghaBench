; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_snd_soc_put_volsw_twl4030.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_snd_soc_put_volsw_twl4030.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.soc_mixer_control = type { i32, i32, i32, i32 }
%struct.snd_soc_component = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_soc_put_volsw_twl4030 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_soc_put_volsw_twl4030(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.soc_mixer_control*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %18, %struct.soc_mixer_control** %5, align 8
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %20 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %19)
  store %struct.snd_soc_component* %20, %struct.snd_soc_component** %6, align 8
  %21 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %5, align 8
  %22 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %5, align 8
  %25 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %5, align 8
  %28 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %5, align 8
  %31 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @fls(i32 %33)
  %35 = shl i32 1, %34
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  %37 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %38 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %43, %44
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %12, align 2
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 %47, %48
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %14, align 2
  %51 = load i16, i16* %12, align 2
  %52 = icmp ne i16 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %2
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  %56 = load i16, i16* %12, align 2
  %57 = zext i16 %56 to i32
  %58 = sub nsw i32 %55, %57
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %12, align 2
  br label %60

60:                                               ; preds = %53, %2
  %61 = load i16, i16* %12, align 2
  %62 = zext i16 %61 to i32
  %63 = load i32, i32* %8, align 4
  %64 = shl i32 %62, %63
  %65 = trunc i32 %64 to i16
  store i16 %65, i16* %12, align 2
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %105

69:                                               ; preds = %60
  %70 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %71 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = and i32 %76, %77
  %79 = trunc i32 %78 to i16
  store i16 %79, i16* %13, align 2
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %9, align 4
  %82 = shl i32 %80, %81
  %83 = load i16, i16* %14, align 2
  %84 = zext i16 %83 to i32
  %85 = or i32 %84, %82
  %86 = trunc i32 %85 to i16
  store i16 %86, i16* %14, align 2
  %87 = load i16, i16* %13, align 2
  %88 = icmp ne i16 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %69
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  %92 = load i16, i16* %13, align 2
  %93 = zext i16 %92 to i32
  %94 = sub nsw i32 %91, %93
  %95 = trunc i32 %94 to i16
  store i16 %95, i16* %13, align 2
  br label %96

96:                                               ; preds = %89, %69
  %97 = load i16, i16* %13, align 2
  %98 = zext i16 %97 to i32
  %99 = load i32, i32* %9, align 4
  %100 = shl i32 %98, %99
  %101 = load i16, i16* %12, align 2
  %102 = zext i16 %101 to i32
  %103 = or i32 %102, %100
  %104 = trunc i32 %103 to i16
  store i16 %104, i16* %12, align 2
  br label %105

105:                                              ; preds = %96, %60
  %106 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i16, i16* %14, align 2
  %109 = load i16, i16* %12, align 2
  %110 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %106, i32 %107, i16 zeroext %108, i16 zeroext %109)
  ret i32 %110
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
