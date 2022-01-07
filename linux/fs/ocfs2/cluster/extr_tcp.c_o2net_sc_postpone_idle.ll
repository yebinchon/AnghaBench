; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_sc_postpone_idle.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_sc_postpone_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_sock_container = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.o2net_node = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.o2net_sock_container*)* @o2net_sc_postpone_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2net_sc_postpone_idle(%struct.o2net_sock_container* %0) #0 {
  %2 = alloca %struct.o2net_sock_container*, align 8
  %3 = alloca %struct.o2net_node*, align 8
  store %struct.o2net_sock_container* %0, %struct.o2net_sock_container** %2, align 8
  %4 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %5 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.o2net_node* @o2net_nn_from_num(i32 %8)
  store %struct.o2net_node* %9, %struct.o2net_node** %3, align 8
  %10 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %11 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %10, i32 0, i32 0
  %12 = call i64 @atomic_read(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %16 = call i32 @o2net_num_from_nn(%struct.o2net_node* %15)
  %17 = call i32 @o2quo_conn_up(i32 %16)
  %18 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %19 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %18, i32 0, i32 1
  %20 = call i32 @cancel_delayed_work(i32* %19)
  %21 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %22 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %21, i32 0, i32 0
  %23 = call i32 @atomic_set(i32* %22, i32 0)
  br label %24

24:                                               ; preds = %14, %1
  %25 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %26 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %25, i32 0, i32 0
  %27 = call i64 @timer_pending(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %31 = call i32 @o2net_sc_reset_idle_timer(%struct.o2net_sock_container* %30)
  br label %32

32:                                               ; preds = %29, %24
  ret void
}

declare dso_local %struct.o2net_node* @o2net_nn_from_num(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @o2quo_conn_up(i32) #1

declare dso_local i32 @o2net_num_from_nn(%struct.o2net_node*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @o2net_sc_reset_idle_timer(%struct.o2net_sock_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
