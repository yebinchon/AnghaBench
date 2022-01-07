; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf_item.c_xfs_buf_item_relse.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf_item.c_xfs_buf_item_relse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, %struct.xfs_buf_log_item* }
%struct.xfs_buf_log_item = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@_RET_IP_ = common dso_local global i32 0, align 4
@XFS_LI_IN_AIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_buf_item_relse(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.xfs_buf_log_item*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %6 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  store %struct.xfs_buf_log_item* %6, %struct.xfs_buf_log_item** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = load i32, i32* @_RET_IP_, align 4
  %9 = call i32 @trace_xfs_buf_item_relse(%struct.TYPE_7__* %7, i32 %8)
  %10 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %3, align 8
  %11 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @XFS_LI_IN_AIL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  store %struct.xfs_buf_log_item* null, %struct.xfs_buf_log_item** %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = call i64 @list_empty(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = call i32 @xfs_buf_rele(%struct.TYPE_7__* %30)
  %32 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %3, align 8
  %33 = call i32 @xfs_buf_item_free(%struct.xfs_buf_log_item* %32)
  ret void
}

declare dso_local i32 @trace_xfs_buf_item_relse(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @xfs_buf_rele(%struct.TYPE_7__*) #1

declare dso_local i32 @xfs_buf_item_free(%struct.xfs_buf_log_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
