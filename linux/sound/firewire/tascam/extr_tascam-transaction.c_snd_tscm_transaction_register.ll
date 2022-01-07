; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-transaction.c_snd_tscm_transaction_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-transaction.c_snd_tscm_transaction_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_address_region = type { i32, i32 }
%struct.snd_tscm = type { %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32, %struct.snd_tscm*, i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }

@snd_tscm_transaction_register.resp_register_region = internal constant %struct.fw_address_region { i32 -536870912, i32 -536805377 }, align 4
@handle_midi_tx = common dso_local global i32 0, align 4
@TSCM_MIDI_OUT_PORT_MAX = common dso_local global i32 0, align 4
@midi_port_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_tscm_transaction_register(%struct.snd_tscm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_tscm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_tscm* %0, %struct.snd_tscm** %3, align 8
  %6 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %7 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 64, i32* %8, align 8
  %9 = load i32, i32* @handle_midi_tx, align 4
  %10 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %11 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  store i32 %9, i32* %12, align 8
  %13 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %14 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %15 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store %struct.snd_tscm* %13, %struct.snd_tscm** %16, align 8
  %17 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %18 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %17, i32 0, i32 0
  %19 = call i32 @fw_core_add_address_handler(%struct.TYPE_5__* %18, %struct.fw_address_region* @snd_tscm_transaction_register.resp_register_region)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %76

24:                                               ; preds = %1
  %25 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %26 = call i32 @snd_tscm_transaction_reregister(%struct.snd_tscm* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %68

30:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %63, %30
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @TSCM_MIDI_OUT_PORT_MAX, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %66

35:                                               ; preds = %31
  %36 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %37 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @fw_parent_device(i32 %38)
  %40 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %41 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 %39, i32* %46, align 8
  %47 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %48 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %55 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* @midi_port_work, align 4
  %62 = call i32 @INIT_WORK(i32* %60, i32 %61)
  br label %63

63:                                               ; preds = %35
  %64 = load i32, i32* %4, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %31

66:                                               ; preds = %31
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %76

68:                                               ; preds = %29
  %69 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %70 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %69, i32 0, i32 0
  %71 = call i32 @fw_core_remove_address_handler(%struct.TYPE_5__* %70)
  %72 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %73 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store %struct.snd_tscm* null, %struct.snd_tscm** %74, align 8
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %68, %66, %22
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @fw_core_add_address_handler(%struct.TYPE_5__*, %struct.fw_address_region*) #1

declare dso_local i32 @snd_tscm_transaction_reregister(%struct.snd_tscm*) #1

declare dso_local i32 @fw_parent_device(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @fw_core_remove_address_handler(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
