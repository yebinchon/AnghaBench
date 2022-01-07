; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_refcount.c___xfs_refcount_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_refcount.c___xfs_refcount_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_refcount_intent = type { i32, i32, i32, i32 }

@KM_NOFS = common dso_local global i32 0, align 4
@XFS_DEFER_OPS_TYPE_REFCOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_trans*, i32, i32, i32)* @__xfs_refcount_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xfs_refcount_add(%struct.xfs_trans* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xfs_trans*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_refcount_intent*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.xfs_trans*, %struct.xfs_trans** %5, align 8
  %11 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.xfs_trans*, %struct.xfs_trans** %5, align 8
  %14 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @XFS_FSB_TO_AGNO(i32 %15, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.xfs_trans*, %struct.xfs_trans** %5, align 8
  %20 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @XFS_FSB_TO_AGBNO(i32 %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @trace_xfs_refcount_defer(i32 %12, i32 %17, i32 %18, i32 %23, i32 %24)
  %26 = load i32, i32* @KM_NOFS, align 4
  %27 = call %struct.xfs_refcount_intent* @kmem_alloc(i32 16, i32 %26)
  store %struct.xfs_refcount_intent* %27, %struct.xfs_refcount_intent** %9, align 8
  %28 = load %struct.xfs_refcount_intent*, %struct.xfs_refcount_intent** %9, align 8
  %29 = getelementptr inbounds %struct.xfs_refcount_intent, %struct.xfs_refcount_intent* %28, i32 0, i32 1
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.xfs_refcount_intent*, %struct.xfs_refcount_intent** %9, align 8
  %33 = getelementptr inbounds %struct.xfs_refcount_intent, %struct.xfs_refcount_intent* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.xfs_refcount_intent*, %struct.xfs_refcount_intent** %9, align 8
  %36 = getelementptr inbounds %struct.xfs_refcount_intent, %struct.xfs_refcount_intent* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.xfs_refcount_intent*, %struct.xfs_refcount_intent** %9, align 8
  %39 = getelementptr inbounds %struct.xfs_refcount_intent, %struct.xfs_refcount_intent* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.xfs_trans*, %struct.xfs_trans** %5, align 8
  %41 = load i32, i32* @XFS_DEFER_OPS_TYPE_REFCOUNT, align 4
  %42 = load %struct.xfs_refcount_intent*, %struct.xfs_refcount_intent** %9, align 8
  %43 = getelementptr inbounds %struct.xfs_refcount_intent, %struct.xfs_refcount_intent* %42, i32 0, i32 1
  %44 = call i32 @xfs_defer_add(%struct.xfs_trans* %40, i32 %41, i32* %43)
  ret void
}

declare dso_local i32 @trace_xfs_refcount_defer(i32, i32, i32, i32, i32) #1

declare dso_local i32 @XFS_FSB_TO_AGNO(i32, i32) #1

declare dso_local i32 @XFS_FSB_TO_AGBNO(i32, i32) #1

declare dso_local %struct.xfs_refcount_intent* @kmem_alloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @xfs_defer_add(%struct.xfs_trans*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
