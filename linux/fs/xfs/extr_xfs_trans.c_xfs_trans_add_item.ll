; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans.c_xfs_trans_add_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans.c_xfs_trans_add_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.xfs_log_item = type { i64, i32, i32, %struct.TYPE_2__* }

@XFS_LI_DIRTY = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_trans_add_item(%struct.xfs_trans* %0, %struct.xfs_log_item* %1) #0 {
  %3 = alloca %struct.xfs_trans*, align 8
  %4 = alloca %struct.xfs_log_item*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %3, align 8
  store %struct.xfs_log_item* %1, %struct.xfs_log_item** %4, align 8
  %5 = load %struct.xfs_log_item*, %struct.xfs_log_item** %4, align 8
  %6 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load %struct.xfs_trans*, %struct.xfs_trans** %3, align 8
  %9 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp eq %struct.TYPE_2__* %7, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load %struct.xfs_log_item*, %struct.xfs_log_item** %4, align 8
  %15 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.xfs_trans*, %struct.xfs_trans** %3, align 8
  %18 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %16, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.xfs_log_item*, %struct.xfs_log_item** %4, align 8
  %26 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %25, i32 0, i32 1
  %27 = call i32 @list_empty(i32* %26)
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load i32, i32* @XFS_LI_DIRTY, align 4
  %30 = load %struct.xfs_log_item*, %struct.xfs_log_item** %4, align 8
  %31 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %30, i32 0, i32 2
  %32 = call i32 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load %struct.xfs_log_item*, %struct.xfs_log_item** %4, align 8
  %38 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %37, i32 0, i32 1
  %39 = load %struct.xfs_trans*, %struct.xfs_trans** %3, align 8
  %40 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %39, i32 0, i32 0
  %41 = call i32 @list_add_tail(i32* %38, i32* %40)
  %42 = load %struct.xfs_trans*, %struct.xfs_trans** %3, align 8
  %43 = load i32, i32* @_RET_IP_, align 4
  %44 = call i32 @trace_xfs_trans_add_item(%struct.xfs_trans* %42, i32 %43)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @trace_xfs_trans_add_item(%struct.xfs_trans*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
