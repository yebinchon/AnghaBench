; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_inode.c_iput.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_inode.c_iput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i64 }

@I_CLEAR = common dso_local global i32 0, align 4
@I_DIRTY_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iput(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %3 = load %struct.inode*, %struct.inode** %2, align 8
  %4 = icmp ne %struct.inode* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %46

6:                                                ; preds = %1
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @I_CLEAR, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @BUG_ON(i32 %11)
  br label %13

13:                                               ; preds = %32, %6
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 2
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = call i64 @atomic_dec_and_lock(i32* %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %13
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @I_DIRTY_TIME, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load %struct.inode*, %struct.inode** %2, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 2
  %35 = call i32 @atomic_inc(i32* %34)
  %36 = load %struct.inode*, %struct.inode** %2, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load %struct.inode*, %struct.inode** %2, align 8
  %40 = call i32 @trace_writeback_lazytime_iput(%struct.inode* %39)
  %41 = load %struct.inode*, %struct.inode** %2, align 8
  %42 = call i32 @mark_inode_dirty_sync(%struct.inode* %41)
  br label %13

43:                                               ; preds = %25, %20
  %44 = load %struct.inode*, %struct.inode** %2, align 8
  %45 = call i32 @iput_final(%struct.inode* %44)
  br label %46

46:                                               ; preds = %5, %43, %13
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @trace_writeback_lazytime_iput(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty_sync(%struct.inode*) #1

declare dso_local i32 @iput_final(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
