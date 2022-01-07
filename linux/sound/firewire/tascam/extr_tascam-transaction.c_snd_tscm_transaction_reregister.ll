; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-transaction.c_snd_tscm_transaction_reregister.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-transaction.c_snd_tscm_transaction_reregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tscm = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fw_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@TSCM_ADDR_BASE = common dso_local global i64 0, align 8
@TSCM_OFFSET_MIDI_TX_ADDR_HI = common dso_local global i64 0, align 8
@TSCM_OFFSET_MIDI_TX_ADDR_LO = common dso_local global i64 0, align 8
@TSCM_OFFSET_MIDI_TX_ON = common dso_local global i64 0, align 8
@TSCM_OFFSET_LED_POWER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_tscm_transaction_reregister(%struct.snd_tscm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_tscm*, align 8
  %4 = alloca %struct.fw_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_tscm* %0, %struct.snd_tscm** %3, align 8
  %7 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %8 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.fw_device* @fw_parent_device(i32 %9)
  store %struct.fw_device* %10, %struct.fw_device** %4, align 8
  %11 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %12 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 16
  %17 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %18 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 32
  %22 = or i32 %16, %21
  %23 = call i32 @cpu_to_be32(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %25 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %28 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %29 = load i64, i64* @TSCM_OFFSET_MIDI_TX_ADDR_HI, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @snd_fw_transaction(i32 %26, i32 %27, i64 %30, i32* %5, i32 4, i32 0)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %78

36:                                               ; preds = %1
  %37 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %38 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cpu_to_be32(i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %43 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %46 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %47 = load i64, i64* @TSCM_OFFSET_MIDI_TX_ADDR_LO, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @snd_fw_transaction(i32 %44, i32 %45, i64 %48, i32* %5, i32 4, i32 0)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %36
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %78

54:                                               ; preds = %36
  %55 = call i32 @cpu_to_be32(i32 1)
  store i32 %55, i32* %5, align 4
  %56 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %57 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %60 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %61 = load i64, i64* @TSCM_OFFSET_MIDI_TX_ON, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @snd_fw_transaction(i32 %58, i32 %59, i64 %62, i32* %5, i32 4, i32 0)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %78

68:                                               ; preds = %54
  %69 = call i32 @cpu_to_be32(i32 65678)
  store i32 %69, i32* %5, align 4
  %70 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %71 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %74 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %75 = load i64, i64* @TSCM_OFFSET_LED_POWER, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @snd_fw_transaction(i32 %72, i32 %73, i64 %76, i32* %5, i32 4, i32 0)
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %68, %66, %52, %34
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.fw_device* @fw_parent_device(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @snd_fw_transaction(i32, i32, i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
