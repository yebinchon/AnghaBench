; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32, i32, i32, i32 }

@_RET_IP_ = common dso_local global i32 0, align 4
@XBF_STALE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_buf_lock(%struct.xfs_buf* %0) #0 {
  %2 = alloca %struct.xfs_buf*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %2, align 8
  %3 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %4 = load i32, i32* @_RET_IP_, align 4
  %5 = call i32 @trace_xfs_buf_lock(%struct.xfs_buf* %3, i32 %4)
  %6 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %7 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %6, i32 0, i32 3
  %8 = call i64 @atomic_read(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %12 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @XBF_STALE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %19 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @xfs_log_force(i32 %20, i32 0)
  br label %22

22:                                               ; preds = %17, %10, %1
  %23 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %24 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %23, i32 0, i32 1
  %25 = call i32 @down(i32* %24)
  %26 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %27 = load i32, i32* @_RET_IP_, align 4
  %28 = call i32 @trace_xfs_buf_lock_done(%struct.xfs_buf* %26, i32 %27)
  ret void
}

declare dso_local i32 @trace_xfs_buf_lock(%struct.xfs_buf*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @xfs_log_force(i32, i32) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @trace_xfs_buf_lock_done(%struct.xfs_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
