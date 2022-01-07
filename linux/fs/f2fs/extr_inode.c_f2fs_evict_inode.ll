; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c_f2fs_evict_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c_f2fs_evict_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, i32, i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.TYPE_2__ = type { i64 }

@SBI_QUOTA_NEED_REPAIR = common dso_local global i32 0, align 4
@APPEND_INO = common dso_local global i32 0, align 4
@UPDATE_INO = common dso_local global i32 0, align 4
@FLUSH_INO = common dso_local global i32 0, align 4
@FI_NO_ALLOC = common dso_local global i32 0, align 4
@FAULT_EVICT_INODE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SBI_CP_DISABLED = common dso_local global i32 0, align 4
@FI_DIRTY_INODE = common dso_local global i32 0, align 4
@FI_APPEND_WRITE = common dso_local global i32 0, align 4
@FI_UPDATE_WRITE = common dso_local global i32 0, align 4
@FI_FREE_NID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_evict_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %6)
  store %struct.f2fs_sb_info* %7, %struct.f2fs_sb_info** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = call i64 @f2fs_is_atomic_file(%struct.inode* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = call i32 @f2fs_drop_inmem_pages(%struct.inode* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = call i32 @trace_f2fs_evict_inode(%struct.inode* %19)
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 3
  %23 = call i32 @truncate_inode_pages_final(i32* %22)
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %28 = call i64 @F2FS_NODE_INO(%struct.f2fs_sb_info* %27)
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %18
  %31 = load %struct.inode*, %struct.inode** %2, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %35 = call i64 @F2FS_META_INO(%struct.f2fs_sb_info* %34)
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %18
  br label %253

38:                                               ; preds = %30
  %39 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %40 = load %struct.inode*, %struct.inode** %2, align 8
  %41 = call i64 @get_dirty_pages(%struct.inode* %40)
  %42 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %39, i64 %41)
  %43 = load %struct.inode*, %struct.inode** %2, align 8
  %44 = call i32 @f2fs_remove_dirty_inode(%struct.inode* %43)
  %45 = load %struct.inode*, %struct.inode** %2, align 8
  %46 = call i32 @f2fs_destroy_extent_tree(%struct.inode* %45)
  %47 = load %struct.inode*, %struct.inode** %2, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %38
  %52 = load %struct.inode*, %struct.inode** %2, align 8
  %53 = call i64 @is_bad_inode(%struct.inode* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %38
  br label %151

56:                                               ; preds = %51
  %57 = load %struct.inode*, %struct.inode** %2, align 8
  %58 = call i32 @dquot_initialize(%struct.inode* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  %62 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %63 = load i32, i32* @SBI_QUOTA_NEED_REPAIR, align 4
  %64 = call i32 @set_sbi_flag(%struct.f2fs_sb_info* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %56
  %66 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %67 = load %struct.inode*, %struct.inode** %2, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @APPEND_INO, align 4
  %71 = call i32 @f2fs_remove_ino_entry(%struct.f2fs_sb_info* %66, i64 %69, i32 %70)
  %72 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %73 = load %struct.inode*, %struct.inode** %2, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @UPDATE_INO, align 4
  %77 = call i32 @f2fs_remove_ino_entry(%struct.f2fs_sb_info* %72, i64 %75, i32 %76)
  %78 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %79 = load %struct.inode*, %struct.inode** %2, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @FLUSH_INO, align 4
  %83 = call i32 @f2fs_remove_ino_entry(%struct.f2fs_sb_info* %78, i64 %81, i32 %82)
  %84 = load %struct.inode*, %struct.inode** %2, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @sb_start_intwrite(i32 %86)
  %88 = load %struct.inode*, %struct.inode** %2, align 8
  %89 = load i32, i32* @FI_NO_ALLOC, align 4
  %90 = call i32 @set_inode_flag(%struct.inode* %88, i32 %89)
  %91 = load %struct.inode*, %struct.inode** %2, align 8
  %92 = call i32 @i_size_write(%struct.inode* %91, i32 0)
  br label %93

93:                                               ; preds = %131, %65
  %94 = load %struct.inode*, %struct.inode** %2, align 8
  %95 = call i64 @F2FS_HAS_BLOCKS(%struct.inode* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load %struct.inode*, %struct.inode** %2, align 8
  %99 = call i32 @f2fs_truncate(%struct.inode* %98)
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %97, %93
  %101 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %102 = load i32, i32* @FAULT_EVICT_INODE, align 4
  %103 = call i64 @time_to_inject(%struct.f2fs_sb_info* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load i32, i32* @FAULT_EVICT_INODE, align 4
  %107 = call i32 @f2fs_show_injection_info(i32 %106)
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %105, %100
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %126, label %113

113:                                              ; preds = %110
  %114 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %115 = call i32 @f2fs_lock_op(%struct.f2fs_sb_info* %114)
  %116 = load %struct.inode*, %struct.inode** %2, align 8
  %117 = call i32 @f2fs_remove_inode_page(%struct.inode* %116)
  store i32 %117, i32* %5, align 4
  %118 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %119 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %118)
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @ENOENT, align 4
  %122 = sub nsw i32 0, %121
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %113
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %124, %113
  br label %126

126:                                              ; preds = %125, %110
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  store i32 0, i32* %5, align 4
  br label %93

132:                                              ; preds = %126
  %133 = load i32, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %132
  %136 = load %struct.inode*, %struct.inode** %2, align 8
  %137 = call i32 @f2fs_update_inode_page(%struct.inode* %136)
  %138 = load %struct.inode*, %struct.inode** %2, align 8
  %139 = call i64 @dquot_initialize_needed(%struct.inode* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %143 = load i32, i32* @SBI_QUOTA_NEED_REPAIR, align 4
  %144 = call i32 @set_sbi_flag(%struct.f2fs_sb_info* %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %135
  br label %146

146:                                              ; preds = %145, %132
  %147 = load %struct.inode*, %struct.inode** %2, align 8
  %148 = getelementptr inbounds %struct.inode, %struct.inode* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @sb_end_intwrite(i32 %149)
  br label %151

151:                                              ; preds = %146, %55
  %152 = load %struct.inode*, %struct.inode** %2, align 8
  %153 = call i32 @dquot_drop(%struct.inode* %152)
  %154 = load %struct.inode*, %struct.inode** %2, align 8
  %155 = call i32 @stat_dec_inline_xattr(%struct.inode* %154)
  %156 = load %struct.inode*, %struct.inode** %2, align 8
  %157 = call i32 @stat_dec_inline_dir(%struct.inode* %156)
  %158 = load %struct.inode*, %struct.inode** %2, align 8
  %159 = call i32 @stat_dec_inline_inode(%struct.inode* %158)
  %160 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %161 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %151
  %164 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %165 = load i32, i32* @SBI_CP_DISABLED, align 4
  %166 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %164, i32 %165)
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  br label %169

169:                                              ; preds = %163, %151
  %170 = phi i1 [ false, %151 ], [ %168, %163 ]
  %171 = zext i1 %170 to i32
  %172 = call i64 @likely(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %176 = load %struct.inode*, %struct.inode** %2, align 8
  %177 = load i32, i32* @FI_DIRTY_INODE, align 4
  %178 = call i64 @is_inode_flag_set(%struct.inode* %176, i32 %177)
  %179 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %175, i64 %178)
  br label %183

180:                                              ; preds = %169
  %181 = load %struct.inode*, %struct.inode** %2, align 8
  %182 = call i32 @f2fs_inode_synced(%struct.inode* %181)
  br label %183

183:                                              ; preds = %180, %174
  %184 = load %struct.inode*, %struct.inode** %2, align 8
  %185 = getelementptr inbounds %struct.inode, %struct.inode* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %198

188:                                              ; preds = %183
  %189 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %190 = call i32 @NODE_MAPPING(%struct.f2fs_sb_info* %189)
  %191 = load %struct.inode*, %struct.inode** %2, align 8
  %192 = getelementptr inbounds %struct.inode, %struct.inode* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.inode*, %struct.inode** %2, align 8
  %195 = getelementptr inbounds %struct.inode, %struct.inode* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @invalidate_mapping_pages(i32 %190, i64 %193, i64 %196)
  br label %198

198:                                              ; preds = %188, %183
  %199 = load i64, i64* %4, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %198
  %202 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %203 = call i32 @NODE_MAPPING(%struct.f2fs_sb_info* %202)
  %204 = load i64, i64* %4, align 8
  %205 = load i64, i64* %4, align 8
  %206 = call i32 @invalidate_mapping_pages(i32 %203, i64 %204, i64 %205)
  br label %207

207:                                              ; preds = %201, %198
  %208 = load %struct.inode*, %struct.inode** %2, align 8
  %209 = getelementptr inbounds %struct.inode, %struct.inode* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %237

212:                                              ; preds = %207
  %213 = load %struct.inode*, %struct.inode** %2, align 8
  %214 = load i32, i32* @FI_APPEND_WRITE, align 4
  %215 = call i64 @is_inode_flag_set(%struct.inode* %213, i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %212
  %218 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %219 = load %struct.inode*, %struct.inode** %2, align 8
  %220 = getelementptr inbounds %struct.inode, %struct.inode* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i32, i32* @APPEND_INO, align 4
  %223 = call i32 @f2fs_add_ino_entry(%struct.f2fs_sb_info* %218, i64 %221, i32 %222)
  br label %224

224:                                              ; preds = %217, %212
  %225 = load %struct.inode*, %struct.inode** %2, align 8
  %226 = load i32, i32* @FI_UPDATE_WRITE, align 4
  %227 = call i64 @is_inode_flag_set(%struct.inode* %225, i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %224
  %230 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %231 = load %struct.inode*, %struct.inode** %2, align 8
  %232 = getelementptr inbounds %struct.inode, %struct.inode* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i32, i32* @UPDATE_INO, align 4
  %235 = call i32 @f2fs_add_ino_entry(%struct.f2fs_sb_info* %230, i64 %233, i32 %234)
  br label %236

236:                                              ; preds = %229, %224
  br label %237

237:                                              ; preds = %236, %207
  %238 = load %struct.inode*, %struct.inode** %2, align 8
  %239 = load i32, i32* @FI_FREE_NID, align 4
  %240 = call i64 @is_inode_flag_set(%struct.inode* %238, i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %237
  %243 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %244 = load %struct.inode*, %struct.inode** %2, align 8
  %245 = getelementptr inbounds %struct.inode, %struct.inode* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = call i32 @f2fs_alloc_nid_failed(%struct.f2fs_sb_info* %243, i64 %246)
  %248 = load %struct.inode*, %struct.inode** %2, align 8
  %249 = load i32, i32* @FI_FREE_NID, align 4
  %250 = call i32 @clear_inode_flag(%struct.inode* %248, i32 %249)
  br label %252

251:                                              ; preds = %237
  br label %252

252:                                              ; preds = %251, %242
  br label %253

253:                                              ; preds = %252, %37
  %254 = load %struct.inode*, %struct.inode** %2, align 8
  %255 = call i32 @fscrypt_put_encryption_info(%struct.inode* %254)
  %256 = load %struct.inode*, %struct.inode** %2, align 8
  %257 = call i32 @fsverity_cleanup_inode(%struct.inode* %256)
  %258 = load %struct.inode*, %struct.inode** %2, align 8
  %259 = call i32 @clear_inode(%struct.inode* %258)
  ret void
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i64 @f2fs_is_atomic_file(%struct.inode*) #1

declare dso_local i32 @f2fs_drop_inmem_pages(%struct.inode*) #1

declare dso_local i32 @trace_f2fs_evict_inode(%struct.inode*) #1

declare dso_local i32 @truncate_inode_pages_final(i32*) #1

declare dso_local i64 @F2FS_NODE_INO(%struct.f2fs_sb_info*) #1

declare dso_local i64 @F2FS_META_INO(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i64) #1

declare dso_local i64 @get_dirty_pages(%struct.inode*) #1

declare dso_local i32 @f2fs_remove_dirty_inode(%struct.inode*) #1

declare dso_local i32 @f2fs_destroy_extent_tree(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @set_sbi_flag(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_remove_ino_entry(%struct.f2fs_sb_info*, i64, i32) #1

declare dso_local i32 @sb_start_intwrite(i32) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i64 @F2FS_HAS_BLOCKS(%struct.inode*) #1

declare dso_local i32 @f2fs_truncate(%struct.inode*) #1

declare dso_local i64 @time_to_inject(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_show_injection_info(i32) #1

declare dso_local i32 @f2fs_lock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_remove_inode_page(%struct.inode*) #1

declare dso_local i32 @f2fs_unlock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_update_inode_page(%struct.inode*) #1

declare dso_local i64 @dquot_initialize_needed(%struct.inode*) #1

declare dso_local i32 @sb_end_intwrite(i32) #1

declare dso_local i32 @dquot_drop(%struct.inode*) #1

declare dso_local i32 @stat_dec_inline_xattr(%struct.inode*) #1

declare dso_local i32 @stat_dec_inline_dir(%struct.inode*) #1

declare dso_local i32 @stat_dec_inline_inode(%struct.inode*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

declare dso_local i32 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_inode_synced(%struct.inode*) #1

declare dso_local i32 @invalidate_mapping_pages(i32, i64, i64) #1

declare dso_local i32 @NODE_MAPPING(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_add_ino_entry(%struct.f2fs_sb_info*, i64, i32) #1

declare dso_local i32 @f2fs_alloc_nid_failed(%struct.f2fs_sb_info*, i64) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @fscrypt_put_encryption_info(%struct.inode*) #1

declare dso_local i32 @fsverity_cleanup_inode(%struct.inode*) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
