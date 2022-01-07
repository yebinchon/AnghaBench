; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_88pm860x-codec.c_snd_soc_put_volsw_2r_out.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_88pm860x-codec.c_snd_soc_put_volsw_2r_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.soc_mixer_control = type { i32, i32, i32, i32 }
%struct.snd_soc_component = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_soc_put_volsw_2r_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_soc_put_volsw_2r_out(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
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
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %20, %struct.soc_mixer_control** %6, align 8
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %22 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %21)
  store %struct.snd_soc_component* %22, %struct.snd_soc_component** %7, align 8
  %23 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %24 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %27 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %30 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %33 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @fls(i32 %35)
  %37 = shl i32 1, %36
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %10, align 4
  %41 = shl i32 %39, %40
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %44 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %42, %49
  %51 = load i32, i32* %12, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %55 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %53, %60
  %62 = load i32, i32* %12, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %10, align 4
  %66 = shl i32 %64, %65
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %10, align 4
  %69 = shl i32 %67, %68
  store i32 %69, i32* %15, align 4
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %70, i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %2
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %3, align 4
  br label %86

79:                                               ; preds = %2
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %79, %77
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
