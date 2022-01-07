; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_delwri_pushbuf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_delwri_pushbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32, i32 }
%struct.list_head = type { i32 }

@submit_list = common dso_local global i32 0, align 4
@_XBF_DELWRI_Q = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_buf_delwri_pushbuf(%struct.xfs_buf* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.xfs_buf*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i32, align 4
  store %struct.xfs_buf* %0, %struct.xfs_buf** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %6 = load i32, i32* @submit_list, align 4
  %7 = call i32 @LIST_HEAD(i32 %6)
  %8 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %9 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @_XBF_DELWRI_Q, align 4
  %12 = and i32 %10, %11
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %15 = load i32, i32* @_RET_IP_, align 4
  %16 = call i32 @trace_xfs_buf_delwri_pushbuf(%struct.xfs_buf* %14, i32 %15)
  %17 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %18 = call i32 @xfs_buf_lock(%struct.xfs_buf* %17)
  %19 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %20 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %19, i32 0, i32 1
  %21 = call i32 @list_move(i32* %20, i32* @submit_list)
  %22 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %23 = call i32 @xfs_buf_unlock(%struct.xfs_buf* %22)
  %24 = load %struct.list_head*, %struct.list_head** %4, align 8
  %25 = call i32 @xfs_buf_delwri_submit_buffers(i32* @submit_list, %struct.list_head* %24)
  %26 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %27 = call i32 @xfs_buf_iowait(%struct.xfs_buf* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @_XBF_DELWRI_Q, align 4
  %29 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %30 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %34 = call i32 @xfs_buf_unlock(%struct.xfs_buf* %33)
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @trace_xfs_buf_delwri_pushbuf(%struct.xfs_buf*, i32) #1

declare dso_local i32 @xfs_buf_lock(%struct.xfs_buf*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @xfs_buf_unlock(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_delwri_submit_buffers(i32*, %struct.list_head*) #1

declare dso_local i32 @xfs_buf_iowait(%struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
