; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumixer.c_snd_emu1010_input_output_source_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumixer.c_snd_emu1010_input_output_source_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32 }
%struct.snd_emu10k1 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EMU_MODEL_EMU1616 = common dso_local global i64 0, align 8
@emu1616_src_texts = common dso_local global i32 0, align 4
@emu1010_src_texts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @snd_emu1010_input_output_source_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu1010_input_output_source_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_info*, align 8
  %6 = alloca %struct.snd_emu10k1*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %5, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %8 = call %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.snd_emu10k1* %8, %struct.snd_emu10k1** %6, align 8
  %9 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %10 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EMU_MODEL_EMU1616, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %18 = load i32, i32* @emu1616_src_texts, align 4
  %19 = call i32 @snd_ctl_enum_info(%struct.snd_ctl_elem_info* %17, i32 1, i32 49, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %22 = load i32, i32* @emu1010_src_texts, align 4
  %23 = call i32 @snd_ctl_enum_info(%struct.snd_ctl_elem_info* %21, i32 1, i32 53, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ctl_enum_info(%struct.snd_ctl_elem_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
