; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_reflink_xattr_buckets.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_reflink_xattr_buckets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_reflink_xattr_tree_args = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_extent_tree*, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*, i64, i32, i32)* @ocfs2_reflink_xattr_buckets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_reflink_xattr_buckets(i32* %0, %struct.inode* %1, %struct.ocfs2_reflink_xattr_tree_args* %2, %struct.ocfs2_extent_tree* %3, %struct.ocfs2_alloc_context* %4, %struct.ocfs2_alloc_context* %5, i64 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.ocfs2_reflink_xattr_tree_args*, align 8
  %13 = alloca %struct.ocfs2_extent_tree*, align 8
  %14 = alloca %struct.ocfs2_alloc_context*, align 8
  %15 = alloca %struct.ocfs2_alloc_context*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store %struct.inode* %1, %struct.inode** %11, align 8
  store %struct.ocfs2_reflink_xattr_tree_args* %2, %struct.ocfs2_reflink_xattr_tree_args** %12, align 8
  store %struct.ocfs2_extent_tree* %3, %struct.ocfs2_extent_tree** %13, align 8
  store %struct.ocfs2_alloc_context* %4, %struct.ocfs2_alloc_context** %14, align 8
  store %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %23, align 4
  %28 = load %struct.inode*, %struct.inode** %11, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @OCFS2_SB(i32 %30)
  %32 = call i32 @ocfs2_xattr_buckets_per_cluster(i32 %31)
  store i32 %32, i32* %27, align 4
  %33 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %12, align 8
  %34 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %16, align 8
  %37 = call i32 @ocfs2_read_xattr_bucket(i32 %35, i64 %36)
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %19, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %9
  %41 = load i32, i32* %19, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  br label %134

43:                                               ; preds = %9
  %44 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %12, align 8
  %45 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.TYPE_2__* @bucket_xh(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le16_to_cpu(i32 %49)
  store i32 %50, i32* %25, align 4
  %51 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %12, align 8
  %52 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ocfs2_xattr_bucket_relse(i32 %53)
  br label %55

55:                                               ; preds = %115, %43
  %56 = load i32, i32* %18, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %25, align 4
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi i1 [ false, %55 ], [ %60, %58 ]
  br i1 %62, label %63, label %133

63:                                               ; preds = %61
  %64 = load i32*, i32** %10, align 8
  %65 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %15, align 8
  %66 = call i32 @ocfs2_claim_clusters(i32* %64, %struct.ocfs2_alloc_context* %65, i32 1, i32* %21, i32* %22)
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %19, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %19, align 4
  %71 = call i32 @mlog_errno(i32 %70)
  br label %134

72:                                               ; preds = %63
  %73 = load %struct.inode*, %struct.inode** %11, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %21, align 4
  %77 = call i64 @ocfs2_clusters_to_blocks(i32 %75, i32 %76)
  store i64 %77, i64* %24, align 8
  %78 = load i32, i32* %25, align 4
  %79 = load i32, i32* %27, align 4
  %80 = load i32, i32* %22, align 4
  %81 = mul i32 %79, %80
  %82 = call i32 @min(i32 %78, i32 %81)
  store i32 %82, i32* %26, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = load i64, i64* %16, align 8
  %85 = load i64, i64* %24, align 8
  %86 = load i32, i32* %22, align 4
  %87 = load i32, i32* %26, align 4
  %88 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %14, align 8
  %89 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %15, align 8
  %90 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %12, align 8
  %91 = call i32 @ocfs2_reflink_xattr_bucket(i32* %83, i64 %84, i64 %85, i32 %86, i32* %23, i32 %87, %struct.ocfs2_alloc_context* %88, %struct.ocfs2_alloc_context* %89, %struct.ocfs2_reflink_xattr_tree_args* %90)
  store i32 %91, i32* %19, align 4
  %92 = load i32, i32* %19, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %72
  %95 = load i32, i32* %19, align 4
  %96 = call i32 @mlog_errno(i32 %95)
  br label %134

97:                                               ; preds = %72
  %98 = load i32, i32* %20, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %17, align 4
  store i32 %101, i32* %23, align 4
  store i32 1, i32* %20, align 4
  br label %102

102:                                              ; preds = %100, %97
  %103 = load i32*, i32** %10, align 8
  %104 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %13, align 8
  %105 = load i32, i32* %23, align 4
  %106 = load i64, i64* %24, align 8
  %107 = load i32, i32* %22, align 4
  %108 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %14, align 8
  %109 = call i32 @ocfs2_insert_extent(i32* %103, %struct.ocfs2_extent_tree* %104, i32 %105, i64 %106, i32 %107, i32 0, %struct.ocfs2_alloc_context* %108)
  store i32 %109, i32* %19, align 4
  %110 = load i32, i32* %19, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %102
  %113 = load i32, i32* %19, align 4
  %114 = call i32 @mlog_errno(i32 %113)
  br label %115

115:                                              ; preds = %112, %102
  %116 = load i64, i64* %24, align 8
  %117 = load i32, i32* %22, align 4
  %118 = load i32, i32* %23, align 4
  %119 = call i32 @trace_ocfs2_reflink_xattr_buckets(i64 %116, i32 %117, i32 %118)
  %120 = load i32, i32* %22, align 4
  %121 = load i32, i32* %18, align 4
  %122 = sub i32 %121, %120
  store i32 %122, i32* %18, align 4
  %123 = load %struct.inode*, %struct.inode** %11, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %22, align 4
  %127 = call i64 @ocfs2_clusters_to_blocks(i32 %125, i32 %126)
  %128 = load i64, i64* %16, align 8
  %129 = add nsw i64 %128, %127
  store i64 %129, i64* %16, align 8
  %130 = load i32, i32* %26, align 4
  %131 = load i32, i32* %25, align 4
  %132 = sub i32 %131, %130
  store i32 %132, i32* %25, align 4
  br label %55

133:                                              ; preds = %61
  br label %134

134:                                              ; preds = %133, %94, %69, %40
  %135 = load i32, i32* %19, align 4
  ret i32 %135
}

declare dso_local i32 @ocfs2_xattr_buckets_per_cluster(i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_read_xattr_bucket(i32, i64) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @bucket_xh(i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_relse(i32) #1

declare dso_local i32 @ocfs2_claim_clusters(i32*, %struct.ocfs2_alloc_context*, i32, i32*, i32*) #1

declare dso_local i64 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ocfs2_reflink_xattr_bucket(i32*, i64, i64, i32, i32*, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*, %struct.ocfs2_reflink_xattr_tree_args*) #1

declare dso_local i32 @ocfs2_insert_extent(i32*, %struct.ocfs2_extent_tree*, i32, i64, i32, i32, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @trace_ocfs2_reflink_xattr_buckets(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
