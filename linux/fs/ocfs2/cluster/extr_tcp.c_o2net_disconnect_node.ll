; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_disconnect_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_disconnect_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2nm_node = type { i32 }
%struct.o2net_node = type { i32, i32, i32, i32, i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@o2net_wq = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @o2net_disconnect_node(%struct.o2nm_node* %0) #0 {
  %2 = alloca %struct.o2nm_node*, align 8
  %3 = alloca %struct.o2net_node*, align 8
  store %struct.o2nm_node* %0, %struct.o2nm_node** %2, align 8
  %4 = load %struct.o2nm_node*, %struct.o2nm_node** %2, align 8
  %5 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.o2net_node* @o2net_nn_from_num(i32 %6)
  store %struct.o2net_node* %7, %struct.o2net_node** %3, align 8
  %8 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %9 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %8, i32 0, i32 3
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %12 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %11, i32 0, i32 4
  %13 = call i32 @atomic_set(i32* %12, i32 0)
  %14 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %15 = load i32, i32* @ENOTCONN, align 4
  %16 = sub nsw i32 0, %15
  %17 = call i32 @o2net_set_nn_state(%struct.o2net_node* %14, i32* null, i32 0, i32 %16)
  %18 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %19 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %18, i32 0, i32 3
  %20 = call i32 @spin_unlock(i32* %19)
  %21 = load i64, i64* @o2net_wq, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %1
  %24 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %25 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %24, i32 0, i32 2
  %26 = call i32 @cancel_delayed_work(i32* %25)
  %27 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %28 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %27, i32 0, i32 1
  %29 = call i32 @cancel_delayed_work(i32* %28)
  %30 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %31 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %30, i32 0, i32 0
  %32 = call i32 @cancel_delayed_work(i32* %31)
  %33 = load i64, i64* @o2net_wq, align 8
  %34 = call i32 @flush_workqueue(i64 %33)
  br label %35

35:                                               ; preds = %23, %1
  ret void
}

declare dso_local %struct.o2net_node* @o2net_nn_from_num(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @o2net_set_nn_state(%struct.o2net_node*, i32*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @flush_workqueue(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
