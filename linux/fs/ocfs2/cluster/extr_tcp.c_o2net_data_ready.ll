; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_data_ready.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { {}*, i32, %struct.o2net_sock_container* }
%struct.o2net_sock_container = type { {}*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"data_ready hit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @o2net_data_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2net_data_ready(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca void (%struct.sock*)*, align 8
  %4 = alloca %struct.o2net_sock_container*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 1
  %7 = call i32 @read_lock_bh(i32* %6)
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 2
  %10 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %9, align 8
  store %struct.o2net_sock_container* %10, %struct.o2net_sock_container** %4, align 8
  %11 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %4, align 8
  %12 = icmp ne %struct.o2net_sock_container* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %4, align 8
  %15 = call i32 @sclog(%struct.o2net_sock_container* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %4, align 8
  %17 = call i32 @o2net_set_data_ready_time(%struct.o2net_sock_container* %16)
  %18 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %4, align 8
  %19 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %4, align 8
  %20 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %19, i32 0, i32 1
  %21 = call i32 @o2net_sc_queue_work(%struct.o2net_sock_container* %18, i32* %20)
  %22 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %4, align 8
  %23 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to void (%struct.sock*)**
  %25 = load void (%struct.sock*)*, void (%struct.sock*)** %24, align 8
  store void (%struct.sock*)* %25, void (%struct.sock*)** %3, align 8
  br label %31

26:                                               ; preds = %1
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to void (%struct.sock*)**
  %30 = load void (%struct.sock*)*, void (%struct.sock*)** %29, align 8
  store void (%struct.sock*)* %30, void (%struct.sock*)** %3, align 8
  br label %31

31:                                               ; preds = %26, %13
  %32 = load %struct.sock*, %struct.sock** %2, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 1
  %34 = call i32 @read_unlock_bh(i32* %33)
  %35 = load void (%struct.sock*)*, void (%struct.sock*)** %3, align 8
  %36 = load %struct.sock*, %struct.sock** %2, align 8
  call void %35(%struct.sock* %36)
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @sclog(%struct.o2net_sock_container*, i8*) #1

declare dso_local i32 @o2net_set_data_ready_time(%struct.o2net_sock_container*) #1

declare dso_local i32 @o2net_sc_queue_work(%struct.o2net_sock_container*, i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
