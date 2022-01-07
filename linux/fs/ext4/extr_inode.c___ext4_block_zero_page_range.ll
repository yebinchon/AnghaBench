; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c___ext4_block_zero_page_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c___ext4_block_zero_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.buffer_head = type { %struct.buffer_head* }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@__GFP_FS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"freed: skip\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"unmapped\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"still unmapped\00", align 1
@EIO = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"get write access\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"zeroed end of block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.address_space*, i32, i32)* @__ext4_block_zero_page_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ext4_block_zero_page_range(i32* %0, %struct.address_space* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.address_space* %1, %struct.address_space** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = ashr i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %22, %24
  store i32 %25, i32* %11, align 4
  %26 = load %struct.address_space*, %struct.address_space** %7, align 8
  %27 = getelementptr inbounds %struct.address_space, %struct.address_space* %26, i32 0, i32 0
  %28 = load %struct.inode*, %struct.inode** %27, align 8
  store %struct.inode* %28, %struct.inode** %15, align 8
  store i32 0, i32* %18, align 4
  %29 = load %struct.address_space*, %struct.address_space** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @PAGE_SHIFT, align 4
  %32 = ashr i32 %30, %31
  %33 = load %struct.address_space*, %struct.address_space** %7, align 8
  %34 = load i32, i32* @__GFP_FS, align 4
  %35 = xor i32 %34, -1
  %36 = call i32 @mapping_gfp_constraint(%struct.address_space* %33, i32 %35)
  %37 = call %struct.page* @find_or_create_page(%struct.address_space* %29, i32 %32, i32 %36)
  store %struct.page* %37, %struct.page** %17, align 8
  %38 = load %struct.page*, %struct.page** %17, align 8
  %39 = icmp ne %struct.page* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %4
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %202

43:                                               ; preds = %4
  %44 = load %struct.inode*, %struct.inode** %15, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @PAGE_SHIFT, align 4
  %51 = load %struct.inode*, %struct.inode** %15, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %50, %55
  %57 = shl i32 %49, %56
  store i32 %57, i32* %14, align 4
  %58 = load %struct.page*, %struct.page** %17, align 8
  %59 = call i32 @page_has_buffers(%struct.page* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %43
  %62 = load %struct.page*, %struct.page** %17, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @create_empty_buffers(%struct.page* %62, i32 %63, i32 0)
  br label %65

65:                                               ; preds = %61, %43
  %66 = load %struct.page*, %struct.page** %17, align 8
  %67 = call %struct.buffer_head* @page_buffers(%struct.page* %66)
  store %struct.buffer_head* %67, %struct.buffer_head** %16, align 8
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %73, %65
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp uge i32 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %75 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %74, i32 0, i32 0
  %76 = load %struct.buffer_head*, %struct.buffer_head** %75, align 8
  store %struct.buffer_head* %76, %struct.buffer_head** %16, align 8
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = add i32 %80, %79
  store i32 %81, i32* %13, align 4
  br label %69

82:                                               ; preds = %69
  %83 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %84 = call i64 @buffer_freed(%struct.buffer_head* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %88 = call i32 @BUFFER_TRACE(%struct.buffer_head* %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %196

89:                                               ; preds = %82
  %90 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %91 = call i32 @buffer_mapped(%struct.buffer_head* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %107, label %93

93:                                               ; preds = %89
  %94 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %95 = call i32 @BUFFER_TRACE(%struct.buffer_head* %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %96 = load %struct.inode*, %struct.inode** %15, align 8
  %97 = load i32, i32* %14, align 4
  %98 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %99 = call i32 @ext4_get_block(%struct.inode* %96, i32 %97, %struct.buffer_head* %98, i32 0)
  %100 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %101 = call i32 @buffer_mapped(%struct.buffer_head* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %93
  %104 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %105 = call i32 @BUFFER_TRACE(%struct.buffer_head* %104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %196

106:                                              ; preds = %93
  br label %107

107:                                              ; preds = %106, %89
  %108 = load %struct.page*, %struct.page** %17, align 8
  %109 = call i64 @PageUptodate(%struct.page* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %113 = call i32 @set_buffer_uptodate(%struct.buffer_head* %112)
  br label %114

114:                                              ; preds = %111, %107
  %115 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %116 = call i32 @buffer_uptodate(%struct.buffer_head* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %153, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* @EIO, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %18, align 4
  %121 = load i32, i32* @REQ_OP_READ, align 4
  %122 = call i32 @ll_rw_block(i32 %121, i32 0, i32 1, %struct.buffer_head** %16)
  %123 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %124 = call i32 @wait_on_buffer(%struct.buffer_head* %123)
  %125 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %126 = call i32 @buffer_uptodate(%struct.buffer_head* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %118
  br label %196

129:                                              ; preds = %118
  %130 = load %struct.inode*, %struct.inode** %15, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @S_ISREG(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %129
  %136 = load %struct.inode*, %struct.inode** %15, align 8
  %137 = call i64 @IS_ENCRYPTED(%struct.inode* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %135
  %140 = load %struct.inode*, %struct.inode** %15, align 8
  %141 = call i32 @fscrypt_has_encryption_key(%struct.inode* %140)
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = call i32 @BUG_ON(i32 %144)
  %146 = load %struct.page*, %struct.page** %17, align 8
  %147 = load i32, i32* %12, align 4
  %148 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %149 = call i32 @bh_offset(%struct.buffer_head* %148)
  %150 = call i32 @fscrypt_decrypt_pagecache_blocks(%struct.page* %146, i32 %147, i32 %149)
  %151 = call i32 @WARN_ON_ONCE(i32 %150)
  br label %152

152:                                              ; preds = %139, %135, %129
  br label %153

153:                                              ; preds = %152, %114
  %154 = load %struct.inode*, %struct.inode** %15, align 8
  %155 = call i64 @ext4_should_journal_data(%struct.inode* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %153
  %158 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %159 = call i32 @BUFFER_TRACE(%struct.buffer_head* %158, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %160 = load i32*, i32** %6, align 8
  %161 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %162 = call i32 @ext4_journal_get_write_access(i32* %160, %struct.buffer_head* %161)
  store i32 %162, i32* %18, align 4
  %163 = load i32, i32* %18, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %157
  br label %196

166:                                              ; preds = %157
  br label %167

167:                                              ; preds = %166, %153
  %168 = load %struct.page*, %struct.page** %17, align 8
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @zero_user(%struct.page* %168, i32 %169, i32 %170)
  %172 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %173 = call i32 @BUFFER_TRACE(%struct.buffer_head* %172, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %174 = load %struct.inode*, %struct.inode** %15, align 8
  %175 = call i64 @ext4_should_journal_data(%struct.inode* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %167
  %178 = load i32*, i32** %6, align 8
  %179 = load %struct.inode*, %struct.inode** %15, align 8
  %180 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %181 = call i32 @ext4_handle_dirty_metadata(i32* %178, %struct.inode* %179, %struct.buffer_head* %180)
  store i32 %181, i32* %18, align 4
  br label %195

182:                                              ; preds = %167
  store i32 0, i32* %18, align 4
  %183 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %184 = call i32 @mark_buffer_dirty(%struct.buffer_head* %183)
  %185 = load %struct.inode*, %struct.inode** %15, align 8
  %186 = call i64 @ext4_should_order_data(%struct.inode* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %182
  %189 = load i32*, i32** %6, align 8
  %190 = load %struct.inode*, %struct.inode** %15, align 8
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @ext4_jbd2_inode_add_write(i32* %189, %struct.inode* %190, i32 %191, i32 %192)
  store i32 %193, i32* %18, align 4
  br label %194

194:                                              ; preds = %188, %182
  br label %195

195:                                              ; preds = %194, %177
  br label %196

196:                                              ; preds = %195, %165, %128, %103, %86
  %197 = load %struct.page*, %struct.page** %17, align 8
  %198 = call i32 @unlock_page(%struct.page* %197)
  %199 = load %struct.page*, %struct.page** %17, align 8
  %200 = call i32 @put_page(%struct.page* %199)
  %201 = load i32, i32* %18, align 4
  store i32 %201, i32* %5, align 4
  br label %202

202:                                              ; preds = %196, %40
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local %struct.page* @find_or_create_page(%struct.address_space*, i32, i32) #1

declare dso_local i32 @mapping_gfp_constraint(%struct.address_space*, i32) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i32) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i64 @buffer_freed(%struct.buffer_head*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @ext4_get_block(%struct.inode*, i32, %struct.buffer_head*, i32) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ll_rw_block(i32, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @fscrypt_has_encryption_key(%struct.inode*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @fscrypt_decrypt_pagecache_blocks(%struct.page*, i32, i32) #1

declare dso_local i32 @bh_offset(%struct.buffer_head*) #1

declare dso_local i64 @ext4_should_journal_data(%struct.inode*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @ext4_should_order_data(%struct.inode*) #1

declare dso_local i32 @ext4_jbd2_inode_add_write(i32*, %struct.inode*, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
