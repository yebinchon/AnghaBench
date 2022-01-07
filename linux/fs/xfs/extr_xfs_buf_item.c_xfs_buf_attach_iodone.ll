; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf_item.c_xfs_buf_attach_iodone.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf_item.c_xfs_buf_attach_iodone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32*, i32 }
%struct.xfs_log_item = type { void (%struct.xfs_buf.0*, %struct.xfs_log_item*)*, i32 }
%struct.xfs_buf.0 = type opaque

@xfs_buf_iodone_callbacks = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_buf_attach_iodone(%struct.xfs_buf* %0, void (%struct.xfs_buf*, %struct.xfs_log_item*)* %1, %struct.xfs_log_item* %2) #0 {
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca void (%struct.xfs_buf*, %struct.xfs_log_item*)*, align 8
  %6 = alloca %struct.xfs_log_item*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %4, align 8
  store void (%struct.xfs_buf*, %struct.xfs_log_item*)* %1, void (%struct.xfs_buf*, %struct.xfs_log_item*)** %5, align 8
  store %struct.xfs_log_item* %2, %struct.xfs_log_item** %6, align 8
  %7 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %8 = call i32 @xfs_buf_islocked(%struct.xfs_buf* %7)
  %9 = call i32 @ASSERT(i32 %8)
  %10 = load void (%struct.xfs_buf*, %struct.xfs_log_item*)*, void (%struct.xfs_buf*, %struct.xfs_log_item*)** %5, align 8
  %11 = bitcast void (%struct.xfs_buf*, %struct.xfs_log_item*)* %10 to void (%struct.xfs_buf.0*, %struct.xfs_log_item*)*
  %12 = load %struct.xfs_log_item*, %struct.xfs_log_item** %6, align 8
  %13 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %12, i32 0, i32 0
  store void (%struct.xfs_buf.0*, %struct.xfs_log_item*)* %11, void (%struct.xfs_buf.0*, %struct.xfs_log_item*)** %13, align 8
  %14 = load %struct.xfs_log_item*, %struct.xfs_log_item** %6, align 8
  %15 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %14, i32 0, i32 1
  %16 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %17 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %16, i32 0, i32 1
  %18 = call i32 @list_add_tail(i32* %15, i32* %17)
  %19 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %20 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %3
  %24 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %25 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32*, i32** @xfs_buf_iodone_callbacks, align 8
  %28 = icmp eq i32* %26, %27
  br label %29

29:                                               ; preds = %23, %3
  %30 = phi i1 [ true, %3 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load i32*, i32** @xfs_buf_iodone_callbacks, align 8
  %34 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %35 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_buf_islocked(%struct.xfs_buf*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
