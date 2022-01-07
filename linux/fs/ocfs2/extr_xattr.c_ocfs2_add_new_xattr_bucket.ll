; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_add_new_xattr_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_add_new_xattr_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_xattr_bucket = type { i32 }
%struct.ocfs2_xattr_set_ctxt = type { i32 }
%struct.ocfs2_xattr_block = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ocfs2_xattr_tree_root }
%struct.ocfs2_xattr_tree_root = type { %struct.ocfs2_extent_list }
%struct.ocfs2_extent_list = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_set_ctxt*)* @ocfs2_add_new_xattr_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_add_new_xattr_bucket(%struct.inode* %0, %struct.buffer_head* %1, %struct.ocfs2_xattr_bucket* %2, %struct.ocfs2_xattr_set_ctxt* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %8 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %9 = alloca %struct.ocfs2_xattr_block*, align 8
  %10 = alloca %struct.ocfs2_xattr_tree_root*, align 8
  %11 = alloca %struct.ocfs2_extent_list*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_super*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ocfs2_xattr_bucket*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store %struct.ocfs2_xattr_bucket* %2, %struct.ocfs2_xattr_bucket** %7, align 8
  store %struct.ocfs2_xattr_set_ctxt* %3, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ocfs2_xattr_block*
  store %struct.ocfs2_xattr_block* %24, %struct.ocfs2_xattr_block** %9, align 8
  %25 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %9, align 8
  %26 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.ocfs2_xattr_tree_root* %27, %struct.ocfs2_xattr_tree_root** %10, align 8
  %28 = load %struct.ocfs2_xattr_tree_root*, %struct.ocfs2_xattr_tree_root** %10, align 8
  %29 = getelementptr inbounds %struct.ocfs2_xattr_tree_root, %struct.ocfs2_xattr_tree_root* %28, i32 0, i32 0
  store %struct.ocfs2_extent_list* %29, %struct.ocfs2_extent_list** %11, align 8
  %30 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %7, align 8
  %31 = call %struct.TYPE_6__* @bucket_xh(%struct.ocfs2_xattr_bucket* %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32_to_cpu(i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.ocfs2_super* @OCFS2_SB(i32 %40)
  store %struct.ocfs2_super* %41, %struct.ocfs2_super** %13, align 8
  store i32 1, i32* %16, align 4
  %42 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %7, align 8
  %43 = call i64 @bucket_blkno(%struct.ocfs2_xattr_bucket* %42)
  %44 = call i32 @trace_ocfs2_add_new_xattr_bucket(i64 %43)
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = call %struct.ocfs2_xattr_bucket* @ocfs2_xattr_bucket_new(%struct.inode* %45)
  store %struct.ocfs2_xattr_bucket* %46, %struct.ocfs2_xattr_bucket** %20, align 8
  %47 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %20, align 8
  %48 = icmp ne %struct.ocfs2_xattr_bucket* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %4
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %119

54:                                               ; preds = %4
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %58 = call i32 @ocfs2_xattr_get_rec(%struct.inode* %55, i32 %56, i32* %17, i32* %18, i32* %19, %struct.ocfs2_extent_list* %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @mlog_errno(i32 %62)
  br label %119

64:                                               ; preds = %54
  %65 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %20, align 8
  %66 = load i32, i32* %17, align 4
  %67 = call i32 @ocfs2_read_xattr_bucket(%struct.ocfs2_xattr_bucket* %65, i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @mlog_errno(i32 %71)
  br label %119

73:                                               ; preds = %64
  %74 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %75 = call i32 @ocfs2_xattr_buckets_per_cluster(%struct.ocfs2_super* %74)
  %76 = load i32, i32* %19, align 4
  %77 = mul nsw i32 %75, %76
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %20, align 8
  %80 = call %struct.TYPE_6__* @bucket_xh(%struct.ocfs2_xattr_bucket* %79)
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @le16_to_cpu(i32 %82)
  %84 = icmp eq i32 %78, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %73
  %86 = load %struct.inode*, %struct.inode** %5, align 8
  %87 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %88 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %20, align 8
  %89 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %7, align 8
  %90 = load i32, i32* %18, align 4
  %91 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %92 = call i32 @ocfs2_add_new_xattr_cluster(%struct.inode* %86, %struct.buffer_head* %87, %struct.ocfs2_xattr_bucket* %88, %struct.ocfs2_xattr_bucket* %89, i32* %19, i32 %90, i32* %16, %struct.ocfs2_xattr_set_ctxt* %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @mlog_errno(i32 %96)
  br label %119

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98, %73
  %100 = load i32, i32* %16, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %99
  %103 = load %struct.inode*, %struct.inode** %5, align 8
  %104 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %105 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %20, align 8
  %108 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %7, align 8
  %109 = call i64 @bucket_blkno(%struct.ocfs2_xattr_bucket* %108)
  %110 = load i32, i32* %19, align 4
  %111 = call i32 @ocfs2_extend_xattr_bucket(%struct.inode* %103, i32 %106, %struct.ocfs2_xattr_bucket* %107, i64 %109, i32 %110)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %102
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @mlog_errno(i32 %115)
  br label %117

117:                                              ; preds = %114, %102
  br label %118

118:                                              ; preds = %117, %99
  br label %119

119:                                              ; preds = %118, %95, %70, %61, %49
  %120 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %20, align 8
  %121 = call i32 @ocfs2_xattr_bucket_free(%struct.ocfs2_xattr_bucket* %120)
  %122 = load i32, i32* %14, align 4
  ret i32 %122
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_6__* @bucket_xh(%struct.ocfs2_xattr_bucket*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @trace_ocfs2_add_new_xattr_bucket(i64) #1

declare dso_local i64 @bucket_blkno(%struct.ocfs2_xattr_bucket*) #1

declare dso_local %struct.ocfs2_xattr_bucket* @ocfs2_xattr_bucket_new(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_xattr_get_rec(%struct.inode*, i32, i32*, i32*, i32*, %struct.ocfs2_extent_list*) #1

declare dso_local i32 @ocfs2_read_xattr_bucket(%struct.ocfs2_xattr_bucket*, i32) #1

declare dso_local i32 @ocfs2_xattr_buckets_per_cluster(%struct.ocfs2_super*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_add_new_xattr_cluster(%struct.inode*, %struct.buffer_head*, %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket*, i32*, i32, i32*, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @ocfs2_extend_xattr_bucket(%struct.inode*, i32, %struct.ocfs2_xattr_bucket*, i64, i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_free(%struct.ocfs2_xattr_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
