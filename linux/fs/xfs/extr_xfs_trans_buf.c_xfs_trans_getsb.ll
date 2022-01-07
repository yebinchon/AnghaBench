; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_getsb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_getsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.xfs_buf_log_item*, i32* }
%struct.xfs_buf_log_item = type { i32, i32 }
%struct.xfs_mount = type { %struct.TYPE_5__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @xfs_trans_getsb(i32* %0, %struct.xfs_mount* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.xfs_buf_log_item*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.xfs_mount* %1, %struct.xfs_mount** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %12 = call %struct.TYPE_5__* @xfs_getsb(%struct.xfs_mount* %11)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %3, align 8
  br label %58

13:                                               ; preds = %2
  %14 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %15 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %6, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp eq i32* %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %13
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %24, align 8
  store %struct.xfs_buf_log_item* %25, %struct.xfs_buf_log_item** %7, align 8
  %26 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %7, align 8
  %27 = icmp ne %struct.xfs_buf_log_item* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %7, align 8
  %31 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %30, i32 0, i32 1
  %32 = call i64 @atomic_read(i32* %31)
  %33 = icmp sgt i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %7, align 8
  %37 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %7, align 8
  %41 = call i32 @trace_xfs_trans_getsb_recur(%struct.xfs_buf_log_item* %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %3, align 8
  br label %58

43:                                               ; preds = %13
  %44 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %45 = call %struct.TYPE_5__* @xfs_getsb(%struct.xfs_mount* %44)
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %6, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = icmp eq %struct.TYPE_5__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %58

49:                                               ; preds = %43
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = call i32 @_xfs_trans_bjoin(i32* %50, %struct.TYPE_5__* %51, i32 1)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %54, align 8
  %56 = call i32 @trace_xfs_trans_getsb(%struct.xfs_buf_log_item* %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %57, %struct.TYPE_5__** %3, align 8
  br label %58

58:                                               ; preds = %49, %48, %22, %10
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %59
}

declare dso_local %struct.TYPE_5__* @xfs_getsb(%struct.xfs_mount*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @trace_xfs_trans_getsb_recur(%struct.xfs_buf_log_item*) #1

declare dso_local i32 @_xfs_trans_bjoin(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @trace_xfs_trans_getsb(%struct.xfs_buf_log_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
