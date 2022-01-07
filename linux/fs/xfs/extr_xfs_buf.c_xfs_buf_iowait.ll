; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_iowait.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_iowait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32, i32, i32 }

@XBF_ASYNC = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_buf*)* @xfs_buf_iowait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_buf_iowait(%struct.xfs_buf* %0) #0 {
  %2 = alloca %struct.xfs_buf*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %2, align 8
  %3 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %4 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @XBF_ASYNC, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %13 = load i32, i32* @_RET_IP_, align 4
  %14 = call i32 @trace_xfs_buf_iowait(%struct.xfs_buf* %12, i32 %13)
  %15 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %16 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %15, i32 0, i32 2
  %17 = call i32 @wait_for_completion(i32* %16)
  %18 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %19 = load i32, i32* @_RET_IP_, align 4
  %20 = call i32 @trace_xfs_buf_iowait_done(%struct.xfs_buf* %18, i32 %19)
  %21 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %22 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  ret i32 %23
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @trace_xfs_buf_iowait(%struct.xfs_buf*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @trace_xfs_buf_iowait_done(%struct.xfs_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
