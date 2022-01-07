; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_serial-u16550.c_snd_uart16550_buffer_timer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_serial-u16550.c_snd_uart16550_buffer_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }
%struct.snd_uart16550 = type { i32 }

@buffer_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @snd_uart16550_buffer_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_uart16550_buffer_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_uart16550*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.snd_uart16550*, %struct.snd_uart16550** %4, align 8
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @buffer_timer, align 4
  %8 = call %struct.snd_uart16550* @from_timer(%struct.snd_uart16550* %5, %struct.timer_list* %6, i32 %7)
  store %struct.snd_uart16550* %8, %struct.snd_uart16550** %4, align 8
  %9 = load %struct.snd_uart16550*, %struct.snd_uart16550** %4, align 8
  %10 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %9, i32 0, i32 0
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.snd_uart16550*, %struct.snd_uart16550** %4, align 8
  %14 = call i32 @snd_uart16550_del_timer(%struct.snd_uart16550* %13)
  %15 = load %struct.snd_uart16550*, %struct.snd_uart16550** %4, align 8
  %16 = call i32 @snd_uart16550_io_loop(%struct.snd_uart16550* %15)
  %17 = load %struct.snd_uart16550*, %struct.snd_uart16550** %4, align 8
  %18 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %17, i32 0, i32 0
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  ret void
}

declare dso_local %struct.snd_uart16550* @from_timer(%struct.snd_uart16550*, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_uart16550_del_timer(%struct.snd_uart16550*) #1

declare dso_local i32 @snd_uart16550_io_loop(%struct.snd_uart16550*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
