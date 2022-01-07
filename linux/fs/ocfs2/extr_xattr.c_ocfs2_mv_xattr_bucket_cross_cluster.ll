; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_mv_xattr_bucket_cross_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_mv_xattr_bucket_cross_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ocfs2_xattr_bucket = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@OCFS2_XATTR_BUCKET_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket*, i64, i32, i32*)* @ocfs2_mv_xattr_bucket_cross_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_mv_xattr_bucket_cross_cluster(%struct.inode* %0, i32* %1, %struct.ocfs2_xattr_bucket* %2, %struct.ocfs2_xattr_bucket* %3, i64 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %11 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.super_block*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.ocfs2_xattr_bucket* %2, %struct.ocfs2_xattr_bucket** %10, align 8
  store %struct.ocfs2_xattr_bucket* %3, %struct.ocfs2_xattr_bucket** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load %struct.super_block*, %struct.super_block** %23, align 8
  store %struct.super_block* %24, %struct.super_block** %16, align 8
  %25 = load %struct.super_block*, %struct.super_block** %16, align 8
  %26 = call i32 @ocfs2_blocks_per_xattr_bucket(%struct.super_block* %25)
  store i32 %26, i32* %17, align 4
  %27 = load %struct.super_block*, %struct.super_block** %16, align 8
  %28 = call %struct.TYPE_4__* @OCFS2_SB(%struct.super_block* %27)
  %29 = call i32 @ocfs2_xattr_buckets_per_cluster(%struct.TYPE_4__* %28)
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %18, align 4
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %19, align 4
  %32 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %10, align 8
  %33 = call i64 @bucket_blkno(%struct.ocfs2_xattr_bucket* %32)
  %34 = load i32, i32* %13, align 4
  %35 = sub nsw i32 %34, 1
  %36 = load %struct.super_block*, %struct.super_block** %16, align 8
  %37 = call i32 @ocfs2_clusters_to_blocks(%struct.super_block* %36, i32 1)
  %38 = mul nsw i32 %35, %37
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %33, %39
  store i64 %40, i64* %21, align 8
  %41 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %10, align 8
  %42 = call %struct.TYPE_5__* @bucket_xh(%struct.ocfs2_xattr_bucket* %41)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le16_to_cpu(i32 %44)
  %46 = load i32, i32* %18, align 4
  %47 = icmp slt i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load i64, i64* @OCFS2_XATTR_BUCKET_SIZE, align 8
  %51 = load %struct.super_block*, %struct.super_block** %16, align 8
  %52 = call %struct.TYPE_4__* @OCFS2_SB(%struct.super_block* %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %50, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = load i64, i64* %21, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @trace_ocfs2_mv_xattr_bucket_cross_cluster(i64 %58, i64 %59)
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %10, align 8
  %64 = call i64 @bucket_blkno(%struct.ocfs2_xattr_bucket* %63)
  %65 = load i64, i64* %21, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i32, i32* %19, align 4
  %68 = load i32*, i32** %14, align 8
  %69 = call i32 @ocfs2_mv_xattr_buckets(%struct.inode* %61, i32* %62, i64 %64, i64 %65, i64 %66, i32 %67, i32* %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %7
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @mlog_errno(i32 %73)
  br label %116

75:                                               ; preds = %7
  %76 = load i64, i64* %21, align 8
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %17, align 4
  %79 = mul nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %76, %80
  store i64 %81, i64* %20, align 8
  %82 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %11, align 8
  %83 = call i64 @bucket_blkno(%struct.ocfs2_xattr_bucket* %82)
  %84 = load i64, i64* %20, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %115

86:                                               ; preds = %75
  %87 = load i64, i64* %12, align 8
  %88 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %11, align 8
  %89 = call i64 @bucket_blkno(%struct.ocfs2_xattr_bucket* %88)
  %90 = load i64, i64* %20, align 8
  %91 = sub nsw i64 %89, %90
  %92 = add nsw i64 %87, %91
  store i64 %92, i64* %20, align 8
  %93 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %10, align 8
  %94 = call i32 @ocfs2_xattr_bucket_relse(%struct.ocfs2_xattr_bucket* %93)
  %95 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %11, align 8
  %96 = call i32 @ocfs2_xattr_bucket_relse(%struct.ocfs2_xattr_bucket* %95)
  %97 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %10, align 8
  %98 = load i64, i64* %12, align 8
  %99 = call i32 @ocfs2_read_xattr_bucket(%struct.ocfs2_xattr_bucket* %97, i64 %98)
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %86
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @mlog_errno(i32 %103)
  br label %116

105:                                              ; preds = %86
  %106 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %11, align 8
  %107 = load i64, i64* %20, align 8
  %108 = call i32 @ocfs2_read_xattr_bucket(%struct.ocfs2_xattr_bucket* %106, i64 %107)
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i32, i32* %15, align 4
  %113 = call i32 @mlog_errno(i32 %112)
  br label %114

114:                                              ; preds = %111, %105
  br label %115

115:                                              ; preds = %114, %75
  br label %116

116:                                              ; preds = %115, %102, %72
  %117 = load i32, i32* %15, align 4
  ret i32 %117
}

declare dso_local i32 @ocfs2_blocks_per_xattr_bucket(%struct.super_block*) #1

declare dso_local i32 @ocfs2_xattr_buckets_per_cluster(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i64 @bucket_blkno(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(%struct.super_block*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_5__* @bucket_xh(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @trace_ocfs2_mv_xattr_bucket_cross_cluster(i64, i64) #1

declare dso_local i32 @ocfs2_mv_xattr_buckets(%struct.inode*, i32*, i64, i64, i64, i32, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_relse(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @ocfs2_read_xattr_bucket(%struct.ocfs2_xattr_bucket*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
