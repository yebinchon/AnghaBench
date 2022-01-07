; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_snd_dice_stream_stop_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_snd_dice_stream_stop_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { i64, i32 }
%struct.reg_params = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_dice_stream_stop_duplex(%struct.snd_dice* %0) #0 {
  %2 = alloca %struct.snd_dice*, align 8
  %3 = alloca %struct.reg_params, align 4
  %4 = alloca %struct.reg_params, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %2, align 8
  %5 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %6 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %11 = call i64 @get_register_params(%struct.snd_dice* %10, %struct.reg_params* %3, %struct.reg_params* %4)
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %15 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %14, i32 0, i32 1
  %16 = call i32 @amdtp_domain_stop(i32* %15)
  %17 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %18 = call i32 @finish_session(%struct.snd_dice* %17, %struct.reg_params* %3, %struct.reg_params* %4)
  br label %19

19:                                               ; preds = %13, %9
  %20 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %21 = call i32 @release_resources(%struct.snd_dice* %20)
  br label %22

22:                                               ; preds = %19, %1
  ret void
}

declare dso_local i64 @get_register_params(%struct.snd_dice*, %struct.reg_params*, %struct.reg_params*) #1

declare dso_local i32 @amdtp_domain_stop(i32*) #1

declare dso_local i32 @finish_session(%struct.snd_dice*, %struct.reg_params*, %struct.reg_params*) #1

declare dso_local i32 @release_resources(%struct.snd_dice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
