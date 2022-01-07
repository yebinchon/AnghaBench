; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_finish_session.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_finish_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { i32 }
%struct.reg_params = type { i32 }

@AMDTP_IN_STREAM = common dso_local global i32 0, align 4
@AMDTP_OUT_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_dice*, %struct.reg_params*, %struct.reg_params*)* @finish_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_session(%struct.snd_dice* %0, %struct.reg_params* %1, %struct.reg_params* %2) #0 {
  %4 = alloca %struct.snd_dice*, align 8
  %5 = alloca %struct.reg_params*, align 8
  %6 = alloca %struct.reg_params*, align 8
  store %struct.snd_dice* %0, %struct.snd_dice** %4, align 8
  store %struct.reg_params* %1, %struct.reg_params** %5, align 8
  store %struct.reg_params* %2, %struct.reg_params** %6, align 8
  %7 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %8 = load i32, i32* @AMDTP_IN_STREAM, align 4
  %9 = load %struct.reg_params*, %struct.reg_params** %5, align 8
  %10 = call i32 @stop_streams(%struct.snd_dice* %7, i32 %8, %struct.reg_params* %9)
  %11 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %12 = load i32, i32* @AMDTP_OUT_STREAM, align 4
  %13 = load %struct.reg_params*, %struct.reg_params** %6, align 8
  %14 = call i32 @stop_streams(%struct.snd_dice* %11, i32 %12, %struct.reg_params* %13)
  %15 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %16 = call i32 @snd_dice_transaction_clear_enable(%struct.snd_dice* %15)
  ret void
}

declare dso_local i32 @stop_streams(%struct.snd_dice*, i32, %struct.reg_params*) #1

declare dso_local i32 @snd_dice_transaction_clear_enable(%struct.snd_dice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
