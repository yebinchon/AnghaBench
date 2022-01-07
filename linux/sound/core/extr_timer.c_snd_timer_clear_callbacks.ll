; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_clear_callbacks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_clear_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer = type { i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_timer*, %struct.list_head*)* @snd_timer_clear_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_timer_clear_callbacks(%struct.snd_timer* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.snd_timer*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i64, align 8
  store %struct.snd_timer* %0, %struct.snd_timer** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %6 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %7 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  br label %10

10:                                               ; preds = %15, %2
  %11 = load %struct.list_head*, %struct.list_head** %4, align 8
  %12 = call i32 @list_empty(%struct.list_head* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.list_head*, %struct.list_head** %4, align 8
  %17 = getelementptr inbounds %struct.list_head, %struct.list_head* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @list_del_init(i32 %18)
  br label %10

20:                                               ; preds = %10
  %21 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %22 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @list_del_init(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
