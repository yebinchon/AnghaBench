; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_call_update_outputs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_call_update_outputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_3__*, %struct.hda_gen_spec* }
%struct.TYPE_3__ = type { i32 }
%struct.hda_gen_spec = type { %struct.TYPE_4__, i64, i32 (%struct.hda_codec.0*)* }
%struct.TYPE_4__ = type { i32 }
%struct.hda_codec.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @call_update_outputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_update_outputs(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_gen_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 1
  %6 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  store %struct.hda_gen_spec* %6, %struct.hda_gen_spec** %3, align 8
  %7 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %8 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %7, i32 0, i32 2
  %9 = load i32 (%struct.hda_codec.0*)*, i32 (%struct.hda_codec.0*)** %8, align 8
  %10 = icmp ne i32 (%struct.hda_codec.0*)* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %13 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %12, i32 0, i32 2
  %14 = load i32 (%struct.hda_codec.0*)*, i32 (%struct.hda_codec.0*)** %13, align 8
  %15 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %16 = bitcast %struct.hda_codec* %15 to %struct.hda_codec.0*
  %17 = call i32 %14(%struct.hda_codec.0* %16)
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %20 = call i32 @snd_hda_gen_update_outputs(%struct.hda_codec* %19)
  br label %21

21:                                               ; preds = %18, %11
  %22 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %23 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %28 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %35 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @snd_ctl_sync_vmaster(i32 %37, i32 0)
  br label %39

39:                                               ; preds = %33, %26, %21
  ret void
}

declare dso_local i32 @snd_hda_gen_update_outputs(%struct.hda_codec*) #1

declare dso_local i32 @snd_ctl_sync_vmaster(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
