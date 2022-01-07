; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_core.c_snd_mixart_send_msg_nonblock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_core.c_snd_mixart_send_msg_nonblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixart_mgr = type { i32, i32 }
%struct.mixart_msg = type { i32 }

@MSG_DEFAULT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_mixart_send_msg_nonblock(%struct.mixart_mgr* %0, %struct.mixart_msg* %1) #0 {
  %3 = alloca %struct.mixart_mgr*, align 8
  %4 = alloca %struct.mixart_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mixart_mgr* %0, %struct.mixart_mgr** %3, align 8
  store %struct.mixart_msg* %1, %struct.mixart_msg** %4, align 8
  %7 = load %struct.mixart_mgr*, %struct.mixart_mgr** %3, align 8
  %8 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.mixart_mgr*, %struct.mixart_mgr** %3, align 8
  %11 = load %struct.mixart_msg*, %struct.mixart_msg** %4, align 8
  %12 = load i32, i32* @MSG_DEFAULT_SIZE, align 4
  %13 = call i32 @send_msg(%struct.mixart_mgr* %10, %struct.mixart_msg* %11, i32 %12, i32 0, i32* %5)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.mixart_mgr*, %struct.mixart_mgr** %3, align 8
  %15 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %14, i32 0, i32 1
  %16 = call i32 @mutex_unlock(i32* %15)
  %17 = load %struct.mixart_mgr*, %struct.mixart_mgr** %3, align 8
  %18 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %17, i32 0, i32 0
  %19 = call i32 @atomic_inc(i32* %18)
  %20 = load i32, i32* %6, align 4
  ret i32 %20
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @send_msg(%struct.mixart_mgr*, %struct.mixart_msg*, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
