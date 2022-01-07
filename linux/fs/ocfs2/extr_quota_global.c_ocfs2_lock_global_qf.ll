; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_lock_global_qf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_lock_global_qf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_mem_dqinfo = type { i32, %struct.buffer_head*, i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@dq_data_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_lock_global_qf(%struct.ocfs2_mem_dqinfo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  store %struct.ocfs2_mem_dqinfo* %0, %struct.ocfs2_mem_dqinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  %8 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %9 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @ocfs2_inode_lock(i32 %10, %struct.buffer_head** %7, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %59

17:                                               ; preds = %2
  %18 = call i32 @spin_lock(i32* @dq_data_lock)
  %19 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %20 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %26 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %27 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %26, i32 0, i32 1
  store %struct.buffer_head* %25, %struct.buffer_head** %27, align 8
  br label %36

28:                                               ; preds = %17
  %29 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %30 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %31 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %30, i32 0, i32 1
  %32 = load %struct.buffer_head*, %struct.buffer_head** %31, align 8
  %33 = icmp ne %struct.buffer_head* %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON(i32 %34)
  br label %36

36:                                               ; preds = %28, %24
  %37 = call i32 @spin_unlock(i32* @dq_data_lock)
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %42 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @inode_lock(i32 %43)
  %45 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %46 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.TYPE_2__* @OCFS2_I(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @down_write(i32* %49)
  br label %58

51:                                               ; preds = %36
  %52 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %53 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.TYPE_2__* @OCFS2_I(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @down_read(i32* %56)
  br label %58

58:                                               ; preds = %51, %40
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @ocfs2_inode_lock(i32, %struct.buffer_head**, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @inode_lock(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(i32) #1

declare dso_local i32 @down_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
