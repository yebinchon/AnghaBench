; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_unlock_global_qf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_unlock_global_qf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_mem_dqinfo = type { i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@dq_data_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_unlock_global_qf(%struct.ocfs2_mem_dqinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %4 = alloca i32, align 4
  store %struct.ocfs2_mem_dqinfo* %0, %struct.ocfs2_mem_dqinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %3, align 8
  %9 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_2__* @OCFS2_I(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @up_write(i32* %12)
  %14 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %3, align 8
  %15 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @inode_unlock(i32 %16)
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %3, align 8
  %20 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_2__* @OCFS2_I(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @up_read(i32* %23)
  br label %25

25:                                               ; preds = %18, %7
  %26 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %3, align 8
  %27 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @ocfs2_inode_unlock(i32 %28, i32 %29)
  %31 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %3, align 8
  %32 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @brelse(i32* %33)
  %35 = call i32 @spin_lock(i32* @dq_data_lock)
  %36 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %3, align 8
  %37 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %25
  %42 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %3, align 8
  %43 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %41, %25
  %45 = call i32 @spin_unlock(i32* @dq_data_lock)
  ret void
}

declare dso_local i32 @up_write(i32*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(i32) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(i32, i32) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
