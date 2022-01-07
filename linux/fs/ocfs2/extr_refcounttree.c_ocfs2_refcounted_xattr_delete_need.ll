; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_refcounted_xattr_delete_need.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_refcounted_xattr_delete_need.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_xattr_value_root = type { i32, i32 }
%struct.ocfs2_refcount_block = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ocfs2_refcount_rec = type { i32, i32 }
%struct.ocfs2_extent_tree = type { i32 }

@OCFS2_REFCOUNT_TREE_FL = common dso_local global i32 0, align 4
@OCFS2_EXPAND_REFCOUNT_TREE_CREDITS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_refcounted_xattr_delete_need(%struct.inode* %0, %struct.ocfs2_caching_info* %1, %struct.buffer_head* %2, %struct.ocfs2_xattr_value_root* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ocfs2_caching_info*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_xattr_value_root*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ocfs2_refcount_block*, align 8
  %21 = alloca %struct.ocfs2_refcount_rec, align 4
  %22 = alloca %struct.buffer_head*, align 8
  %23 = alloca %struct.ocfs2_extent_tree, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store %struct.ocfs2_xattr_value_root* %3, %struct.ocfs2_xattr_value_root** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %24 = load %struct.ocfs2_xattr_value_root*, %struct.ocfs2_xattr_value_root** %10, align 8
  %25 = getelementptr inbounds %struct.ocfs2_xattr_value_root, %struct.ocfs2_xattr_value_root* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  store i32 %27, i32* %19, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %22, align 8
  br label %28

28:                                               ; preds = %112, %6
  %29 = load i32, i32* %18, align 4
  %30 = load i32, i32* %19, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %113

32:                                               ; preds = %28
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = load i32, i32* %18, align 4
  %35 = load %struct.ocfs2_xattr_value_root*, %struct.ocfs2_xattr_value_root** %10, align 8
  %36 = getelementptr inbounds %struct.ocfs2_xattr_value_root, %struct.ocfs2_xattr_value_root* %35, i32 0, i32 0
  %37 = call i32 @ocfs2_xattr_get_clusters(%struct.inode* %33, i32 %34, i32* %16, i32* %17, i32* %36, i32* null)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  br label %156

43:                                               ; preds = %32
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %18, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %18, align 4
  br label %47

47:                                               ; preds = %108, %43
  %48 = load i32, i32* %17, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %112

50:                                               ; preds = %47
  %51 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %8, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @ocfs2_get_refcount_rec(%struct.ocfs2_caching_info* %51, %struct.buffer_head* %52, i32 %53, i32 %54, %struct.ocfs2_refcount_rec* %21, i32* %14, %struct.buffer_head** %22)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @mlog_errno(i32 %59)
  br label %156

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %21, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %69 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %71, %struct.ocfs2_refcount_block** %20, align 8
  %72 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %73 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @le16_to_cpu(i32 %75)
  %77 = load i32, i32* %19, align 4
  %78 = mul nsw i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %76, %79
  %81 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %82 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @le16_to_cpu(i32 %84)
  %86 = icmp sgt i64 %80, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %61
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %87, %61
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %95 = call i32 @brelse(%struct.buffer_head* %94)
  store %struct.buffer_head* null, %struct.buffer_head** %22, align 8
  %96 = load i32, i32* %17, align 4
  %97 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %21, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le32_to_cpu(i32 %98)
  %100 = icmp sle i32 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %90
  br label %112

102:                                              ; preds = %90
  %103 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %21, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @le32_to_cpu(i32 %104)
  %106 = load i32, i32* %17, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %17, align 4
  br label %108

108:                                              ; preds = %102
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %16, align 4
  br label %47

112:                                              ; preds = %101, %47
  br label %28

113:                                              ; preds = %28
  %114 = load i32, i32* %15, align 4
  %115 = load i32*, i32** %11, align 8
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %114
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %113
  br label %156

121:                                              ; preds = %113
  %122 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %123 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %125, %struct.ocfs2_refcount_block** %20, align 8
  %126 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %127 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @le32_to_cpu(i32 %128)
  %130 = load i32, i32* @OCFS2_REFCOUNT_TREE_FL, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %121
  %134 = load i64, i64* @OCFS2_EXPAND_REFCOUNT_TREE_CREDITS, align 8
  %135 = load i32*, i32** %12, align 8
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, %134
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %135, align 4
  br label %155

140:                                              ; preds = %121
  %141 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %8, align 8
  %142 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %143 = call i32 @ocfs2_init_refcount_extent_tree(%struct.ocfs2_extent_tree* %23, %struct.ocfs2_caching_info* %141, %struct.buffer_head* %142)
  %144 = load %struct.inode*, %struct.inode** %7, align 8
  %145 = getelementptr inbounds %struct.inode, %struct.inode* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %23, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @ocfs2_calc_extend_credits(i32 %146, i32 %148)
  %150 = load i32*, i32** %12, align 8
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %152, %149
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %150, align 4
  br label %155

155:                                              ; preds = %140, %133
  br label %156

156:                                              ; preds = %155, %120, %58, %40
  %157 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %158 = call i32 @brelse(%struct.buffer_head* %157)
  %159 = load i32, i32* %13, align 4
  ret i32 %159
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_xattr_get_clusters(%struct.inode*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_get_refcount_rec(%struct.ocfs2_caching_info*, %struct.buffer_head*, i32, i32, %struct.ocfs2_refcount_rec*, i32*, %struct.buffer_head**) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_init_refcount_extent_tree(%struct.ocfs2_extent_tree*, %struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i64 @ocfs2_calc_extend_credits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
