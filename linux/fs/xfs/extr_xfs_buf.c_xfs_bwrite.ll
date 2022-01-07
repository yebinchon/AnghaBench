; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_bwrite.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_bwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32, i32 }

@XBF_WRITE = common dso_local global i32 0, align 4
@XBF_ASYNC = common dso_local global i32 0, align 4
@XBF_READ = common dso_local global i32 0, align 4
@_XBF_DELWRI_Q = common dso_local global i32 0, align 4
@XBF_WRITE_FAIL = common dso_local global i32 0, align 4
@XBF_DONE = common dso_local global i32 0, align 4
@SHUTDOWN_META_IO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_bwrite(%struct.xfs_buf* %0) #0 {
  %2 = alloca %struct.xfs_buf*, align 8
  %3 = alloca i32, align 4
  store %struct.xfs_buf* %0, %struct.xfs_buf** %2, align 8
  %4 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %5 = call i32 @xfs_buf_islocked(%struct.xfs_buf* %4)
  %6 = call i32 @ASSERT(i32 %5)
  %7 = load i32, i32* @XBF_WRITE, align 4
  %8 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %9 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @XBF_ASYNC, align 4
  %13 = load i32, i32* @XBF_READ, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @_XBF_DELWRI_Q, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @XBF_WRITE_FAIL, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @XBF_DONE, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %23 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %27 = call i32 @xfs_buf_submit(%struct.xfs_buf* %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %32 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SHUTDOWN_META_IO_ERROR, align 4
  %35 = call i32 @xfs_force_shutdown(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %30, %1
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_buf_islocked(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_submit(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_force_shutdown(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
