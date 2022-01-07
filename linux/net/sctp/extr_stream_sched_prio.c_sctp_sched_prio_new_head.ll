; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream_sched_prio.c_sctp_sched_prio_new_head.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream_sched_prio.c_sctp_sched_prio_new_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_stream_priorities = type { i32, i32*, i32, i32 }
%struct.sctp_stream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_stream_priorities* (%struct.sctp_stream*, i32, i32)* @sctp_sched_prio_new_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_stream_priorities* @sctp_sched_prio_new_head(%struct.sctp_stream* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_stream_priorities*, align 8
  %5 = alloca %struct.sctp_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_stream_priorities*, align 8
  store %struct.sctp_stream* %0, %struct.sctp_stream** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call %struct.sctp_stream_priorities* @kmalloc(i32 24, i32 %9)
  store %struct.sctp_stream_priorities* %10, %struct.sctp_stream_priorities** %8, align 8
  %11 = load %struct.sctp_stream_priorities*, %struct.sctp_stream_priorities** %8, align 8
  %12 = icmp ne %struct.sctp_stream_priorities* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.sctp_stream_priorities* null, %struct.sctp_stream_priorities** %4, align 8
  br label %27

14:                                               ; preds = %3
  %15 = load %struct.sctp_stream_priorities*, %struct.sctp_stream_priorities** %8, align 8
  %16 = getelementptr inbounds %struct.sctp_stream_priorities, %struct.sctp_stream_priorities* %15, i32 0, i32 3
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.sctp_stream_priorities*, %struct.sctp_stream_priorities** %8, align 8
  %19 = getelementptr inbounds %struct.sctp_stream_priorities, %struct.sctp_stream_priorities* %18, i32 0, i32 2
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.sctp_stream_priorities*, %struct.sctp_stream_priorities** %8, align 8
  %22 = getelementptr inbounds %struct.sctp_stream_priorities, %struct.sctp_stream_priorities* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.sctp_stream_priorities*, %struct.sctp_stream_priorities** %8, align 8
  %25 = getelementptr inbounds %struct.sctp_stream_priorities, %struct.sctp_stream_priorities* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.sctp_stream_priorities*, %struct.sctp_stream_priorities** %8, align 8
  store %struct.sctp_stream_priorities* %26, %struct.sctp_stream_priorities** %4, align 8
  br label %27

27:                                               ; preds = %14, %13
  %28 = load %struct.sctp_stream_priorities*, %struct.sctp_stream_priorities** %4, align 8
  ret %struct.sctp_stream_priorities* %28
}

declare dso_local %struct.sctp_stream_priorities* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
