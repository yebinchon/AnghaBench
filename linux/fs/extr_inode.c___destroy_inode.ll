; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_inode.c___destroy_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_inode.c___destroy_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@nr_inodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__destroy_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %3 = load %struct.inode*, %struct.inode** %2, align 8
  %4 = call i32 @inode_has_buffers(%struct.inode* %3)
  %5 = call i32 @BUG_ON(i32 %4)
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call i32 @inode_detach_wb(%struct.inode* %6)
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call i32 @security_inode_free(%struct.inode* %8)
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = call i32 @fsnotify_inode_delete(%struct.inode* %10)
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = call i32 @locks_free_lock_context(%struct.inode* %12)
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %1
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i64 @atomic_long_read(i32* %22)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.inode*, %struct.inode** %2, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @atomic_long_dec(i32* %30)
  br label %32

32:                                               ; preds = %18, %1
  %33 = load i32, i32* @nr_inodes, align 4
  %34 = call i32 @this_cpu_dec(i32 %33)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @inode_has_buffers(%struct.inode*) #1

declare dso_local i32 @inode_detach_wb(%struct.inode*) #1

declare dso_local i32 @security_inode_free(%struct.inode*) #1

declare dso_local i32 @fsnotify_inode_delete(%struct.inode*) #1

declare dso_local i32 @locks_free_lock_context(%struct.inode*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i32 @atomic_long_dec(i32*) #1

declare dso_local i32 @this_cpu_dec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
