; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_get_active.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_get_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32, i32 }

@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kernfs_node* @kernfs_get_active(%struct.kernfs_node* %0) #0 {
  %2 = alloca %struct.kernfs_node*, align 8
  %3 = alloca %struct.kernfs_node*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %3, align 8
  %4 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %5 = icmp ne %struct.kernfs_node* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.kernfs_node* null, %struct.kernfs_node** %2, align 8
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %13 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %12, i32 0, i32 1
  %14 = call i32 @atomic_inc_unless_negative(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store %struct.kernfs_node* null, %struct.kernfs_node** %2, align 8
  br label %28

17:                                               ; preds = %11
  %18 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %19 = call i64 @kernfs_lockdep(%struct.kernfs_node* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %23 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %22, i32 0, i32 0
  %24 = load i32, i32* @_RET_IP_, align 4
  %25 = call i32 @rwsem_acquire_read(i32* %23, i32 0, i32 1, i32 %24)
  br label %26

26:                                               ; preds = %21, %17
  %27 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  store %struct.kernfs_node* %27, %struct.kernfs_node** %2, align 8
  br label %28

28:                                               ; preds = %26, %16, %10
  %29 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  ret %struct.kernfs_node* %29
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_inc_unless_negative(i32*) #1

declare dso_local i64 @kernfs_lockdep(%struct.kernfs_node*) #1

declare dso_local i32 @rwsem_acquire_read(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
