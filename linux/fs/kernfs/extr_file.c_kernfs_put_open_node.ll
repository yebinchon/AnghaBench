; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_put_open_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_put_open_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kernfs_open_node* }
%struct.kernfs_open_node = type { i32 }
%struct.kernfs_open_file = type { i32 }

@kernfs_open_file_mutex = common dso_local global i32 0, align 4
@kernfs_open_node_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kernfs_node*, %struct.kernfs_open_file*)* @kernfs_put_open_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernfs_put_open_node(%struct.kernfs_node* %0, %struct.kernfs_open_file* %1) #0 {
  %3 = alloca %struct.kernfs_node*, align 8
  %4 = alloca %struct.kernfs_open_file*, align 8
  %5 = alloca %struct.kernfs_open_node*, align 8
  %6 = alloca i64, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %3, align 8
  store %struct.kernfs_open_file* %1, %struct.kernfs_open_file** %4, align 8
  %7 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %8 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %9, align 8
  store %struct.kernfs_open_node* %10, %struct.kernfs_open_node** %5, align 8
  %11 = call i32 @mutex_lock(i32* @kernfs_open_file_mutex)
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* @kernfs_open_node_lock, i64 %12)
  %14 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %4, align 8
  %15 = icmp ne %struct.kernfs_open_file* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %4, align 8
  %18 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %17, i32 0, i32 0
  %19 = call i32 @list_del(i32* %18)
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %5, align 8
  %22 = getelementptr inbounds %struct.kernfs_open_node, %struct.kernfs_open_node* %21, i32 0, i32 0
  %23 = call i64 @atomic_dec_and_test(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %27 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.kernfs_open_node* null, %struct.kernfs_open_node** %28, align 8
  br label %30

29:                                               ; preds = %20
  store %struct.kernfs_open_node* null, %struct.kernfs_open_node** %5, align 8
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* @kernfs_open_node_lock, i64 %31)
  %33 = call i32 @mutex_unlock(i32* @kernfs_open_file_mutex)
  %34 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %5, align 8
  %35 = call i32 @kfree(%struct.kernfs_open_node* %34)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.kernfs_open_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
