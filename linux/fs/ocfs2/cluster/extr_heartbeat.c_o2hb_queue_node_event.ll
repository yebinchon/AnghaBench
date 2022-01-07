; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_queue_node_event.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_queue_node_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2hb_node_event = type { i32, i32, i32, %struct.o2nm_node* }
%struct.o2nm_node = type { i32 }

@o2hb_live_lock = common dso_local global i32 0, align 4
@O2HB_NODE_DOWN_CB = common dso_local global i32 0, align 4
@ML_HEARTBEAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Queue node %s event for node %d\0A\00", align 1
@O2HB_NODE_UP_CB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@o2hb_node_events = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.o2hb_node_event*, i32, %struct.o2nm_node*, i32)* @o2hb_queue_node_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2hb_queue_node_event(%struct.o2hb_node_event* %0, i32 %1, %struct.o2nm_node* %2, i32 %3) #0 {
  %5 = alloca %struct.o2hb_node_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.o2nm_node*, align 8
  %8 = alloca i32, align 4
  store %struct.o2hb_node_event* %0, %struct.o2hb_node_event** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.o2nm_node* %2, %struct.o2nm_node** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = call i32 @assert_spin_locked(i32* @o2hb_live_lock)
  %10 = load %struct.o2nm_node*, %struct.o2nm_node** %7, align 8
  %11 = icmp ne %struct.o2nm_node* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @O2HB_NODE_DOWN_CB, align 4
  %15 = icmp ne i32 %13, %14
  br label %16

16:                                               ; preds = %12, %4
  %17 = phi i1 [ false, %4 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.o2hb_node_event*, %struct.o2hb_node_event** %5, align 8
  %22 = getelementptr inbounds %struct.o2hb_node_event, %struct.o2hb_node_event* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.o2nm_node*, %struct.o2nm_node** %7, align 8
  %24 = load %struct.o2hb_node_event*, %struct.o2hb_node_event** %5, align 8
  %25 = getelementptr inbounds %struct.o2hb_node_event, %struct.o2hb_node_event* %24, i32 0, i32 3
  store %struct.o2nm_node* %23, %struct.o2nm_node** %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.o2hb_node_event*, %struct.o2hb_node_event** %5, align 8
  %28 = getelementptr inbounds %struct.o2hb_node_event, %struct.o2hb_node_event* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @ML_HEARTBEAT, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @O2HB_NODE_UP_CB, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @mlog(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %35)
  %37 = load %struct.o2hb_node_event*, %struct.o2hb_node_event** %5, align 8
  %38 = getelementptr inbounds %struct.o2hb_node_event, %struct.o2hb_node_event* %37, i32 0, i32 2
  %39 = call i32 @list_add_tail(i32* %38, i32* @o2hb_node_events)
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog(i32, i8*, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
