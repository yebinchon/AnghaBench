; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c___xfs_rmap_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c___xfs_rmap_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_bmbt_irec = type { i32, i32, i32, i32 }
%struct.xfs_rmap_intent = type { i32, i32, i32, %struct.xfs_bmbt_irec, i32 }

@KM_NOFS = common dso_local global i32 0, align 4
@XFS_DEFER_OPS_TYPE_RMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_trans*, i32, i32, i32, %struct.xfs_bmbt_irec*)* @__xfs_rmap_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xfs_rmap_add(%struct.xfs_trans* %0, i32 %1, i32 %2, i32 %3, %struct.xfs_bmbt_irec* %4) #0 {
  %6 = alloca %struct.xfs_trans*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfs_bmbt_irec*, align 8
  %11 = alloca %struct.xfs_rmap_intent*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.xfs_bmbt_irec* %4, %struct.xfs_bmbt_irec** %10, align 8
  %12 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %13 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %16 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %10, align 8
  %19 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @XFS_FSB_TO_AGNO(i32 %17, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %24 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %10, align 8
  %27 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @XFS_FSB_TO_AGBNO(i32 %25, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %10, align 8
  %33 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %10, align 8
  %36 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %10, align 8
  %39 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @trace_xfs_rmap_defer(i32 %14, i32 %21, i32 %22, i32 %29, i32 %30, i32 %31, i32 %34, i32 %37, i32 %40)
  %42 = load i32, i32* @KM_NOFS, align 4
  %43 = call %struct.xfs_rmap_intent* @kmem_alloc(i32 32, i32 %42)
  store %struct.xfs_rmap_intent* %43, %struct.xfs_rmap_intent** %11, align 8
  %44 = load %struct.xfs_rmap_intent*, %struct.xfs_rmap_intent** %11, align 8
  %45 = getelementptr inbounds %struct.xfs_rmap_intent, %struct.xfs_rmap_intent* %44, i32 0, i32 2
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.xfs_rmap_intent*, %struct.xfs_rmap_intent** %11, align 8
  %49 = getelementptr inbounds %struct.xfs_rmap_intent, %struct.xfs_rmap_intent* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.xfs_rmap_intent*, %struct.xfs_rmap_intent** %11, align 8
  %52 = getelementptr inbounds %struct.xfs_rmap_intent, %struct.xfs_rmap_intent* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.xfs_rmap_intent*, %struct.xfs_rmap_intent** %11, align 8
  %55 = getelementptr inbounds %struct.xfs_rmap_intent, %struct.xfs_rmap_intent* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.xfs_rmap_intent*, %struct.xfs_rmap_intent** %11, align 8
  %57 = getelementptr inbounds %struct.xfs_rmap_intent, %struct.xfs_rmap_intent* %56, i32 0, i32 3
  %58 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %10, align 8
  %59 = bitcast %struct.xfs_bmbt_irec* %57 to i8*
  %60 = bitcast %struct.xfs_bmbt_irec* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 16, i1 false)
  %61 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %62 = load i32, i32* @XFS_DEFER_OPS_TYPE_RMAP, align 4
  %63 = load %struct.xfs_rmap_intent*, %struct.xfs_rmap_intent** %11, align 8
  %64 = getelementptr inbounds %struct.xfs_rmap_intent, %struct.xfs_rmap_intent* %63, i32 0, i32 2
  %65 = call i32 @xfs_defer_add(%struct.xfs_trans* %61, i32 %62, i32* %64)
  ret void
}

declare dso_local i32 @trace_xfs_rmap_defer(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XFS_FSB_TO_AGNO(i32, i32) #1

declare dso_local i32 @XFS_FSB_TO_AGBNO(i32, i32) #1

declare dso_local %struct.xfs_rmap_intent* @kmem_alloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @xfs_defer_add(%struct.xfs_trans*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
