; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_snd_dice_stream_update_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_snd_dice_stream_update_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { i32, i32 }
%struct.reg_params = type { i32 }

@AMDTP_IN_STREAM = common dso_local global i32 0, align 4
@AMDTP_OUT_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_dice_stream_update_duplex(%struct.snd_dice* %0) #0 {
  %2 = alloca %struct.snd_dice*, align 8
  %3 = alloca %struct.reg_params, align 4
  %4 = alloca %struct.reg_params, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %2, align 8
  %5 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %6 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %8 = call i64 @get_register_params(%struct.snd_dice* %7, %struct.reg_params* %3, %struct.reg_params* %4)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %12 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %11, i32 0, i32 1
  %13 = call i32 @amdtp_domain_stop(i32* %12)
  %14 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %15 = load i32, i32* @AMDTP_IN_STREAM, align 4
  %16 = call i32 @stop_streams(%struct.snd_dice* %14, i32 %15, %struct.reg_params* %3)
  %17 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %18 = load i32, i32* @AMDTP_OUT_STREAM, align 4
  %19 = call i32 @stop_streams(%struct.snd_dice* %17, i32 %18, %struct.reg_params* %4)
  br label %20

20:                                               ; preds = %10, %1
  ret void
}

declare dso_local i64 @get_register_params(%struct.snd_dice*, %struct.reg_params*, %struct.reg_params*) #1

declare dso_local i32 @amdtp_domain_stop(i32*) #1

declare dso_local i32 @stop_streams(%struct.snd_dice*, i32, %struct.reg_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
