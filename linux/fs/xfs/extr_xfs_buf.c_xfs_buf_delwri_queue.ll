; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_delwri_queue.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_delwri_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32, i32, i32 }
%struct.list_head = type { i32 }

@XBF_READ = common dso_local global i32 0, align 4
@_XBF_DELWRI_Q = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_buf_delwri_queue(%struct.xfs_buf* %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca %struct.list_head*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %6 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %7 = call i32 @xfs_buf_islocked(%struct.xfs_buf* %6)
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %10 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @XBF_READ, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %19 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @_XBF_DELWRI_Q, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %26 = load i32, i32* @_RET_IP_, align 4
  %27 = call i32 @trace_xfs_buf_delwri_queued(%struct.xfs_buf* %25, i32 %26)
  store i32 0, i32* %3, align 4
  br label %50

28:                                               ; preds = %2
  %29 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %30 = load i32, i32* @_RET_IP_, align 4
  %31 = call i32 @trace_xfs_buf_delwri_queue(%struct.xfs_buf* %29, i32 %30)
  %32 = load i32, i32* @_XBF_DELWRI_Q, align 4
  %33 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %34 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %38 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %37, i32 0, i32 1
  %39 = call i64 @list_empty(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %28
  %42 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %43 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %42, i32 0, i32 2
  %44 = call i32 @atomic_inc(i32* %43)
  %45 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %46 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %45, i32 0, i32 1
  %47 = load %struct.list_head*, %struct.list_head** %5, align 8
  %48 = call i32 @list_add_tail(i32* %46, %struct.list_head* %47)
  br label %49

49:                                               ; preds = %41, %28
  store i32 1, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %24
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_buf_islocked(%struct.xfs_buf*) #1

declare dso_local i32 @trace_xfs_buf_delwri_queued(%struct.xfs_buf*, i32) #1

declare dso_local i32 @trace_xfs_buf_delwri_queue(%struct.xfs_buf*, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
