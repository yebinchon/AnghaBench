; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_get_node_by_ip.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_get_node_by_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2nm_cluster = type { i32 }
%struct.o2nm_node = type { i32 }

@o2nm_single_cluster = common dso_local global %struct.o2nm_cluster* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.o2nm_node* @o2nm_get_node_by_ip(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.o2nm_node*, align 8
  %4 = alloca %struct.o2nm_cluster*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.o2nm_node* null, %struct.o2nm_node** %3, align 8
  %5 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** @o2nm_single_cluster, align 8
  store %struct.o2nm_cluster* %5, %struct.o2nm_cluster** %4, align 8
  %6 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %4, align 8
  %7 = icmp eq %struct.o2nm_cluster* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %26

9:                                                ; preds = %1
  %10 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %4, align 8
  %11 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %10, i32 0, i32 0
  %12 = call i32 @read_lock(i32* %11)
  %13 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %4, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call %struct.o2nm_node* @o2nm_node_ip_tree_lookup(%struct.o2nm_cluster* %13, i32 %14, i32* null, i32* null)
  store %struct.o2nm_node* %15, %struct.o2nm_node** %3, align 8
  %16 = load %struct.o2nm_node*, %struct.o2nm_node** %3, align 8
  %17 = icmp ne %struct.o2nm_node* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %9
  %19 = load %struct.o2nm_node*, %struct.o2nm_node** %3, align 8
  %20 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %19, i32 0, i32 0
  %21 = call i32 @config_item_get(i32* %20)
  br label %22

22:                                               ; preds = %18, %9
  %23 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %4, align 8
  %24 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %23, i32 0, i32 0
  %25 = call i32 @read_unlock(i32* %24)
  br label %26

26:                                               ; preds = %22, %8
  %27 = load %struct.o2nm_node*, %struct.o2nm_node** %3, align 8
  ret %struct.o2nm_node* %27
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.o2nm_node* @o2nm_node_ip_tree_lookup(%struct.o2nm_cluster*, i32, i32*, i32*) #1

declare dso_local i32 @config_item_get(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
