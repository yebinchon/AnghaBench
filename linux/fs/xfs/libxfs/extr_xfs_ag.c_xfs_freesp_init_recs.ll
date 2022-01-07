; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag.c_xfs_freesp_init_recs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag.c_xfs_freesp_init_recs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.xfs_buf = type { i32 }
%struct.aghdr_init_data = type { i64 }
%struct.xfs_alloc_rec = type { i8*, i8* }
%struct.xfs_btree_block = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_mount*, %struct.xfs_buf*, %struct.aghdr_init_data*)* @xfs_freesp_init_recs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_freesp_init_recs(%struct.xfs_mount* %0, %struct.xfs_buf* %1, %struct.aghdr_init_data* %2) #0 {
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_buf*, align 8
  %6 = alloca %struct.aghdr_init_data*, align 8
  %7 = alloca %struct.xfs_alloc_rec*, align 8
  %8 = alloca %struct.xfs_btree_block*, align 8
  %9 = alloca %struct.xfs_alloc_rec*, align 8
  %10 = alloca i64, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %5, align 8
  store %struct.aghdr_init_data* %2, %struct.aghdr_init_data** %6, align 8
  %11 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %12 = call %struct.xfs_btree_block* @XFS_BUF_TO_BLOCK(%struct.xfs_buf* %11)
  store %struct.xfs_btree_block* %12, %struct.xfs_btree_block** %8, align 8
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %14 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %15 = call %struct.xfs_btree_block* @XFS_BUF_TO_BLOCK(%struct.xfs_buf* %14)
  %16 = call %struct.xfs_alloc_rec* @XFS_ALLOC_REC_ADDR(%struct.xfs_mount* %13, %struct.xfs_btree_block* %15, i32 1)
  store %struct.xfs_alloc_rec* %16, %struct.xfs_alloc_rec** %7, align 8
  %17 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %18 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i8* @cpu_to_be32(i64 %19)
  %21 = load %struct.xfs_alloc_rec*, %struct.xfs_alloc_rec** %7, align 8
  %22 = getelementptr inbounds %struct.xfs_alloc_rec, %struct.xfs_alloc_rec* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %24 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %6, align 8
  %25 = call i64 @is_log_ag(%struct.xfs_mount* %23, %struct.aghdr_init_data* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %81

27:                                               ; preds = %3
  %28 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %29 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %30 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @XFS_FSB_TO_AGBNO(%struct.xfs_mount* %28, i32 %32)
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %36 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %43 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %73

46:                                               ; preds = %27
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %49 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  %52 = call i8* @cpu_to_be32(i64 %51)
  %53 = load %struct.xfs_alloc_rec*, %struct.xfs_alloc_rec** %7, align 8
  %54 = getelementptr inbounds %struct.xfs_alloc_rec, %struct.xfs_alloc_rec* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.xfs_alloc_rec*, %struct.xfs_alloc_rec** %7, align 8
  %56 = getelementptr inbounds %struct.xfs_alloc_rec, %struct.xfs_alloc_rec* %55, i64 1
  store %struct.xfs_alloc_rec* %56, %struct.xfs_alloc_rec** %9, align 8
  %57 = load %struct.xfs_alloc_rec*, %struct.xfs_alloc_rec** %7, align 8
  %58 = getelementptr inbounds %struct.xfs_alloc_rec, %struct.xfs_alloc_rec* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @be32_to_cpu(i8* %59)
  %61 = load %struct.xfs_alloc_rec*, %struct.xfs_alloc_rec** %7, align 8
  %62 = getelementptr inbounds %struct.xfs_alloc_rec, %struct.xfs_alloc_rec* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @be32_to_cpu(i8* %63)
  %65 = add nsw i64 %60, %64
  %66 = call i8* @cpu_to_be32(i64 %65)
  %67 = load %struct.xfs_alloc_rec*, %struct.xfs_alloc_rec** %9, align 8
  %68 = getelementptr inbounds %struct.xfs_alloc_rec, %struct.xfs_alloc_rec* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.xfs_alloc_rec*, %struct.xfs_alloc_rec** %9, align 8
  store %struct.xfs_alloc_rec* %69, %struct.xfs_alloc_rec** %7, align 8
  %70 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %8, align 8
  %71 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %70, i32 0, i32 0
  %72 = call i32 @be16_add_cpu(i64* %71, i32 1)
  br label %73

73:                                               ; preds = %46, %27
  %74 = load %struct.xfs_alloc_rec*, %struct.xfs_alloc_rec** %7, align 8
  %75 = getelementptr inbounds %struct.xfs_alloc_rec, %struct.xfs_alloc_rec* %74, i32 0, i32 1
  %76 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %77 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @be32_add_cpu(i8** %75, i32 %79)
  br label %81

81:                                               ; preds = %73, %3
  %82 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %6, align 8
  %83 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.xfs_alloc_rec*, %struct.xfs_alloc_rec** %7, align 8
  %86 = getelementptr inbounds %struct.xfs_alloc_rec, %struct.xfs_alloc_rec* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @be32_to_cpu(i8* %87)
  %89 = sub nsw i64 %84, %88
  %90 = call i8* @cpu_to_be32(i64 %89)
  %91 = load %struct.xfs_alloc_rec*, %struct.xfs_alloc_rec** %7, align 8
  %92 = getelementptr inbounds %struct.xfs_alloc_rec, %struct.xfs_alloc_rec* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load %struct.xfs_alloc_rec*, %struct.xfs_alloc_rec** %7, align 8
  %94 = getelementptr inbounds %struct.xfs_alloc_rec, %struct.xfs_alloc_rec* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %81
  %98 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %8, align 8
  %99 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %97, %81
  ret void
}

declare dso_local %struct.xfs_btree_block* @XFS_BUF_TO_BLOCK(%struct.xfs_buf*) #1

declare dso_local %struct.xfs_alloc_rec* @XFS_ALLOC_REC_ADDR(%struct.xfs_mount*, %struct.xfs_btree_block*, i32) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i64 @is_log_ag(%struct.xfs_mount*, %struct.aghdr_init_data*) #1

declare dso_local i64 @XFS_FSB_TO_AGBNO(%struct.xfs_mount*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @be32_to_cpu(i8*) #1

declare dso_local i32 @be16_add_cpu(i64*, i32) #1

declare dso_local i32 @be32_add_cpu(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
