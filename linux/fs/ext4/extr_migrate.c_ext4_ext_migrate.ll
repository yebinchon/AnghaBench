; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_migrate.c_ext4_ext_migrate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_migrate.c_ext4_ext_migrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ext4_inode_info = type { i64*, i32 }
%struct.migrate_struct = type { i64 }

@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EXT4_HT_MIGRATE = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@EXT4_STATE_EXT_MIGRATE = common dso_local global i32 0, align 4
@EXT4_NDIR_BLOCKS = common dso_local global i32 0, align 4
@EXT4_IND_BLOCK = common dso_local global i64 0, align 8
@EXT4_DIND_BLOCK = common dso_local global i64 0, align 8
@EXT4_TIND_BLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_ext_migrate(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ext4_inode_info*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.migrate_struct, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 0, i32* %5, align 4
  store %struct.inode* null, %struct.inode** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call i32 @ext4_has_feature_extents(%struct.TYPE_4__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %22 = call i64 @ext4_test_inode_flag(%struct.inode* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %297

27:                                               ; preds = %19
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @S_ISLNK(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %297

40:                                               ; preds = %33, %27
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = load i32, i32* @EXT4_HT_MIGRATE, align 4
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = call i32 @EXT4_MAXQUOTAS_TRANS_BLOCKS(%struct.TYPE_4__* %45)
  %47 = add nsw i32 4, %46
  %48 = call %struct.inode* @ext4_journal_start(%struct.inode* %41, i32 %42, i32 %47)
  store %struct.inode* %48, %struct.inode** %4, align 8
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = call i64 @IS_ERR(%struct.inode* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = call i32 @PTR_ERR(%struct.inode* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %297

56:                                               ; preds = %40
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = load %struct.inode*, %struct.inode** %3, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = call i32 @EXT4_INODES_PER_GROUP(%struct.TYPE_4__* %63)
  %65 = sdiv i32 %60, %64
  %66 = load %struct.inode*, %struct.inode** %3, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = call i32 @EXT4_INODES_PER_GROUP(%struct.TYPE_4__* %68)
  %70 = mul nsw i32 %65, %69
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  %72 = load %struct.inode*, %struct.inode** %3, align 8
  %73 = call i32 @i_uid_read(%struct.inode* %72)
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %73, i32* %74, align 4
  %75 = load %struct.inode*, %struct.inode** %3, align 8
  %76 = call i32 @i_gid_read(%struct.inode* %75)
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %76, i32* %77, align 4
  %78 = load %struct.inode*, %struct.inode** %4, align 8
  %79 = load %struct.inode*, %struct.inode** %3, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @d_inode(i32 %83)
  %85 = load i32, i32* @S_IFREG, align 4
  %86 = load i32, i32* %12, align 4
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %88 = call %struct.inode* @ext4_new_inode(%struct.inode* %78, i32 %84, i32 %85, i32* null, i32 %86, i32* %87, i32 0)
  store %struct.inode* %88, %struct.inode** %9, align 8
  %89 = load %struct.inode*, %struct.inode** %9, align 8
  %90 = call i64 @IS_ERR(%struct.inode* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %56
  %93 = load %struct.inode*, %struct.inode** %9, align 8
  %94 = call i32 @PTR_ERR(%struct.inode* %93)
  store i32 %94, i32* %5, align 4
  %95 = load %struct.inode*, %struct.inode** %4, align 8
  %96 = call i32 @ext4_journal_stop(%struct.inode* %95)
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %297

98:                                               ; preds = %56
  %99 = load %struct.inode*, %struct.inode** %9, align 8
  %100 = load %struct.inode*, %struct.inode** %3, align 8
  %101 = call i32 @i_size_read(%struct.inode* %100)
  %102 = call i32 @i_size_write(%struct.inode* %99, i32 %101)
  %103 = load %struct.inode*, %struct.inode** %9, align 8
  %104 = call i32 @clear_nlink(%struct.inode* %103)
  %105 = load %struct.inode*, %struct.inode** %4, align 8
  %106 = load %struct.inode*, %struct.inode** %9, align 8
  %107 = call i32 @ext4_ext_tree_init(%struct.inode* %105, %struct.inode* %106)
  %108 = load %struct.inode*, %struct.inode** %4, align 8
  %109 = load %struct.inode*, %struct.inode** %9, align 8
  %110 = call i32 @ext4_orphan_add(%struct.inode* %108, %struct.inode* %109)
  %111 = load %struct.inode*, %struct.inode** %4, align 8
  %112 = call i32 @ext4_journal_stop(%struct.inode* %111)
  %113 = load %struct.inode*, %struct.inode** %3, align 8
  %114 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %113)
  %115 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %114, i32 0, i32 1
  %116 = call i32 @down_read(i32* %115)
  %117 = load %struct.inode*, %struct.inode** %3, align 8
  %118 = load i32, i32* @EXT4_STATE_EXT_MIGRATE, align 4
  %119 = call i32 @ext4_set_inode_state(%struct.inode* %117, i32 %118)
  %120 = load %struct.inode*, %struct.inode** %3, align 8
  %121 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %120)
  %122 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %121, i32 0, i32 1
  %123 = call i32 @up_read(i32* %122)
  %124 = load %struct.inode*, %struct.inode** %3, align 8
  %125 = load i32, i32* @EXT4_HT_MIGRATE, align 4
  %126 = call %struct.inode* @ext4_journal_start(%struct.inode* %124, i32 %125, i32 1)
  store %struct.inode* %126, %struct.inode** %4, align 8
  %127 = load %struct.inode*, %struct.inode** %4, align 8
  %128 = call i64 @IS_ERR(%struct.inode* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %98
  %131 = load %struct.inode*, %struct.inode** %9, align 8
  %132 = call i32 @ext4_orphan_del(i32* null, %struct.inode* %131)
  %133 = load %struct.inode*, %struct.inode** %4, align 8
  %134 = call i32 @PTR_ERR(%struct.inode* %133)
  store i32 %134, i32* %5, align 4
  br label %291

135:                                              ; preds = %98
  %136 = load %struct.inode*, %struct.inode** %3, align 8
  %137 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %136)
  store %struct.ext4_inode_info* %137, %struct.ext4_inode_info** %8, align 8
  %138 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %139 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  store i64* %140, i64** %7, align 8
  %141 = call i32 @memset(%struct.migrate_struct* %10, i32 0, i32 8)
  %142 = load %struct.inode*, %struct.inode** %3, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 2
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = ashr i32 %146, 2
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %11, align 8
  store i32 0, i32* %6, align 4
  br label %149

149:                                              ; preds = %179, %135
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @EXT4_NDIR_BLOCKS, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %182

153:                                              ; preds = %149
  %154 = load i64*, i64** %7, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %153
  %161 = load %struct.inode*, %struct.inode** %4, align 8
  %162 = load %struct.inode*, %struct.inode** %9, align 8
  %163 = load i64*, i64** %7, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @le32_to_cpu(i64 %167)
  %169 = call i32 @update_extent_range(%struct.inode* %161, %struct.inode* %162, i32 %168, %struct.migrate_struct* %10)
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* %5, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %160
  br label %255

173:                                              ; preds = %160
  br label %178

174:                                              ; preds = %153
  %175 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %10, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, 1
  store i64 %177, i64* %175, align 8
  br label %178

178:                                              ; preds = %174, %173
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %6, align 4
  br label %149

182:                                              ; preds = %149
  %183 = load i64*, i64** %7, align 8
  %184 = load i64, i64* @EXT4_IND_BLOCK, align 8
  %185 = getelementptr inbounds i64, i64* %183, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %201

188:                                              ; preds = %182
  %189 = load %struct.inode*, %struct.inode** %4, align 8
  %190 = load %struct.inode*, %struct.inode** %9, align 8
  %191 = load i64*, i64** %7, align 8
  %192 = load i64, i64* @EXT4_IND_BLOCK, align 8
  %193 = getelementptr inbounds i64, i64* %191, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @le32_to_cpu(i64 %194)
  %196 = call i32 @update_ind_extent_range(%struct.inode* %189, %struct.inode* %190, i32 %195, %struct.migrate_struct* %10)
  store i32 %196, i32* %5, align 4
  %197 = load i32, i32* %5, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %188
  br label %255

200:                                              ; preds = %188
  br label %206

201:                                              ; preds = %182
  %202 = load i64, i64* %11, align 8
  %203 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %10, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = add i64 %204, %202
  store i64 %205, i64* %203, align 8
  br label %206

206:                                              ; preds = %201, %200
  %207 = load i64*, i64** %7, align 8
  %208 = load i64, i64* @EXT4_DIND_BLOCK, align 8
  %209 = getelementptr inbounds i64, i64* %207, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %225

212:                                              ; preds = %206
  %213 = load %struct.inode*, %struct.inode** %4, align 8
  %214 = load %struct.inode*, %struct.inode** %9, align 8
  %215 = load i64*, i64** %7, align 8
  %216 = load i64, i64* @EXT4_DIND_BLOCK, align 8
  %217 = getelementptr inbounds i64, i64* %215, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @le32_to_cpu(i64 %218)
  %220 = call i32 @update_dind_extent_range(%struct.inode* %213, %struct.inode* %214, i32 %219, %struct.migrate_struct* %10)
  store i32 %220, i32* %5, align 4
  %221 = load i32, i32* %5, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %212
  br label %255

224:                                              ; preds = %212
  br label %232

225:                                              ; preds = %206
  %226 = load i64, i64* %11, align 8
  %227 = load i64, i64* %11, align 8
  %228 = mul i64 %226, %227
  %229 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %10, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = add i64 %230, %228
  store i64 %231, i64* %229, align 8
  br label %232

232:                                              ; preds = %225, %224
  %233 = load i64*, i64** %7, align 8
  %234 = load i64, i64* @EXT4_TIND_BLOCK, align 8
  %235 = getelementptr inbounds i64, i64* %233, i64 %234
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %251

238:                                              ; preds = %232
  %239 = load %struct.inode*, %struct.inode** %4, align 8
  %240 = load %struct.inode*, %struct.inode** %9, align 8
  %241 = load i64*, i64** %7, align 8
  %242 = load i64, i64* @EXT4_TIND_BLOCK, align 8
  %243 = getelementptr inbounds i64, i64* %241, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = call i32 @le32_to_cpu(i64 %244)
  %246 = call i32 @update_tind_extent_range(%struct.inode* %239, %struct.inode* %240, i32 %245, %struct.migrate_struct* %10)
  store i32 %246, i32* %5, align 4
  %247 = load i32, i32* %5, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %238
  br label %255

250:                                              ; preds = %238
  br label %251

251:                                              ; preds = %250, %232
  %252 = load %struct.inode*, %struct.inode** %4, align 8
  %253 = load %struct.inode*, %struct.inode** %9, align 8
  %254 = call i32 @finish_range(%struct.inode* %252, %struct.inode* %253, %struct.migrate_struct* %10)
  store i32 %254, i32* %5, align 4
  br label %255

255:                                              ; preds = %251, %249, %223, %199, %172
  %256 = load i32, i32* %5, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %255
  %259 = load %struct.inode*, %struct.inode** %4, align 8
  %260 = load %struct.inode*, %struct.inode** %9, align 8
  %261 = call i32 @free_ext_block(%struct.inode* %259, %struct.inode* %260)
  br label %274

262:                                              ; preds = %255
  %263 = load %struct.inode*, %struct.inode** %4, align 8
  %264 = load %struct.inode*, %struct.inode** %3, align 8
  %265 = load %struct.inode*, %struct.inode** %9, align 8
  %266 = call i32 @ext4_ext_swap_inode_data(%struct.inode* %263, %struct.inode* %264, %struct.inode* %265)
  store i32 %266, i32* %5, align 4
  %267 = load i32, i32* %5, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %262
  %270 = load %struct.inode*, %struct.inode** %4, align 8
  %271 = load %struct.inode*, %struct.inode** %9, align 8
  %272 = call i32 @free_ext_block(%struct.inode* %270, %struct.inode* %271)
  br label %273

273:                                              ; preds = %269, %262
  br label %274

274:                                              ; preds = %273, %258
  %275 = load %struct.inode*, %struct.inode** %4, align 8
  %276 = call i64 @ext4_journal_extend(%struct.inode* %275, i32 1)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %274
  %279 = load %struct.inode*, %struct.inode** %4, align 8
  %280 = call i32 @ext4_journal_restart(%struct.inode* %279, i32 1)
  br label %281

281:                                              ; preds = %278, %274
  %282 = load %struct.inode*, %struct.inode** %9, align 8
  %283 = call i32 @i_size_write(%struct.inode* %282, i32 0)
  %284 = load %struct.inode*, %struct.inode** %9, align 8
  %285 = getelementptr inbounds %struct.inode, %struct.inode* %284, i32 0, i32 0
  store i64 0, i64* %285, align 8
  %286 = load %struct.inode*, %struct.inode** %4, align 8
  %287 = load %struct.inode*, %struct.inode** %9, align 8
  %288 = call i32 @ext4_ext_tree_init(%struct.inode* %286, %struct.inode* %287)
  %289 = load %struct.inode*, %struct.inode** %4, align 8
  %290 = call i32 @ext4_journal_stop(%struct.inode* %289)
  br label %291

291:                                              ; preds = %281, %130
  %292 = load %struct.inode*, %struct.inode** %9, align 8
  %293 = call i32 @unlock_new_inode(%struct.inode* %292)
  %294 = load %struct.inode*, %struct.inode** %9, align 8
  %295 = call i32 @iput(%struct.inode* %294)
  %296 = load i32, i32* %5, align 4
  store i32 %296, i32* %2, align 4
  br label %297

297:                                              ; preds = %291, %92, %52, %38, %24
  %298 = load i32, i32* %2, align 4
  ret i32 %298
}

declare dso_local i32 @ext4_has_feature_extents(%struct.TYPE_4__*) #1

declare dso_local i64 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local %struct.inode* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i32 @EXT4_MAXQUOTAS_TRANS_BLOCKS(%struct.TYPE_4__*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @EXT4_INODES_PER_GROUP(%struct.TYPE_4__*) #1

declare dso_local i32 @i_uid_read(%struct.inode*) #1

declare dso_local i32 @i_gid_read(%struct.inode*) #1

declare dso_local %struct.inode* @ext4_new_inode(%struct.inode*, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @d_inode(i32) #1

declare dso_local i32 @ext4_journal_stop(%struct.inode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @ext4_ext_tree_init(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ext4_orphan_add(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ext4_orphan_del(i32*, %struct.inode*) #1

declare dso_local i32 @memset(%struct.migrate_struct*, i32, i32) #1

declare dso_local i32 @update_extent_range(%struct.inode*, %struct.inode*, i32, %struct.migrate_struct*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @update_ind_extent_range(%struct.inode*, %struct.inode*, i32, %struct.migrate_struct*) #1

declare dso_local i32 @update_dind_extent_range(%struct.inode*, %struct.inode*, i32, %struct.migrate_struct*) #1

declare dso_local i32 @update_tind_extent_range(%struct.inode*, %struct.inode*, i32, %struct.migrate_struct*) #1

declare dso_local i32 @finish_range(%struct.inode*, %struct.inode*, %struct.migrate_struct*) #1

declare dso_local i32 @free_ext_block(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ext4_ext_swap_inode_data(%struct.inode*, %struct.inode*, %struct.inode*) #1

declare dso_local i64 @ext4_journal_extend(%struct.inode*, i32) #1

declare dso_local i32 @ext4_journal_restart(%struct.inode*, i32) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
