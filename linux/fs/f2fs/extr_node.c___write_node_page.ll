; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___write_node_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___write_node_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64 }
%struct.writeback_control = type { i64, i64 }
%struct.f2fs_sb_info = type { i32 }
%struct.node_info = type { i64 }
%struct.f2fs_io_info = type { i32, i32, i32, i64, i32, %struct.writeback_control*, i32*, %struct.page*, i32, i32, i32, %struct.f2fs_sb_info* }

@REQ_OP_WRITE = common dso_local global i32 0, align 4
@NODE = common dso_local global i32 0, align 4
@SBI_POR_DOING = common dso_local global i32 0, align 4
@SBI_CP_DISABLED = common dso_local global i32 0, align 4
@WB_SYNC_NONE = common dso_local global i64 0, align 8
@NULL_ADDR = common dso_local global i64 0, align 8
@F2FS_DIRTY_NODES = common dso_local global i32 0, align 4
@DATA_GENERIC_ENHANCE = common dso_local global i32 0, align 4
@NOBARRIER = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4
@AOP_WRITEPAGE_ACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32, i32*, %struct.writeback_control*, i32, i32, i32*)* @__write_node_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__write_node_page(%struct.page* %0, i32 %1, i32* %2, %struct.writeback_control* %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.writeback_control*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.f2fs_sb_info*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.node_info, align 8
  %19 = alloca %struct.f2fs_io_info, align 8
  %20 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store %struct.writeback_control* %3, %struct.writeback_control** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %21 = load %struct.page*, %struct.page** %9, align 8
  %22 = call %struct.f2fs_sb_info* @F2FS_P_SB(%struct.page* %21)
  store %struct.f2fs_sb_info* %22, %struct.f2fs_sb_info** %16, align 8
  %23 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %19, i32 0, i32 0
  %24 = load %struct.writeback_control*, %struct.writeback_control** %12, align 8
  %25 = call i32 @wbc_to_write_flags(%struct.writeback_control* %24)
  store i32 %25, i32* %23, align 8
  %26 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %19, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %19, i32 0, i32 2
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %19, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %19, i32 0, i32 4
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %19, i32 0, i32 5
  %32 = load %struct.writeback_control*, %struct.writeback_control** %12, align 8
  store %struct.writeback_control* %32, %struct.writeback_control** %31, align 8
  %33 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %19, i32 0, i32 6
  store i32* null, i32** %33, align 8
  %34 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %19, i32 0, i32 7
  %35 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %35, %struct.page** %34, align 8
  %36 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %19, i32 0, i32 8
  %37 = load i32, i32* @REQ_OP_WRITE, align 4
  store i32 %37, i32* %36, align 8
  %38 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %19, i32 0, i32 9
  %39 = load i32, i32* @NODE, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %19, i32 0, i32 10
  %41 = load %struct.page*, %struct.page** %9, align 8
  %42 = call i32 @ino_of_node(%struct.page* %41)
  store i32 %42, i32* %40, align 8
  %43 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %19, i32 0, i32 11
  %44 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  store %struct.f2fs_sb_info* %44, %struct.f2fs_sb_info** %43, align 8
  %45 = load %struct.page*, %struct.page** %9, align 8
  %46 = load i32, i32* @NODE, align 4
  %47 = call i32 @trace_f2fs_writepage(%struct.page* %45, i32 %46)
  %48 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %49 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %48)
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %7
  br label %233

53:                                               ; preds = %7
  %54 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %55 = load i32, i32* @SBI_POR_DOING, align 4
  %56 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %54, i32 %55)
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %233

60:                                               ; preds = %53
  %61 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %62 = load i32, i32* @SBI_CP_DISABLED, align 4
  %63 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %60
  %66 = load %struct.writeback_control*, %struct.writeback_control** %12, align 8
  %67 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @WB_SYNC_NONE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.page*, %struct.page** %9, align 8
  %73 = call i64 @IS_DNODE(%struct.page* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load %struct.page*, %struct.page** %9, align 8
  %77 = call i64 @is_cold_node(%struct.page* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %233

80:                                               ; preds = %75, %71, %65, %60
  %81 = load %struct.page*, %struct.page** %9, align 8
  %82 = call i64 @nid_of_node(%struct.page* %81)
  store i64 %82, i64* %17, align 8
  %83 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %84 = load %struct.page*, %struct.page** %9, align 8
  %85 = getelementptr inbounds %struct.page, %struct.page* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %17, align 8
  %88 = icmp ne i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %83, i32 %89)
  %91 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %92 = load i64, i64* %17, align 8
  %93 = call i64 @f2fs_get_node_info(%struct.f2fs_sb_info* %91, i64 %92, %struct.node_info* %18)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %80
  br label %233

96:                                               ; preds = %80
  %97 = load %struct.writeback_control*, %struct.writeback_control** %12, align 8
  %98 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %103 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %102, i32 0, i32 0
  %104 = call i32 @down_read_trylock(i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  br label %233

107:                                              ; preds = %101
  br label %112

108:                                              ; preds = %96
  %109 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %110 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %109, i32 0, i32 0
  %111 = call i32 @down_read(i32* %110)
  br label %112

112:                                              ; preds = %108, %107
  %113 = getelementptr inbounds %struct.node_info, %struct.node_info* %18, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @NULL_ADDR, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %112
  %121 = load %struct.page*, %struct.page** %9, align 8
  %122 = call i32 @ClearPageUptodate(%struct.page* %121)
  %123 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %124 = load i32, i32* @F2FS_DIRTY_NODES, align 4
  %125 = call i32 @dec_page_count(%struct.f2fs_sb_info* %123, i32 %124)
  %126 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %127 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %126, i32 0, i32 0
  %128 = call i32 @up_read(i32* %127)
  %129 = load %struct.page*, %struct.page** %9, align 8
  %130 = call i32 @unlock_page(%struct.page* %129)
  store i32 0, i32* %8, align 4
  br label %238

131:                                              ; preds = %112
  %132 = getelementptr inbounds %struct.node_info, %struct.node_info* %18, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i64 @__is_valid_data_blkaddr(i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %131
  %137 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %138 = getelementptr inbounds %struct.node_info, %struct.node_info* %18, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* @DATA_GENERIC_ENHANCE, align 4
  %141 = call i32 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info* %137, i64 %139, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %136
  %144 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %145 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %144, i32 0, i32 0
  %146 = call i32 @up_read(i32* %145)
  br label %233

147:                                              ; preds = %136, %131
  %148 = load i32, i32* %10, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %147
  %151 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %152 = load i32, i32* @NOBARRIER, align 4
  %153 = call i32 @test_opt(%struct.f2fs_sb_info* %151, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %150
  %156 = load i32, i32* @REQ_PREFLUSH, align 4
  %157 = load i32, i32* @REQ_FUA, align 4
  %158 = or i32 %156, %157
  %159 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %19, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %158
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %155, %150, %147
  %163 = load %struct.page*, %struct.page** %9, align 8
  %164 = call i32 @set_page_writeback(%struct.page* %163)
  %165 = load %struct.page*, %struct.page** %9, align 8
  %166 = call i32 @ClearPageError(%struct.page* %165)
  %167 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %168 = load %struct.page*, %struct.page** %9, align 8
  %169 = call i64 @f2fs_in_warm_node_list(%struct.f2fs_sb_info* %167, %struct.page* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %162
  %172 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %173 = load %struct.page*, %struct.page** %9, align 8
  %174 = call i32 @f2fs_add_fsync_node_entry(%struct.f2fs_sb_info* %172, %struct.page* %173)
  store i32 %174, i32* %20, align 4
  %175 = load i32*, i32** %15, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = load i32, i32* %20, align 4
  %179 = load i32*, i32** %15, align 8
  store i32 %178, i32* %179, align 4
  br label %180

180:                                              ; preds = %177, %171
  br label %181

181:                                              ; preds = %180, %162
  %182 = getelementptr inbounds %struct.node_info, %struct.node_info* %18, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %19, i32 0, i32 3
  store i64 %183, i64* %184, align 8
  %185 = load i64, i64* %17, align 8
  %186 = call i32 @f2fs_do_write_node_page(i64 %185, %struct.f2fs_io_info* %19)
  %187 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %188 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %19, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.page*, %struct.page** %9, align 8
  %191 = call i32 @is_fsync_dnode(%struct.page* %190)
  %192 = call i32 @set_node_addr(%struct.f2fs_sb_info* %187, %struct.node_info* %18, i32 %189, i32 %191)
  %193 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %194 = load i32, i32* @F2FS_DIRTY_NODES, align 4
  %195 = call i32 @dec_page_count(%struct.f2fs_sb_info* %193, i32 %194)
  %196 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %197 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %196, i32 0, i32 0
  %198 = call i32 @up_read(i32* %197)
  %199 = load %struct.writeback_control*, %struct.writeback_control** %12, align 8
  %200 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %181
  %204 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %205 = load %struct.page*, %struct.page** %9, align 8
  %206 = load i32, i32* @NODE, align 4
  %207 = call i32 @f2fs_submit_merged_write_cond(%struct.f2fs_sb_info* %204, i32* null, %struct.page* %205, i32 0, i32 %206)
  store i32* null, i32** %11, align 8
  br label %208

208:                                              ; preds = %203, %181
  %209 = load %struct.page*, %struct.page** %9, align 8
  %210 = call i32 @unlock_page(%struct.page* %209)
  %211 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %212 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %211)
  %213 = call i64 @unlikely(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %208
  %216 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %217 = load i32, i32* @NODE, align 4
  %218 = call i32 @f2fs_submit_merged_write(%struct.f2fs_sb_info* %216, i32 %217)
  store i32* null, i32** %11, align 8
  br label %219

219:                                              ; preds = %215, %208
  %220 = load i32*, i32** %11, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %19, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32*, i32** %11, align 8
  store i32 %224, i32* %225, align 4
  br label %226

226:                                              ; preds = %222, %219
  %227 = load i32, i32* %13, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %231 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %230, i32 0)
  br label %232

232:                                              ; preds = %229, %226
  store i32 0, i32* %8, align 4
  br label %238

233:                                              ; preds = %143, %106, %95, %79, %59, %52
  %234 = load %struct.writeback_control*, %struct.writeback_control** %12, align 8
  %235 = load %struct.page*, %struct.page** %9, align 8
  %236 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %234, %struct.page* %235)
  %237 = load i32, i32* @AOP_WRITEPAGE_ACTIVATE, align 4
  store i32 %237, i32* %8, align 4
  br label %238

238:                                              ; preds = %233, %232, %120
  %239 = load i32, i32* %8, align 4
  ret i32 %239
}

declare dso_local %struct.f2fs_sb_info* @F2FS_P_SB(%struct.page*) #1

declare dso_local i32 @wbc_to_write_flags(%struct.writeback_control*) #1

declare dso_local i32 @ino_of_node(%struct.page*) #1

declare dso_local i32 @trace_f2fs_writepage(%struct.page*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

declare dso_local i32 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_DNODE(%struct.page*) #1

declare dso_local i64 @is_cold_node(%struct.page*) #1

declare dso_local i64 @nid_of_node(%struct.page*) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @f2fs_get_node_info(%struct.f2fs_sb_info*, i64, %struct.node_info*) #1

declare dso_local i32 @down_read_trylock(i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @dec_page_count(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i64 @__is_valid_data_blkaddr(i64) #1

declare dso_local i32 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info*, i64, i32) #1

declare dso_local i32 @test_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @set_page_writeback(%struct.page*) #1

declare dso_local i32 @ClearPageError(%struct.page*) #1

declare dso_local i64 @f2fs_in_warm_node_list(%struct.f2fs_sb_info*, %struct.page*) #1

declare dso_local i32 @f2fs_add_fsync_node_entry(%struct.f2fs_sb_info*, %struct.page*) #1

declare dso_local i32 @f2fs_do_write_node_page(i64, %struct.f2fs_io_info*) #1

declare dso_local i32 @set_node_addr(%struct.f2fs_sb_info*, %struct.node_info*, i32, i32) #1

declare dso_local i32 @is_fsync_dnode(%struct.page*) #1

declare dso_local i32 @f2fs_submit_merged_write_cond(%struct.f2fs_sb_info*, i32*, %struct.page*, i32, i32) #1

declare dso_local i32 @f2fs_submit_merged_write(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
