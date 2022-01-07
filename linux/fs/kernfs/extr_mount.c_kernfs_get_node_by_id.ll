; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_mount.c_kernfs_get_node_by_id.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_mount.c_kernfs_get_node_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.kernfs_root = type { i32 }
%union.kernfs_node_id = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kernfs_node* @kernfs_get_node_by_id(%struct.kernfs_root* %0, %union.kernfs_node_id* %1) #0 {
  %3 = alloca %struct.kernfs_node*, align 8
  %4 = alloca %struct.kernfs_root*, align 8
  %5 = alloca %union.kernfs_node_id*, align 8
  %6 = alloca %struct.kernfs_node*, align 8
  store %struct.kernfs_root* %0, %struct.kernfs_root** %4, align 8
  store %union.kernfs_node_id* %1, %union.kernfs_node_id** %5, align 8
  %7 = load %struct.kernfs_root*, %struct.kernfs_root** %4, align 8
  %8 = load %union.kernfs_node_id*, %union.kernfs_node_id** %5, align 8
  %9 = bitcast %union.kernfs_node_id* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.kernfs_node* @kernfs_find_and_get_node_by_ino(%struct.kernfs_root* %7, i32 %10)
  store %struct.kernfs_node* %11, %struct.kernfs_node** %6, align 8
  %12 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %13 = icmp ne %struct.kernfs_node* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.kernfs_node* null, %struct.kernfs_node** %3, align 8
  br label %29

15:                                               ; preds = %2
  %16 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %17 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %union.kernfs_node_id*, %union.kernfs_node_id** %5, align 8
  %21 = bitcast %union.kernfs_node_id* %20 to i64*
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %26 = call i32 @kernfs_put(%struct.kernfs_node* %25)
  store %struct.kernfs_node* null, %struct.kernfs_node** %3, align 8
  br label %29

27:                                               ; preds = %15
  %28 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  store %struct.kernfs_node* %28, %struct.kernfs_node** %3, align 8
  br label %29

29:                                               ; preds = %27, %24, %14
  %30 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  ret %struct.kernfs_node* %30
}

declare dso_local %struct.kernfs_node* @kernfs_find_and_get_node_by_ino(%struct.kernfs_root*, i32) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
