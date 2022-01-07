; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_find_and_get_node_by_ino.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_find_and_get_node_by_ino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.kernfs_root = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kernfs_node* @kernfs_find_and_get_node_by_ino(%struct.kernfs_root* %0, i32 %1) #0 {
  %3 = alloca %struct.kernfs_node*, align 8
  %4 = alloca %struct.kernfs_root*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernfs_node*, align 8
  store %struct.kernfs_root* %0, %struct.kernfs_root** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.kernfs_root*, %struct.kernfs_root** %4, align 8
  %9 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %8, i32 0, i32 0
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.kernfs_node* @idr_find(i32* %9, i32 %10)
  store %struct.kernfs_node* %11, %struct.kernfs_node** %6, align 8
  %12 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %13 = icmp ne %struct.kernfs_node* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %32

15:                                               ; preds = %2
  %16 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %17 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %16, i32 0, i32 1
  %18 = call i32 @atomic_inc_not_zero(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store %struct.kernfs_node* null, %struct.kernfs_node** %6, align 8
  br label %32

21:                                               ; preds = %15
  %22 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %23 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %32

29:                                               ; preds = %21
  %30 = call i32 (...) @rcu_read_unlock()
  %31 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  store %struct.kernfs_node* %31, %struct.kernfs_node** %3, align 8
  br label %36

32:                                               ; preds = %28, %20, %14
  %33 = call i32 (...) @rcu_read_unlock()
  %34 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %35 = call i32 @kernfs_put(%struct.kernfs_node* %34)
  store %struct.kernfs_node* null, %struct.kernfs_node** %3, align 8
  br label %36

36:                                               ; preds = %32, %29
  %37 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  ret %struct.kernfs_node* %37
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.kernfs_node* @idr_find(i32*, i32) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
