; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_layla24_dsp.c_load_asic.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_layla24_dsp.c_load_asic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i64 }

@DSP_FNC_LOAD_LAYLA24_PCI_CARD_ASIC = common dso_local global i32 0, align 4
@FW_LAYLA24_1_ASIC = common dso_local global i32 0, align 4
@FW_LAYLA24_2S_ASIC = common dso_local global i32 0, align 4
@DSP_FNC_LOAD_LAYLA24_EXTERNAL_ASIC = common dso_local global i32 0, align 4
@GML_CONVERTER_ENABLE = common dso_local global i32 0, align 4
@GML_48KHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*)* @load_asic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_asic(%struct.echoaudio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %3, align 8
  %5 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %6 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %47

10:                                               ; preds = %1
  %11 = call i32 @mdelay(i32 10)
  %12 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %13 = load i32, i32* @DSP_FNC_LOAD_LAYLA24_PCI_CARD_ASIC, align 4
  %14 = load i32, i32* @FW_LAYLA24_1_ASIC, align 4
  %15 = call i32 @load_asic_generic(%struct.echoaudio* %12, i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %47

20:                                               ; preds = %10
  %21 = load i32, i32* @FW_LAYLA24_2S_ASIC, align 4
  %22 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %23 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = call i32 @mdelay(i32 10)
  %25 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %26 = load i32, i32* @DSP_FNC_LOAD_LAYLA24_EXTERNAL_ASIC, align 4
  %27 = load i32, i32* @FW_LAYLA24_2S_ASIC, align 4
  %28 = call i32 @load_asic_generic(%struct.echoaudio* %25, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %47

33:                                               ; preds = %20
  %34 = call i32 @mdelay(i32 10)
  %35 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %36 = call i32 @check_asic_status(%struct.echoaudio* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %41 = load i32, i32* @GML_CONVERTER_ENABLE, align 4
  %42 = load i32, i32* @GML_48KHZ, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @write_control_reg(%struct.echoaudio* %40, i32 %43, i32 1)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %39, %33
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %31, %18, %9
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @load_asic_generic(%struct.echoaudio*, i32, i32) #1

declare dso_local i32 @check_asic_status(%struct.echoaudio*) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
