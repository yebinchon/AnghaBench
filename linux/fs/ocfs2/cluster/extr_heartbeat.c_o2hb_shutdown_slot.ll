; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_shutdown_slot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_shutdown_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2hb_disk_slot = type { i64, i32 }
%struct.o2hb_node_event = type { i32 }
%struct.o2nm_node = type { i32 }

@o2hb_live_lock = common dso_local global i32 0, align 4
@ML_HEARTBEAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Shutdown, node %d leaves region\0A\00", align 1
@o2hb_live_slots = common dso_local global i32* null, align 8
@o2hb_live_node_bitmap = common dso_local global i32 0, align 4
@O2HB_NODE_DOWN_CB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.o2hb_disk_slot*)* @o2hb_shutdown_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2hb_shutdown_slot(%struct.o2hb_disk_slot* %0) #0 {
  %2 = alloca %struct.o2hb_disk_slot*, align 8
  %3 = alloca %struct.o2hb_node_event, align 4
  %4 = alloca %struct.o2nm_node*, align 8
  %5 = alloca i32, align 4
  store %struct.o2hb_disk_slot* %0, %struct.o2hb_disk_slot** %2, align 8
  %6 = getelementptr inbounds %struct.o2hb_node_event, %struct.o2hb_node_event* %3, i32 0, i32 0
  %7 = getelementptr inbounds %struct.o2hb_node_event, %struct.o2hb_node_event* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @LIST_HEAD_INIT(i32 %8)
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %2, align 8
  %11 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call %struct.o2nm_node* @o2nm_get_node_by_num(i64 %12)
  store %struct.o2nm_node* %13, %struct.o2nm_node** %4, align 8
  %14 = load %struct.o2nm_node*, %struct.o2nm_node** %4, align 8
  %15 = icmp ne %struct.o2nm_node* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %61

17:                                               ; preds = %1
  %18 = call i32 @spin_lock(i32* @o2hb_live_lock)
  %19 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %2, align 8
  %20 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %19, i32 0, i32 1
  %21 = call i64 @list_empty(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %52, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ML_HEARTBEAT, align 4
  %25 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %2, align 8
  %26 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @mlog(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %2, align 8
  %30 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %29, i32 0, i32 1
  %31 = call i32 @list_del_init(i32* %30)
  %32 = load i32*, i32** @o2hb_live_slots, align 8
  %33 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %2, align 8
  %34 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = call i64 @list_empty(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %23
  %40 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %2, align 8
  %41 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @o2hb_live_node_bitmap, align 4
  %44 = call i32 @clear_bit(i64 %42, i32 %43)
  %45 = load i32, i32* @O2HB_NODE_DOWN_CB, align 4
  %46 = load %struct.o2nm_node*, %struct.o2nm_node** %4, align 8
  %47 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %2, align 8
  %48 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @o2hb_queue_node_event(%struct.o2hb_node_event* %3, i32 %45, %struct.o2nm_node* %46, i64 %49)
  store i32 1, i32* %5, align 4
  br label %51

51:                                               ; preds = %39, %23
  br label %52

52:                                               ; preds = %51, %17
  %53 = call i32 @spin_unlock(i32* @o2hb_live_lock)
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @o2hb_run_event_list(%struct.o2hb_node_event* %3)
  br label %58

58:                                               ; preds = %56, %52
  %59 = load %struct.o2nm_node*, %struct.o2nm_node** %4, align 8
  %60 = call i32 @o2nm_node_put(%struct.o2nm_node* %59)
  br label %61

61:                                               ; preds = %58, %16
  ret void
}

declare dso_local i32 @LIST_HEAD_INIT(i32) #1

declare dso_local %struct.o2nm_node* @o2nm_get_node_by_num(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @o2hb_queue_node_event(%struct.o2hb_node_event*, i32, %struct.o2nm_node*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @o2hb_run_event_list(%struct.o2hb_node_event*) #1

declare dso_local i32 @o2nm_node_put(%struct.o2nm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
