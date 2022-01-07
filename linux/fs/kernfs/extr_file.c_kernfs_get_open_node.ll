; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_get_open_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_get_open_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kernfs_open_node* }
%struct.kernfs_open_node = type { i32, i32, i32, i32 }
%struct.kernfs_open_file = type { i32 }

@kernfs_open_file_mutex = common dso_local global i32 0, align 4
@kernfs_open_node_lock = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_node*, %struct.kernfs_open_file*)* @kernfs_get_open_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kernfs_get_open_node(%struct.kernfs_node* %0, %struct.kernfs_open_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kernfs_node*, align 8
  %5 = alloca %struct.kernfs_open_file*, align 8
  %6 = alloca %struct.kernfs_open_node*, align 8
  %7 = alloca %struct.kernfs_open_node*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %4, align 8
  store %struct.kernfs_open_file* %1, %struct.kernfs_open_file** %5, align 8
  store %struct.kernfs_open_node* null, %struct.kernfs_open_node** %7, align 8
  br label %8

8:                                                ; preds = %56, %2
  %9 = call i32 @mutex_lock(i32* @kernfs_open_file_mutex)
  %10 = call i32 @spin_lock_irq(i32* @kernfs_open_node_lock)
  %11 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %12 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %13, align 8
  %15 = icmp ne %struct.kernfs_open_node* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %8
  %17 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %7, align 8
  %18 = icmp ne %struct.kernfs_open_node* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %7, align 8
  %21 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %22 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.kernfs_open_node* %20, %struct.kernfs_open_node** %23, align 8
  store %struct.kernfs_open_node* null, %struct.kernfs_open_node** %7, align 8
  br label %24

24:                                               ; preds = %19, %16, %8
  %25 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %26 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %27, align 8
  store %struct.kernfs_open_node* %28, %struct.kernfs_open_node** %6, align 8
  %29 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %6, align 8
  %30 = icmp ne %struct.kernfs_open_node* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %6, align 8
  %33 = getelementptr inbounds %struct.kernfs_open_node, %struct.kernfs_open_node* %32, i32 0, i32 3
  %34 = call i32 @atomic_inc(i32* %33)
  %35 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %36 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %35, i32 0, i32 0
  %37 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %6, align 8
  %38 = getelementptr inbounds %struct.kernfs_open_node, %struct.kernfs_open_node* %37, i32 0, i32 0
  %39 = call i32 @list_add_tail(i32* %36, i32* %38)
  br label %40

40:                                               ; preds = %31, %24
  %41 = call i32 @spin_unlock_irq(i32* @kernfs_open_node_lock)
  %42 = call i32 @mutex_unlock(i32* @kernfs_open_file_mutex)
  %43 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %6, align 8
  %44 = icmp ne %struct.kernfs_open_node* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %7, align 8
  %47 = call i32 @kfree(%struct.kernfs_open_node* %46)
  store i32 0, i32* %3, align 4
  br label %69

48:                                               ; preds = %40
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.kernfs_open_node* @kmalloc(i32 16, i32 %49)
  store %struct.kernfs_open_node* %50, %struct.kernfs_open_node** %7, align 8
  %51 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %7, align 8
  %52 = icmp ne %struct.kernfs_open_node* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %69

56:                                               ; preds = %48
  %57 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %7, align 8
  %58 = getelementptr inbounds %struct.kernfs_open_node, %struct.kernfs_open_node* %57, i32 0, i32 3
  %59 = call i32 @atomic_set(i32* %58, i32 0)
  %60 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %7, align 8
  %61 = getelementptr inbounds %struct.kernfs_open_node, %struct.kernfs_open_node* %60, i32 0, i32 2
  %62 = call i32 @atomic_set(i32* %61, i32 1)
  %63 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %7, align 8
  %64 = getelementptr inbounds %struct.kernfs_open_node, %struct.kernfs_open_node* %63, i32 0, i32 1
  %65 = call i32 @init_waitqueue_head(i32* %64)
  %66 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %7, align 8
  %67 = getelementptr inbounds %struct.kernfs_open_node, %struct.kernfs_open_node* %66, i32 0, i32 0
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  br label %8

69:                                               ; preds = %53, %45
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.kernfs_open_node*) #1

declare dso_local %struct.kernfs_open_node* @kmalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
