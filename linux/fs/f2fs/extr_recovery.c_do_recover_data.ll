; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_recovery.c_do_recover_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_recovery.c_do_recover_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.dnode_of_data = type { %struct.page*, i32, i32, i32 }
%struct.node_info = type { i64, i32 }

@ALLOC_NODE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BLK_RW_ASYNC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Inconsistent ofs_of_node, ino:%lu, ofs:%u, %u\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@META_POR = common dso_local global i32 0, align 4
@NULL_ADDR = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@NEW_ADDR = common dso_local global i64 0, align 8
@CONFIG_F2FS_FAULT_INJECTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"recover_data: ino = %lx (i_size: %s) recovered = %d, err = %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"recover\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, %struct.inode*, %struct.page*)* @do_recover_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_recover_data(%struct.f2fs_sb_info* %0, %struct.inode* %1, %struct.page* %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.dnode_of_data, align 8
  %8 = alloca %struct.node_info, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.page* %2, %struct.page** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.page*, %struct.page** %6, align 8
  %16 = call i64 @IS_INODE(%struct.page* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = load %struct.page*, %struct.page** %6, align 8
  %21 = call i32 @f2fs_recover_inline_xattr(%struct.inode* %19, %struct.page* %20)
  br label %38

22:                                               ; preds = %3
  %23 = load %struct.page*, %struct.page** %6, align 8
  %24 = call i64 @ofs_of_node(%struct.page* %23)
  %25 = call i64 @f2fs_has_xattr_block(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = load %struct.page*, %struct.page** %6, align 8
  %30 = call i32 @f2fs_recover_xattr_data(%struct.inode* %28, %struct.page* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %33, %27
  br label %277

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37, %18
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = load %struct.page*, %struct.page** %6, align 8
  %41 = call i64 @f2fs_recover_inline_data(%struct.inode* %39, %struct.page* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %277

44:                                               ; preds = %38
  %45 = load %struct.page*, %struct.page** %6, align 8
  %46 = call i64 @ofs_of_node(%struct.page* %45)
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = call i32 @f2fs_start_bidx_of_node(i64 %46, %struct.inode* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.page*, %struct.page** %6, align 8
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = call i32 @ADDRS_PER_PAGE(%struct.page* %50, %struct.inode* %51)
  %53 = add i32 %49, %52
  store i32 %53, i32* %10, align 4
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = call i32 @set_new_dnode(%struct.dnode_of_data* %7, %struct.inode* %54, i32* null, i32* null, i32 0)
  br label %56

56:                                               ; preds = %67, %44
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @ALLOC_NODE, align 4
  %59 = call i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data* %7, i32 %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i32, i32* @BLK_RW_ASYNC, align 4
  %69 = load i32, i32* @HZ, align 4
  %70 = sdiv i32 %69, 50
  %71 = call i32 @congestion_wait(i32 %68, i32 %70)
  br label %56

72:                                               ; preds = %62
  br label %277

73:                                               ; preds = %56
  %74 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %7, i32 0, i32 0
  %75 = load %struct.page*, %struct.page** %74, align 8
  %76 = load i32, i32* @NODE, align 4
  %77 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %75, i32 %76, i32 1, i32 1)
  %78 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %79 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %7, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @f2fs_get_node_info(%struct.f2fs_sb_info* %78, i32 %80, %struct.node_info* %8)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %275

85:                                               ; preds = %73
  %86 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %87 = getelementptr inbounds %struct.node_info, %struct.node_info* %8, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.page*, %struct.page** %6, align 8
  %90 = call i64 @ino_of_node(%struct.page* %89)
  %91 = icmp ne i64 %88, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %86, i32 %92)
  %94 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %7, i32 0, i32 0
  %95 = load %struct.page*, %struct.page** %94, align 8
  %96 = call i64 @ofs_of_node(%struct.page* %95)
  %97 = load %struct.page*, %struct.page** %6, align 8
  %98 = call i64 @ofs_of_node(%struct.page* %97)
  %99 = icmp ne i64 %96, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %85
  %101 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %102 = load %struct.inode*, %struct.inode** %5, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %7, i32 0, i32 0
  %106 = load %struct.page*, %struct.page** %105, align 8
  %107 = call i64 @ofs_of_node(%struct.page* %106)
  %108 = load %struct.page*, %struct.page** %6, align 8
  %109 = call i64 @ofs_of_node(%struct.page* %108)
  %110 = call i32 @f2fs_warn(%struct.f2fs_sb_info* %101, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %104, i64 %107, i64 %109)
  %111 = load i32, i32* @EFSCORRUPTED, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %11, align 4
  br label %275

113:                                              ; preds = %85
  br label %114

114:                                              ; preds = %252, %113
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %118, label %258

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %7, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %7, i32 0, i32 0
  %122 = load %struct.page*, %struct.page** %121, align 8
  %123 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %7, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @datablock_addr(i32 %120, %struct.page* %122, i32 %124)
  store i64 %125, i64* %13, align 8
  %126 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %7, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.page*, %struct.page** %6, align 8
  %129 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %7, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @datablock_addr(i32 %127, %struct.page* %128, i32 %130)
  store i64 %131, i64* %14, align 8
  %132 = load i64, i64* %13, align 8
  %133 = call i64 @__is_valid_data_blkaddr(i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %118
  %136 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %137 = load i64, i64* %13, align 8
  %138 = load i32, i32* @META_POR, align 4
  %139 = call i64 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info* %136, i64 %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %135
  %142 = load i32, i32* @EFSCORRUPTED, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %11, align 4
  br label %275

144:                                              ; preds = %135, %118
  %145 = load i64, i64* %14, align 8
  %146 = call i64 @__is_valid_data_blkaddr(i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %144
  %149 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %150 = load i64, i64* %14, align 8
  %151 = load i32, i32* @META_POR, align 4
  %152 = call i64 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info* %149, i64 %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %148
  %155 = load i32, i32* @EFSCORRUPTED, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %11, align 4
  br label %275

157:                                              ; preds = %148, %144
  %158 = load i64, i64* %13, align 8
  %159 = load i64, i64* %14, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  br label %252

162:                                              ; preds = %157
  %163 = load i64, i64* %14, align 8
  %164 = load i64, i64* @NULL_ADDR, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = call i32 @f2fs_truncate_data_blocks_range(%struct.dnode_of_data* %7, i32 1)
  br label %252

168:                                              ; preds = %162
  %169 = load %struct.inode*, %struct.inode** %5, align 8
  %170 = call i64 @file_keep_isize(%struct.inode* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %186, label %172

172:                                              ; preds = %168
  %173 = load %struct.inode*, %struct.inode** %5, align 8
  %174 = call i32 @i_size_read(%struct.inode* %173)
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* @PAGE_SHIFT, align 4
  %177 = shl i32 %175, %176
  %178 = icmp sle i32 %174, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %172
  %180 = load %struct.inode*, %struct.inode** %5, align 8
  %181 = load i32, i32* %9, align 4
  %182 = add i32 %181, 1
  %183 = load i32, i32* @PAGE_SHIFT, align 4
  %184 = shl i32 %182, %183
  %185 = call i32 @f2fs_i_size_write(%struct.inode* %180, i32 %184)
  br label %186

186:                                              ; preds = %179, %172, %168
  %187 = load i64, i64* %14, align 8
  %188 = load i64, i64* @NEW_ADDR, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = call i32 @f2fs_truncate_data_blocks_range(%struct.dnode_of_data* %7, i32 1)
  %192 = call i32 @f2fs_reserve_new_block(%struct.dnode_of_data* %7)
  br label %252

193:                                              ; preds = %186
  %194 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %195 = load i64, i64* %14, align 8
  %196 = load i32, i32* @META_POR, align 4
  %197 = call i64 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info* %194, i64 %195, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %251

199:                                              ; preds = %193
  %200 = load i64, i64* %13, align 8
  %201 = load i64, i64* @NULL_ADDR, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %224

203:                                              ; preds = %199
  %204 = call i32 @f2fs_reserve_new_block(%struct.dnode_of_data* %7)
  store i32 %204, i32* %11, align 4
  br label %205

205:                                              ; preds = %214, %203
  %206 = load i32, i32* %11, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %205
  %209 = load i32, i32* @CONFIG_F2FS_FAULT_INJECTION, align 4
  %210 = call i64 @IS_ENABLED(i32 %209)
  %211 = icmp ne i64 %210, 0
  br label %212

212:                                              ; preds = %208, %205
  %213 = phi i1 [ false, %205 ], [ %211, %208 ]
  br i1 %213, label %214, label %216

214:                                              ; preds = %212
  %215 = call i32 @f2fs_reserve_new_block(%struct.dnode_of_data* %7)
  store i32 %215, i32* %11, align 4
  br label %205

216:                                              ; preds = %212
  %217 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %218 = load i32, i32* %11, align 4
  %219 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %217, i32 %218)
  %220 = load i32, i32* %11, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  br label %275

223:                                              ; preds = %216
  br label %224

224:                                              ; preds = %223, %199
  br label %225

225:                                              ; preds = %236, %224
  %226 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %227 = load i64, i64* %14, align 8
  %228 = call i32 @check_index_in_prev_nodes(%struct.f2fs_sb_info* %226, i64 %227, %struct.dnode_of_data* %7)
  store i32 %228, i32* %11, align 4
  %229 = load i32, i32* %11, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %242

231:                                              ; preds = %225
  %232 = load i32, i32* %11, align 4
  %233 = load i32, i32* @ENOMEM, align 4
  %234 = sub nsw i32 0, %233
  %235 = icmp eq i32 %232, %234
  br i1 %235, label %236, label %241

236:                                              ; preds = %231
  %237 = load i32, i32* @BLK_RW_ASYNC, align 4
  %238 = load i32, i32* @HZ, align 4
  %239 = sdiv i32 %238, 50
  %240 = call i32 @congestion_wait(i32 %237, i32 %239)
  br label %225

241:                                              ; preds = %231
  br label %275

242:                                              ; preds = %225
  %243 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %244 = load i64, i64* %13, align 8
  %245 = load i64, i64* %14, align 8
  %246 = getelementptr inbounds %struct.node_info, %struct.node_info* %8, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @f2fs_replace_block(%struct.f2fs_sb_info* %243, %struct.dnode_of_data* %7, i64 %244, i64 %245, i32 %247, i32 0, i32 0)
  %249 = load i32, i32* %12, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %12, align 4
  br label %251

251:                                              ; preds = %242, %193
  br label %252

252:                                              ; preds = %251, %190, %166, %161
  %253 = load i32, i32* %9, align 4
  %254 = add i32 %253, 1
  store i32 %254, i32* %9, align 4
  %255 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %7, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %255, align 4
  br label %114

258:                                              ; preds = %114
  %259 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %7, i32 0, i32 0
  %260 = load %struct.page*, %struct.page** %259, align 8
  %261 = load %struct.page*, %struct.page** %6, align 8
  %262 = call i32 @copy_node_footer(%struct.page* %260, %struct.page* %261)
  %263 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %7, i32 0, i32 0
  %264 = load %struct.page*, %struct.page** %263, align 8
  %265 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %7, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = getelementptr inbounds %struct.node_info, %struct.node_info* %8, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.page*, %struct.page** %6, align 8
  %270 = call i64 @ofs_of_node(%struct.page* %269)
  %271 = call i32 @fill_node_footer(%struct.page* %264, i32 %266, i64 %268, i64 %270, i32 0)
  %272 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %7, i32 0, i32 0
  %273 = load %struct.page*, %struct.page** %272, align 8
  %274 = call i32 @set_page_dirty(%struct.page* %273)
  br label %275

275:                                              ; preds = %258, %241, %222, %154, %141, %100, %84
  %276 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %7)
  br label %277

277:                                              ; preds = %275, %72, %43, %36
  %278 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %279 = load %struct.inode*, %struct.inode** %5, align 8
  %280 = getelementptr inbounds %struct.inode, %struct.inode* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.inode*, %struct.inode** %5, align 8
  %283 = call i64 @file_keep_isize(%struct.inode* %282)
  %284 = icmp ne i64 %283, 0
  %285 = zext i1 %284 to i64
  %286 = select i1 %284, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %287 = load i32, i32* %12, align 4
  %288 = load i32, i32* %11, align 4
  %289 = call i32 @f2fs_notice(%struct.f2fs_sb_info* %278, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %281, i8* %286, i32 %287, i32 %288)
  %290 = load i32, i32* %11, align 4
  ret i32 %290
}

declare dso_local i64 @IS_INODE(%struct.page*) #1

declare dso_local i32 @f2fs_recover_inline_xattr(%struct.inode*, %struct.page*) #1

declare dso_local i64 @f2fs_has_xattr_block(i64) #1

declare dso_local i64 @ofs_of_node(%struct.page*) #1

declare dso_local i32 @f2fs_recover_xattr_data(%struct.inode*, %struct.page*) #1

declare dso_local i64 @f2fs_recover_inline_data(%struct.inode*, %struct.page*) #1

declare dso_local i32 @f2fs_start_bidx_of_node(i64, %struct.inode*) #1

declare dso_local i32 @ADDRS_PER_PAGE(%struct.page*, %struct.inode*) #1

declare dso_local i32 @set_new_dnode(%struct.dnode_of_data*, %struct.inode*, i32*, i32*, i32) #1

declare dso_local i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data*, i32, i32) #1

declare dso_local i32 @congestion_wait(i32, i32) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @f2fs_get_node_info(%struct.f2fs_sb_info*, i32, %struct.node_info*) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @ino_of_node(%struct.page*) #1

declare dso_local i32 @f2fs_warn(%struct.f2fs_sb_info*, i8*, i32, i64, i64) #1

declare dso_local i64 @datablock_addr(i32, %struct.page*, i32) #1

declare dso_local i64 @__is_valid_data_blkaddr(i64) #1

declare dso_local i64 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info*, i64, i32) #1

declare dso_local i32 @f2fs_truncate_data_blocks_range(%struct.dnode_of_data*, i32) #1

declare dso_local i64 @file_keep_isize(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @f2fs_i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_reserve_new_block(%struct.dnode_of_data*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @check_index_in_prev_nodes(%struct.f2fs_sb_info*, i64, %struct.dnode_of_data*) #1

declare dso_local i32 @f2fs_replace_block(%struct.f2fs_sb_info*, %struct.dnode_of_data*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @copy_node_footer(%struct.page*, %struct.page*) #1

declare dso_local i32 @fill_node_footer(%struct.page*, i32, i64, i64, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @f2fs_put_dnode(%struct.dnode_of_data*) #1

declare dso_local i32 @f2fs_notice(%struct.f2fs_sb_info*, i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
