; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_duplicate_clusters_by_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_duplicate_clusters_by_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.address_space*, %struct.super_block* }
%struct.address_space = type { i32 }
%struct.super_block = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ocfs2_get_block = common dso_local global i32 0, align 4
@ocfs2_clear_cow_buffer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_duplicate_clusters_by_page(i32* %0, %struct.inode* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.super_block*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.page*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.address_space*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 1
  %27 = load %struct.super_block*, %struct.super_block** %26, align 8
  store %struct.super_block* %27, %struct.super_block** %15, align 8
  %28 = load %struct.super_block*, %struct.super_block** %15, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @ocfs2_clusters_to_blocks(%struct.super_block* %28, i32 %29)
  store i32 %30, i32* %16, align 4
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load %struct.address_space*, %struct.address_space** %32, align 8
  store %struct.address_space* %33, %struct.address_space** %24, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @trace_ocfs2_duplicate_clusters_by_page(i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.super_block*, %struct.super_block** %15, align 8
  %41 = call %struct.TYPE_2__* @OCFS2_SB(%struct.super_block* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %39, %43
  store i32 %44, i32* %21, align 4
  %45 = load i32, i32* %21, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.super_block*, %struct.super_block** %15, align 8
  %48 = call %struct.TYPE_2__* @OCFS2_SB(%struct.super_block* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %46, %50
  %52 = add nsw i32 %45, %51
  store i32 %52, i32* %22, align 4
  %53 = load i32, i32* %22, align 4
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = call i32 @i_size_read(%struct.inode* %54)
  %56 = icmp sgt i32 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %6
  %58 = load %struct.inode*, %struct.inode** %8, align 8
  %59 = call i32 @i_size_read(%struct.inode* %58)
  store i32 %59, i32* %22, align 4
  br label %60

60:                                               ; preds = %57, %6
  br label %61

61:                                               ; preds = %174, %60
  %62 = load i32, i32* %21, align 4
  %63 = load i32, i32* %22, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %175

65:                                               ; preds = %61
  %66 = load i32, i32* %21, align 4
  %67 = load i32, i32* @PAGE_SHIFT, align 4
  %68 = ashr i32 %66, %67
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %18, align 4
  %70 = add nsw i32 %69, 1
  %71 = load i32, i32* @PAGE_SHIFT, align 4
  %72 = shl i32 %70, %71
  store i32 %72, i32* %23, align 4
  %73 = load i32, i32* %23, align 4
  %74 = load i32, i32* %22, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load i32, i32* %22, align 4
  store i32 %77, i32* %23, align 4
  br label %78

78:                                               ; preds = %76, %65
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* @PAGE_SIZE, align 4
  %81 = sub nsw i32 %80, 1
  %82 = and i32 %79, %81
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %83, i32* %20, align 4
  %84 = load i32, i32* %23, align 4
  %85 = load i32, i32* @PAGE_SIZE, align 4
  %86 = sub nsw i32 %85, 1
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %78
  %90 = load i32, i32* %23, align 4
  %91 = load i32, i32* @PAGE_SIZE, align 4
  %92 = sub nsw i32 %91, 1
  %93 = and i32 %90, %92
  store i32 %93, i32* %20, align 4
  br label %94

94:                                               ; preds = %89, %78
  br label %95

95:                                               ; preds = %118, %94
  %96 = load %struct.address_space*, %struct.address_space** %24, align 8
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* @GFP_NOFS, align 4
  %99 = call %struct.page* @find_or_create_page(%struct.address_space* %96, i32 %97, i32 %98)
  store %struct.page* %99, %struct.page** %17, align 8
  %100 = load %struct.page*, %struct.page** %17, align 8
  %101 = icmp ne %struct.page* %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %95
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @mlog_errno(i32 %105)
  br label %175

107:                                              ; preds = %95
  %108 = load i32, i32* @PAGE_SIZE, align 4
  %109 = load %struct.super_block*, %struct.super_block** %15, align 8
  %110 = call %struct.TYPE_2__* @OCFS2_SB(%struct.super_block* %109)
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp sle i32 %108, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %107
  %115 = load %struct.page*, %struct.page** %17, align 8
  %116 = call i64 @PageDirty(%struct.page* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load %struct.page*, %struct.page** %17, align 8
  %120 = call i32 @write_one_page(%struct.page* %119)
  store i32 %120, i32* %13, align 4
  br label %95

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121, %107
  %123 = load %struct.page*, %struct.page** %17, align 8
  %124 = call i32 @PageUptodate(%struct.page* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %122
  %127 = load %struct.page*, %struct.page** %17, align 8
  %128 = load i32, i32* @ocfs2_get_block, align 4
  %129 = call i32 @block_read_full_page(%struct.page* %127, i32 %128)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @mlog_errno(i32 %133)
  br label %165

135:                                              ; preds = %126
  %136 = load %struct.page*, %struct.page** %17, align 8
  %137 = call i32 @lock_page(%struct.page* %136)
  br label %138

138:                                              ; preds = %135, %122
  %139 = load %struct.page*, %struct.page** %17, align 8
  %140 = call i64 @page_has_buffers(%struct.page* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %156

142:                                              ; preds = %138
  %143 = load i32*, i32** %7, align 8
  %144 = load %struct.page*, %struct.page** %17, align 8
  %145 = call i32 @page_buffers(%struct.page* %144)
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* %20, align 4
  %148 = load i32, i32* @ocfs2_clear_cow_buffer, align 4
  %149 = call i32 @walk_page_buffers(i32* %143, i32 %145, i32 %146, i32 %147, i32* %14, i32 %148)
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %142
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @mlog_errno(i32 %153)
  br label %165

155:                                              ; preds = %142
  br label %156

156:                                              ; preds = %155, %138
  %157 = load %struct.inode*, %struct.inode** %8, align 8
  %158 = load i32*, i32** %7, align 8
  %159 = load i32, i32* %19, align 4
  %160 = load i32, i32* %20, align 4
  %161 = load %struct.page*, %struct.page** %17, align 8
  %162 = call i32 @ocfs2_map_and_dirty_page(%struct.inode* %157, i32* %158, i32 %159, i32 %160, %struct.page* %161, i32 0, i32* %16)
  %163 = load %struct.page*, %struct.page** %17, align 8
  %164 = call i32 @mark_page_accessed(%struct.page* %163)
  br label %165

165:                                              ; preds = %156, %152, %132
  %166 = load %struct.page*, %struct.page** %17, align 8
  %167 = call i32 @unlock_page(%struct.page* %166)
  %168 = load %struct.page*, %struct.page** %17, align 8
  %169 = call i32 @put_page(%struct.page* %168)
  store %struct.page* null, %struct.page** %17, align 8
  %170 = load i32, i32* %23, align 4
  store i32 %170, i32* %21, align 4
  %171 = load i32, i32* %13, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %165
  br label %175

174:                                              ; preds = %165
  br label %61

175:                                              ; preds = %173, %102, %61
  %176 = load i32, i32* %13, align 4
  ret i32 %176
}

declare dso_local i32 @ocfs2_clusters_to_blocks(%struct.super_block*, i32) #1

declare dso_local i32 @trace_ocfs2_duplicate_clusters_by_page(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local %struct.page* @find_or_create_page(%struct.address_space*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i32 @write_one_page(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @block_read_full_page(%struct.page*, i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @walk_page_buffers(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @page_buffers(%struct.page*) #1

declare dso_local i32 @ocfs2_map_and_dirty_page(%struct.inode*, i32*, i32, i32, %struct.page*, i32, i32*) #1

declare dso_local i32 @mark_page_accessed(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
