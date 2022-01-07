; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_get_rec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_get_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { i32* }
%union.xfs_btree_rec = type { i32 }
%struct.xfs_btree_block = type { i32 }
%struct.xfs_buf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_btree_get_rec(%struct.xfs_btree_cur* %0, %union.xfs_btree_rec** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_btree_cur*, align 8
  %6 = alloca %union.xfs_btree_rec**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.xfs_btree_block*, align 8
  %9 = alloca %struct.xfs_buf*, align 8
  %10 = alloca i32, align 4
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %5, align 8
  store %union.xfs_btree_rec** %1, %union.xfs_btree_rec*** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %12 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %17 = call %struct.xfs_btree_block* @xfs_btree_get_block(%struct.xfs_btree_cur* %16, i32 0, %struct.xfs_buf** %9)
  store %struct.xfs_btree_block* %17, %struct.xfs_btree_block** %8, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %8, align 8
  %20 = call i32 @xfs_btree_get_numrecs(%struct.xfs_btree_block* %19)
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %3
  %26 = load i32*, i32** %7, align 8
  store i32 0, i32* %26, align 4
  store i32 0, i32* %4, align 4
  br label %34

27:                                               ; preds = %22
  %28 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %8, align 8
  %31 = call %union.xfs_btree_rec* @xfs_btree_rec_addr(%struct.xfs_btree_cur* %28, i32 %29, %struct.xfs_btree_block* %30)
  %32 = load %union.xfs_btree_rec**, %union.xfs_btree_rec*** %6, align 8
  store %union.xfs_btree_rec* %31, %union.xfs_btree_rec** %32, align 8
  %33 = load i32*, i32** %7, align 8
  store i32 1, i32* %33, align 4
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %27, %25
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.xfs_btree_block* @xfs_btree_get_block(%struct.xfs_btree_cur*, i32, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_btree_get_numrecs(%struct.xfs_btree_block*) #1

declare dso_local %union.xfs_btree_rec* @xfs_btree_rec_addr(%struct.xfs_btree_cur*, i32, %struct.xfs_btree_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
