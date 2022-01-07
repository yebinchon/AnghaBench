; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_update_micmute_led.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_update_micmute_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 (%struct.hda_codec.0*, %struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* }
%struct.hda_codec.0 = type opaque
%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Capture Switch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @update_micmute_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_micmute_led(%struct.hda_codec* %0, %struct.snd_kcontrol* %1, %struct.snd_ctl_elem_value* %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca %struct.snd_ctl_elem_value*, align 8
  %7 = alloca %struct.hda_gen_spec*, align 8
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store %struct.snd_ctl_elem_value* %2, %struct.snd_ctl_elem_value** %6, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  store %struct.hda_gen_spec* %11, %struct.hda_gen_spec** %7, align 8
  %12 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %13 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32 (%struct.hda_codec.0*, %struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)*, i32 (%struct.hda_codec.0*, %struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)** %14, align 8
  %16 = icmp ne i32 (%struct.hda_codec.0*, %struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %19 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32 (%struct.hda_codec.0*, %struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)*, i32 (%struct.hda_codec.0*, %struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)** %20, align 8
  %22 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %23 = bitcast %struct.hda_codec* %22 to %struct.hda_codec.0*
  %24 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %25 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %6, align 8
  %26 = call i32 %21(%struct.hda_codec.0* %23, %struct.snd_kcontrol* %24, %struct.snd_ctl_elem_value* %25)
  br label %27

27:                                               ; preds = %17, %3
  %28 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %6, align 8
  %29 = icmp ne %struct.snd_ctl_elem_value* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %79

31:                                               ; preds = %27
  %32 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %33 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %6, align 8
  %34 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %33, i32 0, i32 1
  %35 = call i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol* %32, %struct.TYPE_8__* %34)
  %36 = shl i32 1, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %6, align 8
  %38 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @strcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %79, label %43

43:                                               ; preds = %31
  %44 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %6, align 8
  %45 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %43
  %53 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %6, align 8
  %54 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %52, %43
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %64 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %62
  store i32 %67, i32* %65, align 8
  br label %76

68:                                               ; preds = %52
  %69 = load i32, i32* %8, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %72 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %70
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %68, %61
  %77 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %78 = call i32 @call_micmute_led_update(%struct.hda_codec* %77)
  br label %79

79:                                               ; preds = %30, %76, %31
  ret void
}

declare dso_local i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol*, %struct.TYPE_8__*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @call_micmute_led_update(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
