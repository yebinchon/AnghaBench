; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_convert_inline_data_to_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_convert_inline_data_to_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.inode = type { i32, i64 }
%struct.page = type { i32 }
%struct.ext4_iloc = type { i32 }

@EXT4_STATE_MAY_INLINE_DATA = common dso_local global i32 0, align 4
@EXT4_HT_WRITE_PAGE = common dso_local global i32 0, align 4
@AOP_FLAG_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ext4_get_block_unwritten = common dso_local global i32 0, align 4
@ext4_get_block = common dso_local global i32 0, align 4
@do_journal_get_write_access = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.inode*, i32)* @ext4_convert_inline_data_to_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_convert_inline_data_to_extent(%struct.address_space* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ext4_iloc, align 4
  store %struct.address_space* %0, %struct.address_space** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store %struct.page* null, %struct.page** %14, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call i32 @ext4_has_inline_data(%struct.inode* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = load i32, i32* @EXT4_STATE_MAY_INLINE_DATA, align 4
  %24 = call i32 @ext4_clear_inode_state(%struct.inode* %22, i32 %23)
  store i32 0, i32* %4, align 4
  br label %188

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = call i32 @ext4_writepage_trans_blocks(%struct.inode* %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = call i32 @ext4_get_inode_loc(%struct.inode* %28, %struct.ext4_iloc* %17)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %188

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %153, %34
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = load i32, i32* @EXT4_HT_WRITE_PAGE, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32* @ext4_journal_start(%struct.inode* %36, i32 %37, i32 %38)
  store i32* %39, i32** %11, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i64 @IS_ERR(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @PTR_ERR(i32* %44)
  store i32 %45, i32* %8, align 4
  store i32* null, i32** %11, align 8
  br label %163

46:                                               ; preds = %35
  %47 = load i32, i32* @AOP_FLAG_NOFS, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load %struct.address_space*, %struct.address_space** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %50, i32 0, i32 %51)
  store %struct.page* %52, %struct.page** %14, align 8
  %53 = load %struct.page*, %struct.page** %14, align 8
  %54 = icmp ne %struct.page* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %163

58:                                               ; preds = %46
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = call i32 @ext4_write_lock_xattr(%struct.inode* %59, i32* %10)
  store i32 1, i32* %13, align 4
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = call i32 @ext4_has_inline_data(%struct.inode* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %163

65:                                               ; preds = %58
  store i32 0, i32* %15, align 4
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = call i32 @ext4_get_inline_size(%struct.inode* %66)
  store i32 %67, i32* %16, align 4
  %68 = load %struct.page*, %struct.page** %14, align 8
  %69 = call i32 @PageUptodate(%struct.page* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %65
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = load %struct.page*, %struct.page** %14, align 8
  %74 = call i32 @ext4_read_inline_page(%struct.inode* %72, %struct.page* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %163

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78, %65
  %80 = load i32*, i32** %11, align 8
  %81 = load %struct.inode*, %struct.inode** %6, align 8
  %82 = call i32 @ext4_destroy_inline_data_nolock(i32* %80, %struct.inode* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %163

86:                                               ; preds = %79
  %87 = load %struct.inode*, %struct.inode** %6, align 8
  %88 = call i64 @ext4_should_dioread_nolock(%struct.inode* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load %struct.page*, %struct.page** %14, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* @ext4_get_block_unwritten, align 4
  %95 = call i32 @__block_write_begin(%struct.page* %91, i32 %92, i32 %93, i32 %94)
  store i32 %95, i32* %8, align 4
  br label %102

96:                                               ; preds = %86
  %97 = load %struct.page*, %struct.page** %14, align 8
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* @ext4_get_block, align 4
  %101 = call i32 @__block_write_begin(%struct.page* %97, i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %96, %90
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %102
  %106 = load %struct.inode*, %struct.inode** %6, align 8
  %107 = call i64 @ext4_should_journal_data(%struct.inode* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %105
  %110 = load i32*, i32** %11, align 8
  %111 = load %struct.page*, %struct.page** %14, align 8
  %112 = call i32 @page_buffers(%struct.page* %111)
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* @do_journal_get_write_access, align 4
  %116 = call i32 @ext4_walk_page_buffers(i32* %110, i32 %112, i32 %113, i32 %114, i32* null, i32 %115)
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %109, %105, %102
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %142

120:                                              ; preds = %117
  %121 = load %struct.page*, %struct.page** %14, align 8
  %122 = call i32 @unlock_page(%struct.page* %121)
  %123 = load %struct.page*, %struct.page** %14, align 8
  %124 = call i32 @put_page(%struct.page* %123)
  store %struct.page* null, %struct.page** %14, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = load %struct.inode*, %struct.inode** %6, align 8
  %127 = call i32 @ext4_orphan_add(i32* %125, %struct.inode* %126)
  %128 = load %struct.inode*, %struct.inode** %6, align 8
  %129 = call i32 @ext4_write_unlock_xattr(%struct.inode* %128, i32* %10)
  store i32 0, i32* %13, align 4
  %130 = load i32*, i32** %11, align 8
  %131 = call i32 @ext4_journal_stop(i32* %130)
  store i32* null, i32** %11, align 8
  %132 = load %struct.inode*, %struct.inode** %6, align 8
  %133 = call i32 @ext4_truncate_failed_write(%struct.inode* %132)
  %134 = load %struct.inode*, %struct.inode** %6, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %120
  %139 = load %struct.inode*, %struct.inode** %6, align 8
  %140 = call i32 @ext4_orphan_del(i32* null, %struct.inode* %139)
  br label %141

141:                                              ; preds = %138, %120
  br label %142

142:                                              ; preds = %141, %117
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @ENOSPC, align 4
  %145 = sub nsw i32 0, %144
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %142
  %148 = load %struct.inode*, %struct.inode** %6, align 8
  %149 = getelementptr inbounds %struct.inode, %struct.inode* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @ext4_should_retry_alloc(i32 %150, i32* %12)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %35

154:                                              ; preds = %147, %142
  %155 = load %struct.page*, %struct.page** %14, align 8
  %156 = icmp ne %struct.page* %155, null
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load %struct.page*, %struct.page** %14, align 8
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %16, align 4
  %161 = call i32 @block_commit_write(%struct.page* %158, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %157, %154
  br label %163

163:                                              ; preds = %162, %85, %77, %64, %55, %43
  %164 = load %struct.page*, %struct.page** %14, align 8
  %165 = icmp ne %struct.page* %164, null
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load %struct.page*, %struct.page** %14, align 8
  %168 = call i32 @unlock_page(%struct.page* %167)
  %169 = load %struct.page*, %struct.page** %14, align 8
  %170 = call i32 @put_page(%struct.page* %169)
  br label %171

171:                                              ; preds = %166, %163
  %172 = load i32, i32* %13, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load %struct.inode*, %struct.inode** %6, align 8
  %176 = call i32 @ext4_write_unlock_xattr(%struct.inode* %175, i32* %10)
  br label %177

177:                                              ; preds = %174, %171
  %178 = load i32*, i32** %11, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i32*, i32** %11, align 8
  %182 = call i32 @ext4_journal_stop(i32* %181)
  br label %183

183:                                              ; preds = %180, %177
  %184 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %17, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @brelse(i32 %185)
  %187 = load i32, i32* %8, align 4
  store i32 %187, i32* %4, align 4
  br label %188

188:                                              ; preds = %183, %32, %21
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i32 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i32 @ext4_clear_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_writepage_trans_blocks(%struct.inode*) #1

declare dso_local i32 @ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, i32, i32) #1

declare dso_local i32 @ext4_write_lock_xattr(%struct.inode*, i32*) #1

declare dso_local i32 @ext4_get_inline_size(%struct.inode*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @ext4_read_inline_page(%struct.inode*, %struct.page*) #1

declare dso_local i32 @ext4_destroy_inline_data_nolock(i32*, %struct.inode*) #1

declare dso_local i64 @ext4_should_dioread_nolock(%struct.inode*) #1

declare dso_local i32 @__block_write_begin(%struct.page*, i32, i32, i32) #1

declare dso_local i64 @ext4_should_journal_data(%struct.inode*) #1

declare dso_local i32 @ext4_walk_page_buffers(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @page_buffers(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @ext4_orphan_add(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_write_unlock_xattr(%struct.inode*, i32*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @ext4_truncate_failed_write(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_del(i32*, %struct.inode*) #1

declare dso_local i64 @ext4_should_retry_alloc(i32, i32*) #1

declare dso_local i32 @block_commit_write(%struct.page*, i32, i32) #1

declare dso_local i32 @brelse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
