; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_adjust_refcount_rec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_adjust_refcount_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_refcount_rec = type { i32 }
%struct.ocfs2_path = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_refcount_block = type { i8*, i8* }
%struct.ocfs2_extent_list = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }

@OCFS2_REFCOUNT_TREE_FL = common dso_local global i32 0, align 4
@OCFS2_32BIT_POS_MASK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_refcount_rec*)* @ocfs2_adjust_refcount_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_adjust_refcount_rec(i32* %0, %struct.ocfs2_caching_info* %1, %struct.buffer_head* %2, %struct.buffer_head* %3, %struct.ocfs2_refcount_rec* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ocfs2_caching_info*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_refcount_rec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_path*, align 8
  %16 = alloca %struct.ocfs2_extent_tree, align 4
  %17 = alloca %struct.ocfs2_refcount_block*, align 8
  %18 = alloca %struct.ocfs2_extent_list*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  store %struct.ocfs2_refcount_rec* %4, %struct.ocfs2_refcount_rec** %10, align 8
  store i32 0, i32* %11, align 4
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %15, align 8
  %19 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %22, %struct.ocfs2_refcount_block** %17, align 8
  %23 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %17, align 8
  %24 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @le32_to_cpu(i8* %25)
  %27 = load i32, i32* @OCFS2_REFCOUNT_TREE_FL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  br label %159

31:                                               ; preds = %5
  %32 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %35, %struct.ocfs2_refcount_block** %17, align 8
  %36 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %17, align 8
  %37 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @le32_to_cpu(i8* %38)
  store i32 %39, i32* %14, align 4
  %40 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %10, align 8
  %41 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le64_to_cpu(i32 %42)
  %44 = load i32, i32* @OCFS2_32BIT_POS_MASK, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %31
  br label %159

50:                                               ; preds = %31
  %51 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %53 = call i32 @ocfs2_init_refcount_extent_tree(%struct.ocfs2_extent_tree* %16, %struct.ocfs2_caching_info* %51, %struct.buffer_head* %52)
  %54 = call %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree* %16)
  store %struct.ocfs2_path* %54, %struct.ocfs2_path** %15, align 8
  %55 = load %struct.ocfs2_path*, %struct.ocfs2_path** %15, align 8
  %56 = icmp ne %struct.ocfs2_path* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @mlog_errno(i32 %60)
  br label %159

62:                                               ; preds = %50
  %63 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %64 = load %struct.ocfs2_path*, %struct.ocfs2_path** %15, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @ocfs2_find_path(%struct.ocfs2_caching_info* %63, %struct.ocfs2_path* %64, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @mlog_errno(i32 %70)
  br label %159

72:                                               ; preds = %62
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @ocfs2_extend_trans(i32* %73, i32 2)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @mlog_errno(i32 %78)
  br label %159

80:                                               ; preds = %72
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %83 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %84 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %85 = call i32 @ocfs2_journal_access_rb(i32* %81, %struct.ocfs2_caching_info* %82, %struct.buffer_head* %83, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @mlog_errno(i32 %89)
  br label %159

91:                                               ; preds = %80
  %92 = load i32*, i32** %6, align 8
  %93 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %94 = load %struct.ocfs2_path*, %struct.ocfs2_path** %15, align 8
  %95 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %94)
  %96 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %97 = call i32 @ocfs2_journal_access_eb(i32* %92, %struct.ocfs2_caching_info* %93, %struct.buffer_head* %95, i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @mlog_errno(i32 %101)
  br label %159

103:                                              ; preds = %91
  %104 = load %struct.ocfs2_path*, %struct.ocfs2_path** %15, align 8
  %105 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %104)
  store %struct.ocfs2_extent_list* %105, %struct.ocfs2_extent_list** %18, align 8
  store i32 0, i32* %12, align 4
  br label %106

106:                                              ; preds = %127, %103
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %109 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @le16_to_cpu(i32 %110)
  %112 = icmp slt i32 %107, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %106
  %114 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %115 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @le32_to_cpu(i8* %121)
  %123 = load i32, i32* %14, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %113
  br label %130

126:                                              ; preds = %113
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %106

130:                                              ; preds = %125, %106
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %133 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @le16_to_cpu(i32 %134)
  %136 = icmp eq i32 %131, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @BUG_ON(i32 %137)
  %139 = load i32, i32* %13, align 4
  %140 = call i8* @cpu_to_le32(i32 %139)
  %141 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %142 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %141, i32 0, i32 0
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  store i8* %140, i8** %147, align 8
  %148 = load i32, i32* %13, align 4
  %149 = call i8* @cpu_to_le32(i32 %148)
  %150 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %17, align 8
  %151 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  %152 = load i32*, i32** %6, align 8
  %153 = load %struct.ocfs2_path*, %struct.ocfs2_path** %15, align 8
  %154 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %153)
  %155 = call i32 @ocfs2_journal_dirty(i32* %152, %struct.buffer_head* %154)
  %156 = load i32*, i32** %6, align 8
  %157 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %158 = call i32 @ocfs2_journal_dirty(i32* %156, %struct.buffer_head* %157)
  br label %159

159:                                              ; preds = %130, %100, %88, %77, %69, %57, %49, %30
  %160 = load %struct.ocfs2_path*, %struct.ocfs2_path** %15, align 8
  %161 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %160)
  %162 = load i32, i32* %11, align 4
  ret i32 %162
}

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_init_refcount_extent_tree(%struct.ocfs2_extent_tree*, %struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_find_path(%struct.ocfs2_caching_info*, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @ocfs2_extend_trans(i32*, i32) #1

declare dso_local i32 @ocfs2_journal_access_rb(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_journal_access_eb(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32) #1

declare dso_local %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
