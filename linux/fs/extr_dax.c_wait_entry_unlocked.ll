; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dax.c_wait_entry_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dax.c_wait_entry_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_state = type { i32 }
%struct.wait_exceptional_entry_queue = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@wake_exceptional_entry_func = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xa_state*, i8*)* @wait_entry_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_entry_unlocked(%struct.xa_state* %0, i8* %1) #0 {
  %3 = alloca %struct.xa_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wait_exceptional_entry_queue, align 4
  %6 = alloca i32*, align 8
  store %struct.xa_state* %0, %struct.xa_state** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = getelementptr inbounds %struct.wait_exceptional_entry_queue, %struct.wait_exceptional_entry_queue* %5, i32 0, i32 0
  %8 = call i32 @init_wait(%struct.TYPE_4__* %7)
  %9 = load i32, i32* @wake_exceptional_entry_func, align 4
  %10 = getelementptr inbounds %struct.wait_exceptional_entry_queue, %struct.wait_exceptional_entry_queue* %5, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds %struct.wait_exceptional_entry_queue, %struct.wait_exceptional_entry_queue* %5, i32 0, i32 1
  %15 = call i32* @dax_entry_waitqueue(%struct.xa_state* %12, i8* %13, i32* %14)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds %struct.wait_exceptional_entry_queue, %struct.wait_exceptional_entry_queue* %5, i32 0, i32 0
  %18 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %19 = call i32 @prepare_to_wait(i32* %16, %struct.TYPE_4__* %17, i32 %18)
  %20 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %21 = call i32 @xas_unlock_irq(%struct.xa_state* %20)
  %22 = call i32 (...) @schedule()
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds %struct.wait_exceptional_entry_queue, %struct.wait_exceptional_entry_queue* %5, i32 0, i32 0
  %25 = call i32 @finish_wait(i32* %23, %struct.TYPE_4__* %24)
  ret void
}

declare dso_local i32 @init_wait(%struct.TYPE_4__*) #1

declare dso_local i32* @dax_entry_waitqueue(%struct.xa_state*, i8*, i32*) #1

declare dso_local i32 @prepare_to_wait(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @xas_unlock_irq(%struct.xa_state*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
