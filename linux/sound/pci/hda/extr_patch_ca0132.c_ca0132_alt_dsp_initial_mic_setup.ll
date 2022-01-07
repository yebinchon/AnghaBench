; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_alt_dsp_initial_mic_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_alt_dsp_initial_mic_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32 }

@MEM_CONNID_MICIN1 = common dso_local global i32 0, align 4
@SR_96_000 = common dso_local global i32 0, align 4
@MEM_CONNID_MICOUT1 = common dso_local global i32 0, align 4
@FLOAT_THREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @ca0132_alt_dsp_initial_mic_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0132_alt_dsp_initial_mic_setup(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 0
  %7 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  store %struct.ca0132_spec* %7, %struct.ca0132_spec** %3, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %9 = call i32 @chipio_set_stream_control(%struct.hda_codec* %8, i32 3, i32 0)
  %10 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %11 = call i32 @chipio_set_stream_control(%struct.hda_codec* %10, i32 4, i32 0)
  %12 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %13 = load i32, i32* @MEM_CONNID_MICIN1, align 4
  %14 = load i32, i32* @SR_96_000, align 4
  %15 = call i32 @chipio_set_conn_rate(%struct.hda_codec* %12, i32 %13, i32 %14)
  %16 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %17 = load i32, i32* @MEM_CONNID_MICOUT1, align 4
  %18 = load i32, i32* @SR_96_000, align 4
  %19 = call i32 @chipio_set_conn_rate(%struct.hda_codec* %16, i32 %17, i32 %18)
  %20 = load i32, i32* @FLOAT_THREE, align 4
  store i32 %20, i32* %4, align 4
  %21 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @dspio_set_uint_param(%struct.hda_codec* %21, i32 128, i32 0, i32 %22)
  %24 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %25 = call i32 @chipio_set_stream_control(%struct.hda_codec* %24, i32 3, i32 1)
  %26 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %27 = call i32 @chipio_set_stream_control(%struct.hda_codec* %26, i32 4, i32 1)
  %28 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %29 = call i32 @ca0132_quirk(%struct.ca0132_spec* %28)
  switch i32 %29, label %40 [
    i32 128, label %30
    i32 129, label %35
  ]

30:                                               ; preds = %1
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = call i32 @chipio_write(%struct.hda_codec* %31, i32 1618072, i32 12)
  %33 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %34 = call i32 @chipio_write(%struct.hda_codec* %33, i32 1618076, i32 12)
  br label %41

35:                                               ; preds = %1
  %36 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %37 = call i32 @chipio_write(%struct.hda_codec* %36, i32 1618072, i32 12)
  %38 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %39 = call i32 @chipio_write(%struct.hda_codec* %38, i32 1618076, i32 76)
  br label %41

40:                                               ; preds = %1
  br label %41

41:                                               ; preds = %40, %35, %30
  ret void
}

declare dso_local i32 @chipio_set_stream_control(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @chipio_set_conn_rate(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @dspio_set_uint_param(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @ca0132_quirk(%struct.ca0132_spec*) #1

declare dso_local i32 @chipio_write(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
