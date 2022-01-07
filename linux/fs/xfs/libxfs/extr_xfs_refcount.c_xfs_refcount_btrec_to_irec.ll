; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_refcount.c_xfs_refcount_btrec_to_irec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_refcount.c_xfs_refcount_btrec_to_irec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.xfs_btree_rec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.xfs_refcount_irec = type { i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_refcount_btrec_to_irec(%union.xfs_btree_rec* %0, %struct.xfs_refcount_irec* %1) #0 {
  %3 = alloca %union.xfs_btree_rec*, align 8
  %4 = alloca %struct.xfs_refcount_irec*, align 8
  store %union.xfs_btree_rec* %0, %union.xfs_btree_rec** %3, align 8
  store %struct.xfs_refcount_irec* %1, %struct.xfs_refcount_irec** %4, align 8
  %5 = load %union.xfs_btree_rec*, %union.xfs_btree_rec** %3, align 8
  %6 = bitcast %union.xfs_btree_rec* %5 to %struct.TYPE_2__*
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i8* @be32_to_cpu(i32 %8)
  %10 = load %struct.xfs_refcount_irec*, %struct.xfs_refcount_irec** %4, align 8
  %11 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  %12 = load %union.xfs_btree_rec*, %union.xfs_btree_rec** %3, align 8
  %13 = bitcast %union.xfs_btree_rec* %12 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @be32_to_cpu(i32 %15)
  %17 = load %struct.xfs_refcount_irec*, %struct.xfs_refcount_irec** %4, align 8
  %18 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load %union.xfs_btree_rec*, %union.xfs_btree_rec** %3, align 8
  %20 = bitcast %union.xfs_btree_rec* %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @be32_to_cpu(i32 %22)
  %24 = load %struct.xfs_refcount_irec*, %struct.xfs_refcount_irec** %4, align 8
  %25 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  ret void
}

declare dso_local i8* @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
