; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_hb_node_up_cb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_hb_node_up_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2nm_node = type { i32 }
%struct.o2net_node = type { i32, i64, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.o2nm_node*, i32, i8*)* @o2net_hb_node_up_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2net_hb_node_up_cb(%struct.o2nm_node* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.o2nm_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.o2net_node*, align 8
  store %struct.o2nm_node* %0, %struct.o2nm_node** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.o2net_node* @o2net_nn_from_num(i32 %8)
  store %struct.o2net_node* %9, %struct.o2net_node** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @o2quo_hb_up(i32 %10)
  %12 = load %struct.o2nm_node*, %struct.o2nm_node** %4, align 8
  %13 = icmp ne %struct.o2nm_node* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i64, i64* @jiffies, align 8
  %18 = call i32 (...) @o2net_reconnect_delay()
  %19 = call i64 @msecs_to_jiffies(i32 %18)
  %20 = add nsw i64 %19, 1
  %21 = sub nsw i64 %17, %20
  %22 = load %struct.o2net_node*, %struct.o2net_node** %7, align 8
  %23 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %22, i32 0, i32 3
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (...) @o2nm_this_node()
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %3
  %28 = load %struct.o2net_node*, %struct.o2net_node** %7, align 8
  %29 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.o2net_node*, %struct.o2net_node** %7, align 8
  %32 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %31, i32 0, i32 2
  %33 = call i32 @atomic_set(i32* %32, i32 0)
  %34 = load %struct.o2net_node*, %struct.o2net_node** %7, align 8
  %35 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load %struct.o2net_node*, %struct.o2net_node** %7, align 8
  %40 = call i32 @o2net_set_nn_state(%struct.o2net_node* %39, i32* null, i32 0, i32 0)
  br label %41

41:                                               ; preds = %38, %27
  %42 = load %struct.o2net_node*, %struct.o2net_node** %7, align 8
  %43 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  br label %45

45:                                               ; preds = %41, %3
  ret void
}

declare dso_local %struct.o2net_node* @o2net_nn_from_num(i32) #1

declare dso_local i32 @o2quo_hb_up(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @o2net_reconnect_delay(...) #1

declare dso_local i32 @o2nm_this_node(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @o2net_set_nn_state(%struct.o2net_node*, i32*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
