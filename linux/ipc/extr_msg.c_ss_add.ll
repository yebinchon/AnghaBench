; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_msg.c_ss_add.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_msg.c_ss_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_queue = type { i32 }
%struct.msg_sender = type { i64, i32, i32 }

@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msg_queue*, %struct.msg_sender*, i64)* @ss_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ss_add(%struct.msg_queue* %0, %struct.msg_sender* %1, i64 %2) #0 {
  %4 = alloca %struct.msg_queue*, align 8
  %5 = alloca %struct.msg_sender*, align 8
  %6 = alloca i64, align 8
  store %struct.msg_queue* %0, %struct.msg_queue** %4, align 8
  store %struct.msg_sender* %1, %struct.msg_sender** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* @current, align 4
  %8 = load %struct.msg_sender*, %struct.msg_sender** %5, align 8
  %9 = getelementptr inbounds %struct.msg_sender, %struct.msg_sender* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.msg_sender*, %struct.msg_sender** %5, align 8
  %12 = getelementptr inbounds %struct.msg_sender, %struct.msg_sender* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %14 = call i32 @__set_current_state(i32 %13)
  %15 = load %struct.msg_sender*, %struct.msg_sender** %5, align 8
  %16 = getelementptr inbounds %struct.msg_sender, %struct.msg_sender* %15, i32 0, i32 1
  %17 = load %struct.msg_queue*, %struct.msg_queue** %4, align 8
  %18 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %17, i32 0, i32 0
  %19 = call i32 @list_add_tail(i32* %16, i32* %18)
  ret void
}

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
