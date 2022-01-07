; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_sblock_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_sblock_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_btree_block = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@__this_address = common dso_local global i32* null, align 8
@NULLAGBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xfs_btree_sblock_verify(%struct.xfs_buf* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_btree_block*, align 8
  %8 = alloca i32, align 4
  store %struct.xfs_buf* %0, %struct.xfs_buf** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %10 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %9, i32 0, i32 0
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  store %struct.xfs_mount* %11, %struct.xfs_mount** %6, align 8
  %12 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %13 = call %struct.xfs_btree_block* @XFS_BUF_TO_BLOCK(%struct.xfs_buf* %12)
  store %struct.xfs_btree_block* %13, %struct.xfs_btree_block** %7, align 8
  %14 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %15 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @be16_to_cpu(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32*, i32** @__this_address, align 8
  store i32* %21, i32** %3, align 8
  br label %71

22:                                               ; preds = %2
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %24 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %25 = call i32 @XFS_BUF_ADDR(%struct.xfs_buf* %24)
  %26 = call i32 @xfs_daddr_to_agno(%struct.xfs_mount* %23, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %28 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @NULLAGBLOCK, align 4
  %33 = call i64 @cpu_to_be32(i32 %32)
  %34 = icmp ne i64 %31, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %22
  %36 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %39 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @be32_to_cpu(i64 %42)
  %44 = call i32 @xfs_verify_agbno(%struct.xfs_mount* %36, i32 %37, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %35
  %47 = load i32*, i32** @__this_address, align 8
  store i32* %47, i32** %3, align 8
  br label %71

48:                                               ; preds = %35, %22
  %49 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %50 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @NULLAGBLOCK, align 4
  %55 = call i64 @cpu_to_be32(i32 %54)
  %56 = icmp ne i64 %53, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %48
  %58 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %61 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @be32_to_cpu(i64 %64)
  %66 = call i32 @xfs_verify_agbno(%struct.xfs_mount* %58, i32 %59, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %57
  %69 = load i32*, i32** @__this_address, align 8
  store i32* %69, i32** %3, align 8
  br label %71

70:                                               ; preds = %57, %48
  store i32* null, i32** %3, align 8
  br label %71

71:                                               ; preds = %70, %68, %46, %20
  %72 = load i32*, i32** %3, align 8
  ret i32* %72
}

declare dso_local %struct.xfs_btree_block* @XFS_BUF_TO_BLOCK(%struct.xfs_buf*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @xfs_daddr_to_agno(%struct.xfs_mount*, i32) #1

declare dso_local i32 @XFS_BUF_ADDR(%struct.xfs_buf*) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @xfs_verify_agbno(%struct.xfs_mount*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
