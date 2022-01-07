; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_write_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, i32, i64 }
%struct.page = type { %struct.address_space* }

@EIO = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EXT4_STATE_MAY_INLINE_DATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EXT4_HT_WRITE_PAGE = common dso_local global i32 0, align 4
@ext4_get_block_unwritten = common dso_local global i32 0, align 4
@ext4_get_block = common dso_local global i32 0, align 4
@do_journal_get_write_access = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**)* @ext4_write_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_write_begin(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.page*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page** %5, %struct.page*** %14, align 8
  store i8** %6, i8*** %15, align 8
  %26 = load %struct.address_space*, %struct.address_space** %10, align 8
  %27 = getelementptr inbounds %struct.address_space, %struct.address_space* %26, i32 0, i32 0
  %28 = load %struct.inode*, %struct.inode** %27, align 8
  store %struct.inode* %28, %struct.inode** %16, align 8
  store i32 0, i32* %20, align 4
  %29 = load %struct.inode*, %struct.inode** %16, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @EXT4_SB(i32 %31)
  %33 = call i32 @ext4_forced_shutdown(i32 %32)
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %7
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %221

39:                                               ; preds = %7
  %40 = load %struct.inode*, %struct.inode** %16, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @trace_ext4_write_begin(%struct.inode* %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.inode*, %struct.inode** %16, align 8
  %46 = call i32 @ext4_writepage_trans_blocks(%struct.inode* %45)
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @PAGE_SHIFT, align 4
  %50 = ashr i32 %48, %49
  store i32 %50, i32* %22, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = sub nsw i32 %52, 1
  %54 = and i32 %51, %53
  store i32 %54, i32* %23, align 4
  %55 = load i32, i32* %23, align 4
  %56 = load i32, i32* %12, align 4
  %57 = add i32 %55, %56
  store i32 %57, i32* %24, align 4
  %58 = load %struct.inode*, %struct.inode** %16, align 8
  %59 = load i32, i32* @EXT4_STATE_MAY_INLINE_DATA, align 4
  %60 = call i64 @ext4_test_inode_state(%struct.inode* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %39
  %63 = load %struct.address_space*, %struct.address_space** %10, align 8
  %64 = load %struct.inode*, %struct.inode** %16, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.page**, %struct.page*** %14, align 8
  %69 = call i32 @ext4_try_to_write_inline_data(%struct.address_space* %63, %struct.inode* %64, i32 %65, i32 %66, i32 %67, %struct.page** %68)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i32, i32* %17, align 4
  store i32 %73, i32* %8, align 4
  br label %221

74:                                               ; preds = %62
  %75 = load i32, i32* %17, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 0, i32* %8, align 4
  br label %221

78:                                               ; preds = %74
  br label %79

79:                                               ; preds = %78, %39
  br label %80

80:                                               ; preds = %114, %79
  %81 = load %struct.address_space*, %struct.address_space** %10, align 8
  %82 = load i32, i32* %22, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %81, i32 %82, i32 %83)
  store %struct.page* %84, %struct.page** %21, align 8
  %85 = load %struct.page*, %struct.page** %21, align 8
  %86 = icmp ne %struct.page* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  br label %221

90:                                               ; preds = %80
  %91 = load %struct.page*, %struct.page** %21, align 8
  %92 = call i32 @unlock_page(%struct.page* %91)
  br label %93

93:                                               ; preds = %212, %90
  %94 = load %struct.inode*, %struct.inode** %16, align 8
  %95 = load i32, i32* @EXT4_HT_WRITE_PAGE, align 4
  %96 = load i32, i32* %18, align 4
  %97 = call i32* @ext4_journal_start(%struct.inode* %94, i32 %95, i32 %96)
  store i32* %97, i32** %19, align 8
  %98 = load i32*, i32** %19, align 8
  %99 = call i64 @IS_ERR(i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load %struct.page*, %struct.page** %21, align 8
  %103 = call i32 @put_page(%struct.page* %102)
  %104 = load i32*, i32** %19, align 8
  %105 = call i32 @PTR_ERR(i32* %104)
  store i32 %105, i32* %8, align 4
  br label %221

106:                                              ; preds = %93
  %107 = load %struct.page*, %struct.page** %21, align 8
  %108 = call i32 @lock_page(%struct.page* %107)
  %109 = load %struct.page*, %struct.page** %21, align 8
  %110 = getelementptr inbounds %struct.page, %struct.page* %109, i32 0, i32 0
  %111 = load %struct.address_space*, %struct.address_space** %110, align 8
  %112 = load %struct.address_space*, %struct.address_space** %10, align 8
  %113 = icmp ne %struct.address_space* %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %106
  %115 = load %struct.page*, %struct.page** %21, align 8
  %116 = call i32 @unlock_page(%struct.page* %115)
  %117 = load %struct.page*, %struct.page** %21, align 8
  %118 = call i32 @put_page(%struct.page* %117)
  %119 = load i32*, i32** %19, align 8
  %120 = call i32 @ext4_journal_stop(i32* %119)
  br label %80

121:                                              ; preds = %106
  %122 = load %struct.page*, %struct.page** %21, align 8
  %123 = call i32 @wait_for_stable_page(%struct.page* %122)
  %124 = load %struct.inode*, %struct.inode** %16, align 8
  %125 = call i64 @ext4_should_dioread_nolock(%struct.inode* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load %struct.page*, %struct.page** %21, align 8
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* @ext4_get_block_unwritten, align 4
  %132 = call i32 @__block_write_begin(%struct.page* %128, i32 %129, i32 %130, i32 %131)
  store i32 %132, i32* %17, align 4
  br label %139

133:                                              ; preds = %121
  %134 = load %struct.page*, %struct.page** %21, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* @ext4_get_block, align 4
  %138 = call i32 @__block_write_begin(%struct.page* %134, i32 %135, i32 %136, i32 %137)
  store i32 %138, i32* %17, align 4
  br label %139

139:                                              ; preds = %133, %127
  %140 = load i32, i32* %17, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %154, label %142

142:                                              ; preds = %139
  %143 = load %struct.inode*, %struct.inode** %16, align 8
  %144 = call i64 @ext4_should_journal_data(%struct.inode* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %142
  %147 = load i32*, i32** %19, align 8
  %148 = load %struct.page*, %struct.page** %21, align 8
  %149 = call i32 @page_buffers(%struct.page* %148)
  %150 = load i32, i32* %23, align 4
  %151 = load i32, i32* %24, align 4
  %152 = load i32, i32* @do_journal_get_write_access, align 4
  %153 = call i32 @ext4_walk_page_buffers(i32* %147, i32 %149, i32 %150, i32 %151, i32* null, i32 %152)
  store i32 %153, i32* %17, align 4
  br label %154

154:                                              ; preds = %146, %142, %139
  %155 = load i32, i32* %17, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %217

157:                                              ; preds = %154
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %12, align 4
  %160 = add i32 %158, %159
  %161 = load %struct.inode*, %struct.inode** %16, align 8
  %162 = getelementptr inbounds %struct.inode, %struct.inode* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp ugt i32 %160, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %157
  %166 = load %struct.inode*, %struct.inode** %16, align 8
  %167 = call i32 @ext4_verity_in_progress(%struct.inode* %166)
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  br label %170

170:                                              ; preds = %165, %157
  %171 = phi i1 [ false, %157 ], [ %169, %165 ]
  %172 = zext i1 %171 to i32
  store i32 %172, i32* %25, align 4
  %173 = load %struct.page*, %struct.page** %21, align 8
  %174 = call i32 @unlock_page(%struct.page* %173)
  %175 = load i32, i32* %25, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %170
  %178 = load %struct.inode*, %struct.inode** %16, align 8
  %179 = call i64 @ext4_can_truncate(%struct.inode* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = load i32*, i32** %19, align 8
  %183 = load %struct.inode*, %struct.inode** %16, align 8
  %184 = call i32 @ext4_orphan_add(i32* %182, %struct.inode* %183)
  br label %185

185:                                              ; preds = %181, %177, %170
  %186 = load i32*, i32** %19, align 8
  %187 = call i32 @ext4_journal_stop(i32* %186)
  %188 = load i32, i32* %25, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %185
  %191 = load %struct.inode*, %struct.inode** %16, align 8
  %192 = call i32 @ext4_truncate_failed_write(%struct.inode* %191)
  %193 = load %struct.inode*, %struct.inode** %16, align 8
  %194 = getelementptr inbounds %struct.inode, %struct.inode* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %190
  %198 = load %struct.inode*, %struct.inode** %16, align 8
  %199 = call i32 @ext4_orphan_del(i32* null, %struct.inode* %198)
  br label %200

200:                                              ; preds = %197, %190
  br label %201

201:                                              ; preds = %200, %185
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* @ENOSPC, align 4
  %204 = sub nsw i32 0, %203
  %205 = icmp eq i32 %202, %204
  br i1 %205, label %206, label %213

206:                                              ; preds = %201
  %207 = load %struct.inode*, %struct.inode** %16, align 8
  %208 = getelementptr inbounds %struct.inode, %struct.inode* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i64 @ext4_should_retry_alloc(i32 %209, i32* %20)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  br label %93

213:                                              ; preds = %206, %201
  %214 = load %struct.page*, %struct.page** %21, align 8
  %215 = call i32 @put_page(%struct.page* %214)
  %216 = load i32, i32* %17, align 4
  store i32 %216, i32* %8, align 4
  br label %221

217:                                              ; preds = %154
  %218 = load %struct.page*, %struct.page** %21, align 8
  %219 = load %struct.page**, %struct.page*** %14, align 8
  store %struct.page* %218, %struct.page** %219, align 8
  %220 = load i32, i32* %17, align 4
  store i32 %220, i32* %8, align 4
  br label %221

221:                                              ; preds = %217, %213, %101, %87, %77, %72, %36
  %222 = load i32, i32* %8, align 4
  ret i32 %222
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_forced_shutdown(i32) #1

declare dso_local i32 @EXT4_SB(i32) #1

declare dso_local i32 @trace_ext4_write_begin(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @ext4_writepage_trans_blocks(%struct.inode*) #1

declare dso_local i64 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_try_to_write_inline_data(%struct.address_space*, %struct.inode*, i32, i32, i32, %struct.page**) #1

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @wait_for_stable_page(%struct.page*) #1

declare dso_local i64 @ext4_should_dioread_nolock(%struct.inode*) #1

declare dso_local i32 @__block_write_begin(%struct.page*, i32, i32, i32) #1

declare dso_local i64 @ext4_should_journal_data(%struct.inode*) #1

declare dso_local i32 @ext4_walk_page_buffers(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @page_buffers(%struct.page*) #1

declare dso_local i32 @ext4_verity_in_progress(%struct.inode*) #1

declare dso_local i64 @ext4_can_truncate(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_add(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_truncate_failed_write(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_del(i32*, %struct.inode*) #1

declare dso_local i64 @ext4_should_retry_alloc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
