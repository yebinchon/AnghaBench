; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_get_node_by_num.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_get_node_by_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.o2nm_node** }
%struct.o2nm_node = type { i32 }

@O2NM_MAX_NODES = common dso_local global i64 0, align 8
@o2nm_single_cluster = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.o2nm_node* @o2nm_get_node_by_num(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.o2nm_node*, align 8
  store i64 %0, i64* %2, align 8
  store %struct.o2nm_node* null, %struct.o2nm_node** %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @O2NM_MAX_NODES, align 8
  %6 = icmp uge i64 %4, %5
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @o2nm_single_cluster, align 8
  %9 = icmp eq %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %1
  br label %31

11:                                               ; preds = %7
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @o2nm_single_cluster, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @read_lock(i32* %13)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @o2nm_single_cluster, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.o2nm_node**, %struct.o2nm_node*** %16, align 8
  %18 = load i64, i64* %2, align 8
  %19 = getelementptr inbounds %struct.o2nm_node*, %struct.o2nm_node** %17, i64 %18
  %20 = load %struct.o2nm_node*, %struct.o2nm_node** %19, align 8
  store %struct.o2nm_node* %20, %struct.o2nm_node** %3, align 8
  %21 = load %struct.o2nm_node*, %struct.o2nm_node** %3, align 8
  %22 = icmp ne %struct.o2nm_node* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %11
  %24 = load %struct.o2nm_node*, %struct.o2nm_node** %3, align 8
  %25 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %24, i32 0, i32 0
  %26 = call i32 @config_item_get(i32* %25)
  br label %27

27:                                               ; preds = %23, %11
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @o2nm_single_cluster, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @read_unlock(i32* %29)
  br label %31

31:                                               ; preds = %27, %10
  %32 = load %struct.o2nm_node*, %struct.o2nm_node** %3, align 8
  ret %struct.o2nm_node* %32
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @config_item_get(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
