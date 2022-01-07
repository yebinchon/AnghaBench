; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_extend_allocation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_extend_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_value_buf = type { i32 (i32*, i32, i32, i32)*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ocfs2_xattr_set_ctxt = type { i32, i32, i32* }
%struct.ocfs2_extent_tree = type { i32 }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@RESTART_NONE = common dso_local global i32 0, align 4
@RESTART_META = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_set_ctxt*)* @ocfs2_xattr_extend_allocation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_extend_allocation(%struct.inode* %0, i64 %1, %struct.ocfs2_xattr_value_buf* %2, %struct.ocfs2_xattr_set_ctxt* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ocfs2_xattr_value_buf*, align 8
  %8 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ocfs2_extent_tree, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ocfs2_xattr_value_buf* %2, %struct.ocfs2_xattr_value_buf** %7, align 8
  store %struct.ocfs2_xattr_set_ctxt* %3, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %17 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %11, align 8
  %19 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %7, align 8
  %20 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @le32_to_cpu(i32 %23)
  store i64 %24, i64* %14, align 8
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = call i32 @INODE_CACHE(%struct.inode* %25)
  %27 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %7, align 8
  %28 = call i32 @ocfs2_init_xattr_value_extent_tree(%struct.ocfs2_extent_tree* %15, i32 %26, %struct.ocfs2_xattr_value_buf* %27)
  br label %29

29:                                               ; preds = %130, %4
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %131

32:                                               ; preds = %29
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @trace_ocfs2_xattr_extend_allocation(i64 %33)
  %35 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %7, align 8
  %36 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %35, i32 0, i32 0
  %37 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %36, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = call i32 @INODE_CACHE(%struct.inode* %39)
  %41 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %7, align 8
  %42 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %45 = call i32 %37(i32* %38, i32 %40, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %32
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @mlog_errno(i32 %49)
  br label %131

51:                                               ; preds = %32
  %52 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %7, align 8
  %53 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @le32_to_cpu(i32 %56)
  store i64 %57, i64* %13, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %61 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %64 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ocfs2_add_clusters_in_btree(i32* %58, %struct.ocfs2_extent_tree* %15, i64* %14, i64 %59, i32 0, i32 %62, i32 %65, i32* %12)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %51
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @EAGAIN, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @ENOSPC, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @mlog_errno(i32 %80)
  br label %82

82:                                               ; preds = %79, %74
  br label %131

83:                                               ; preds = %69, %51
  %84 = load i32*, i32** %11, align 8
  %85 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %7, align 8
  %86 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ocfs2_journal_dirty(i32* %84, i32 %87)
  %89 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %7, align 8
  %90 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @le32_to_cpu(i32 %93)
  %95 = load i64, i64* %13, align 8
  %96 = sub nsw i64 %94, %95
  %97 = load i64, i64* %6, align 8
  %98 = sub nsw i64 %97, %96
  store i64 %98, i64* %6, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @RESTART_NONE, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %130

102:                                              ; preds = %83
  %103 = load i64, i64* %6, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %130

105:                                              ; preds = %102
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @RESTART_META, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @BUG_ON(i32 %109)
  %111 = load %struct.inode*, %struct.inode** %5, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %7, align 8
  %115 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = call i32 @ocfs2_calc_extend_credits(i32 %113, i32* %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32*, i32** %11, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @ocfs2_extend_trans(i32* %119, i32 %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %105
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @mlog_errno(i32 %127)
  br label %131

129:                                              ; preds = %105
  br label %130

130:                                              ; preds = %129, %102, %83
  br label %29

131:                                              ; preds = %124, %82, %48, %29
  %132 = load i32, i32* %9, align 4
  ret i32 %132
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_init_xattr_value_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.ocfs2_xattr_value_buf*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_xattr_extend_allocation(i64) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_add_clusters_in_btree(i32*, %struct.ocfs2_extent_tree*, i64*, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_calc_extend_credits(i32, i32*) #1

declare dso_local i32 @ocfs2_extend_trans(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
