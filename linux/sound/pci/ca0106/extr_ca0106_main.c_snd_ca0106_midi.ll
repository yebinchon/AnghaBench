; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_midi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_midi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ca0106 = type { %struct.snd_ca_midi, %struct.snd_ca_midi }
%struct.snd_ca_midi = type { i32, %struct.snd_ca0106*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

@CA0106_MIDI_CHAN_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"CA0106 MPU-401 (UART) B\00", align 1
@INTE_MIDI_TX_B = common dso_local global i8* null, align 8
@INTE_MIDI_RX_B = common dso_local global i8* null, align 8
@IPR_MIDI_TX_B = common dso_local global i32 0, align 4
@IPR_MIDI_RX_B = common dso_local global i32 0, align 4
@MIDI_UART_B_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"CA0106 MPU-401 (UART)\00", align 1
@INTE_MIDI_TX_A = common dso_local global i8* null, align 8
@IPR_MIDI_TX_A = common dso_local global i32 0, align 4
@IPR_MIDI_RX_A = common dso_local global i32 0, align 4
@MIDI_UART_A_DATA = common dso_local global i32 0, align 4
@CA0106_MPU401_RESET = common dso_local global i32 0, align 4
@CA0106_MPU401_ENTER_UART = common dso_local global i32 0, align 4
@CA0106_MPU401_ACK = common dso_local global i32 0, align 4
@CA0106_MIDI_INPUT_AVAIL = common dso_local global i32 0, align 4
@CA0106_MIDI_OUTPUT_READY = common dso_local global i32 0, align 4
@ca0106_midi_interrupt_enable = common dso_local global i32 0, align 4
@ca0106_midi_interrupt_disable = common dso_local global i32 0, align 4
@ca0106_midi_read = common dso_local global i32 0, align 4
@ca0106_midi_write = common dso_local global i32 0, align 4
@ca0106_dev_id_card = common dso_local global i32 0, align 4
@ca0106_dev_id_port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ca0106*, i32)* @snd_ca0106_midi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ca0106_midi(%struct.snd_ca0106* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ca0106*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_ca_midi*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_ca0106* %0, %struct.snd_ca0106** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @CA0106_MIDI_CHAN_B, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %13 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %14 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %13, i32 0, i32 1
  store %struct.snd_ca_midi* %14, %struct.snd_ca_midi** %6, align 8
  %15 = load i8*, i8** @INTE_MIDI_TX_B, align 8
  %16 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %17 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %16, i32 0, i32 17
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** @INTE_MIDI_RX_B, align 8
  %19 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %20 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %19, i32 0, i32 16
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @IPR_MIDI_TX_B, align 4
  %22 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %23 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %22, i32 0, i32 15
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @IPR_MIDI_RX_B, align 4
  %25 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %26 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %25, i32 0, i32 14
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @MIDI_UART_B_DATA, align 4
  %28 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %29 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %28, i32 0, i32 13
  store i32 %27, i32* %29, align 4
  br label %48

30:                                               ; preds = %2
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %31 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %32 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %31, i32 0, i32 0
  store %struct.snd_ca_midi* %32, %struct.snd_ca_midi** %6, align 8
  %33 = load i8*, i8** @INTE_MIDI_TX_A, align 8
  %34 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %35 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %34, i32 0, i32 17
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @INTE_MIDI_TX_B, align 8
  %37 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %38 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %37, i32 0, i32 16
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @IPR_MIDI_TX_A, align 4
  %40 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %41 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %40, i32 0, i32 15
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @IPR_MIDI_RX_A, align 4
  %43 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %44 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %43, i32 0, i32 14
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @MIDI_UART_A_DATA, align 4
  %46 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %47 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %46, i32 0, i32 13
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %30, %12
  %49 = load i32, i32* @CA0106_MPU401_RESET, align 4
  %50 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %51 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %50, i32 0, i32 12
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @CA0106_MPU401_ENTER_UART, align 4
  %53 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %54 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %53, i32 0, i32 11
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @CA0106_MPU401_ACK, align 4
  %56 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %57 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %56, i32 0, i32 10
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @CA0106_MIDI_INPUT_AVAIL, align 4
  %59 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %60 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %59, i32 0, i32 9
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @CA0106_MIDI_OUTPUT_READY, align 4
  %62 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %63 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %66 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @ca0106_midi_interrupt_enable, align 4
  %68 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %69 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %68, i32 0, i32 7
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @ca0106_midi_interrupt_disable, align 4
  %71 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %72 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @ca0106_midi_read, align 4
  %74 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %75 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @ca0106_midi_write, align 4
  %77 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %78 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @ca0106_dev_id_card, align 4
  %80 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %81 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @ca0106_dev_id_port, align 4
  %83 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %84 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %86 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %87 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %86, i32 0, i32 1
  store %struct.snd_ca0106* %85, %struct.snd_ca0106** %87, align 8
  %88 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %89 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %6, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @ca_midi_init(%struct.snd_ca0106* %88, %struct.snd_ca_midi* %89, i32 0, i8* %90)
  store i32 %91, i32* %8, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %48
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %96

95:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %93
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @ca_midi_init(%struct.snd_ca0106*, %struct.snd_ca_midi*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
