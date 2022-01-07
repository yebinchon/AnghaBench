; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-transaction.c_snd_tscm_transaction_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-transaction.c_snd_tscm_transaction_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tscm = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@TSCM_ADDR_BASE = common dso_local global i64 0, align 8
@TSCM_OFFSET_LED_POWER = common dso_local global i64 0, align 8
@TSCM_OFFSET_MIDI_TX_ON = common dso_local global i64 0, align 8
@TSCM_OFFSET_MIDI_TX_ADDR_HI = common dso_local global i64 0, align 8
@TSCM_OFFSET_MIDI_TX_ADDR_LO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_tscm_transaction_unregister(%struct.snd_tscm* %0) #0 {
  %2 = alloca %struct.snd_tscm*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_tscm* %0, %struct.snd_tscm** %2, align 8
  %4 = load %struct.snd_tscm*, %struct.snd_tscm** %2, align 8
  %5 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %51

10:                                               ; preds = %1
  %11 = call i32 @cpu_to_be32(i32 142)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.snd_tscm*, %struct.snd_tscm** %2, align 8
  %13 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %16 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %17 = load i64, i64* @TSCM_OFFSET_LED_POWER, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @snd_fw_transaction(i32 %14, i32 %15, i64 %18, i32* %3, i32 4, i32 0)
  %20 = call i32 @cpu_to_be32(i32 0)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.snd_tscm*, %struct.snd_tscm** %2, align 8
  %22 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %25 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %26 = load i64, i64* @TSCM_OFFSET_MIDI_TX_ON, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @snd_fw_transaction(i32 %23, i32 %24, i64 %27, i32* %3, i32 4, i32 0)
  %29 = load %struct.snd_tscm*, %struct.snd_tscm** %2, align 8
  %30 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %33 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %34 = load i64, i64* @TSCM_OFFSET_MIDI_TX_ADDR_HI, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @snd_fw_transaction(i32 %31, i32 %32, i64 %35, i32* %3, i32 4, i32 0)
  %37 = load %struct.snd_tscm*, %struct.snd_tscm** %2, align 8
  %38 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %41 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %42 = load i64, i64* @TSCM_OFFSET_MIDI_TX_ADDR_LO, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @snd_fw_transaction(i32 %39, i32 %40, i64 %43, i32* %3, i32 4, i32 0)
  %45 = load %struct.snd_tscm*, %struct.snd_tscm** %2, align 8
  %46 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %45, i32 0, i32 0
  %47 = call i32 @fw_core_remove_address_handler(%struct.TYPE_2__* %46)
  %48 = load %struct.snd_tscm*, %struct.snd_tscm** %2, align 8
  %49 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @snd_fw_transaction(i32, i32, i64, i32*, i32, i32) #1

declare dso_local i32 @fw_core_remove_address_handler(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
