; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_catalog.c_hfsplus_rename_cat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_catalog.c_hfsplus_rename_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i8*, i8*, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.qstr = type { i32 }
%struct.hfs_find_data = type { i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@CAT_MOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"rename_cat: %u - %lu,%s - %lu,%s\0A\00", align 1
@hfs_find_rec_by_key = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@HFSPLUS_FOLDER = common dso_local global i32 0, align 4
@HFSPLUS_I_CAT_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_rename_cat(i32 %0, %struct.inode* %1, %struct.qstr* %2, %struct.inode* %3, %struct.qstr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.qstr*, align 8
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca %struct.hfs_find_data, align 8
  %14 = alloca %struct.hfs_find_data, align 8
  %15 = alloca %struct.TYPE_7__, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.qstr* %2, %struct.qstr** %9, align 8
  store %struct.inode* %3, %struct.inode** %10, align 8
  store %struct.qstr* %4, %struct.qstr** %11, align 8
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 4
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  store %struct.super_block* %21, %struct.super_block** %12, align 8
  %22 = load i32, i32* @CAT_MOD, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.qstr*, %struct.qstr** %9, align 8
  %28 = getelementptr inbounds %struct.qstr, %struct.qstr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.inode*, %struct.inode** %10, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.qstr*, %struct.qstr** %11, align 8
  %34 = getelementptr inbounds %struct.qstr, %struct.qstr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @hfs_dbg(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %29, i32 %32, i32 %35)
  %37 = load %struct.super_block*, %struct.super_block** %12, align 8
  %38 = call %struct.TYPE_9__* @HFSPLUS_SB(%struct.super_block* %37)
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @hfs_find_init(i32 %40, %struct.hfs_find_data* %13)
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %5
  %45 = load i32, i32* %18, align 4
  store i32 %45, i32* %6, align 4
  br label %265

46:                                               ; preds = %5
  %47 = bitcast %struct.hfs_find_data* %14 to i8*
  %48 = bitcast %struct.hfs_find_data* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 24, i1 false)
  %49 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = mul nsw i32 4, %55
  %57 = sub nsw i32 %56, 1
  %58 = call i32 @hfs_bmap_reserve(%struct.TYPE_8__* %50, i32 %57)
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  br label %259

62:                                               ; preds = %46
  %63 = load %struct.super_block*, %struct.super_block** %12, align 8
  %64 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.inode*, %struct.inode** %8, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.qstr*, %struct.qstr** %9, align 8
  %70 = call i32 @hfsplus_cat_build_key(%struct.super_block* %63, i32 %65, i32 %68, %struct.qstr* %69)
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %259

75:                                               ; preds = %62
  %76 = load i32, i32* @hfs_find_rec_by_key, align 4
  %77 = call i32 @hfs_brec_find(%struct.hfs_find_data* %13, i32 %76)
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %18, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %259

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = icmp ugt i64 %84, 4
  br i1 %85, label %90, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86, %81
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %18, align 4
  br label %259

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @hfs_bnode_read(i32 %95, %struct.TYPE_7__* %15, i32 %97, i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @be16_to_cpu(i32 %102)
  store i32 %103, i32* %17, align 4
  %104 = load %struct.super_block*, %struct.super_block** %12, align 8
  %105 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %14, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.inode*, %struct.inode** %10, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.qstr*, %struct.qstr** %11, align 8
  %111 = call i32 @hfsplus_cat_build_key(%struct.super_block* %104, i32 %106, i32 %109, %struct.qstr* %110)
  store i32 %111, i32* %18, align 4
  %112 = load i32, i32* %18, align 4
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %93
  br label %259

116:                                              ; preds = %93
  %117 = load i32, i32* @hfs_find_rec_by_key, align 4
  %118 = call i32 @hfs_brec_find(%struct.hfs_find_data* %14, i32 %117)
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* @ENOENT, align 4
  %121 = sub nsw i32 0, %120
  %122 = icmp ne i32 %119, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %116
  %124 = load i32, i32* %18, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* @EEXIST, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %18, align 4
  br label %129

129:                                              ; preds = %126, %123
  br label %259

130:                                              ; preds = %116
  %131 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @hfs_brec_insert(%struct.hfs_find_data* %14, %struct.TYPE_7__* %15, i32 %132)
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %18, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %259

137:                                              ; preds = %130
  %138 = load %struct.inode*, %struct.inode** %10, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* @HFSPLUS_FOLDER, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %137
  %146 = load %struct.inode*, %struct.inode** %10, align 8
  %147 = call i32 @hfsplus_subfolders_inc(%struct.inode* %146)
  br label %148

148:                                              ; preds = %145, %137
  %149 = load %struct.inode*, %struct.inode** %10, align 8
  %150 = call i8* @current_time(%struct.inode* %149)
  %151 = load %struct.inode*, %struct.inode** %10, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 1
  store i8* %150, i8** %152, align 8
  %153 = load %struct.inode*, %struct.inode** %10, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 2
  store i8* %150, i8** %154, align 8
  %155 = load %struct.super_block*, %struct.super_block** %12, align 8
  %156 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.inode*, %struct.inode** %8, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.qstr*, %struct.qstr** %9, align 8
  %162 = call i32 @hfsplus_cat_build_key(%struct.super_block* %155, i32 %157, i32 %160, %struct.qstr* %161)
  store i32 %162, i32* %18, align 4
  %163 = load i32, i32* %18, align 4
  %164 = call i64 @unlikely(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %148
  br label %259

167:                                              ; preds = %148
  %168 = load i32, i32* @hfs_find_rec_by_key, align 4
  %169 = call i32 @hfs_brec_find(%struct.hfs_find_data* %13, i32 %168)
  store i32 %169, i32* %18, align 4
  %170 = load i32, i32* %18, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  br label %259

173:                                              ; preds = %167
  %174 = call i32 @hfs_brec_remove(%struct.hfs_find_data* %13)
  store i32 %174, i32* %18, align 4
  %175 = load i32, i32* %18, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  br label %259

178:                                              ; preds = %173
  %179 = load %struct.inode*, %struct.inode** %8, align 8
  %180 = getelementptr inbounds %struct.inode, %struct.inode* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* %180, align 8
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* @HFSPLUS_FOLDER, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %178
  %187 = load %struct.inode*, %struct.inode** %8, align 8
  %188 = call i32 @hfsplus_subfolders_dec(%struct.inode* %187)
  br label %189

189:                                              ; preds = %186, %178
  %190 = load %struct.inode*, %struct.inode** %8, align 8
  %191 = call i8* @current_time(%struct.inode* %190)
  %192 = load %struct.inode*, %struct.inode** %8, align 8
  %193 = getelementptr inbounds %struct.inode, %struct.inode* %192, i32 0, i32 1
  store i8* %191, i8** %193, align 8
  %194 = load %struct.inode*, %struct.inode** %8, align 8
  %195 = getelementptr inbounds %struct.inode, %struct.inode* %194, i32 0, i32 2
  store i8* %191, i8** %195, align 8
  %196 = load %struct.super_block*, %struct.super_block** %12, align 8
  %197 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @hfsplus_cat_build_key_with_cnid(%struct.super_block* %196, i32 %198, i32 %199)
  %201 = load i32, i32* @hfs_find_rec_by_key, align 4
  %202 = call i32 @hfs_brec_find(%struct.hfs_find_data* %13, i32 %201)
  store i32 %202, i32* %18, align 4
  %203 = load i32, i32* %18, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %189
  br label %259

206:                                              ; preds = %189
  %207 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @hfs_bnode_read_u16(i32 %208, i32 %210)
  store i32 %211, i32* %17, align 4
  %212 = call i32 @hfs_brec_remove(%struct.hfs_find_data* %13)
  store i32 %212, i32* %18, align 4
  %213 = load i32, i32* %18, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %206
  br label %259

216:                                              ; preds = %206
  %217 = load %struct.super_block*, %struct.super_block** %12, align 8
  %218 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %14, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %7, align 4
  %221 = call i32 @hfsplus_cat_build_key_with_cnid(%struct.super_block* %217, i32 %219, i32 %220)
  %222 = load %struct.super_block*, %struct.super_block** %12, align 8
  %223 = load i32, i32* %17, align 4
  %224 = load %struct.inode*, %struct.inode** %10, align 8
  %225 = getelementptr inbounds %struct.inode, %struct.inode* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.qstr*, %struct.qstr** %11, align 8
  %228 = call i32 @hfsplus_fill_cat_thread(%struct.super_block* %222, %struct.TYPE_7__* %15, i32 %223, i32 %226, %struct.qstr* %227)
  store i32 %228, i32* %16, align 4
  %229 = load i32, i32* %16, align 4
  %230 = icmp slt i32 %229, 0
  %231 = zext i1 %230 to i32
  %232 = call i64 @unlikely(i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %216
  %235 = load i32, i32* %16, align 4
  store i32 %235, i32* %18, align 4
  br label %259

236:                                              ; preds = %216
  %237 = load i32, i32* @hfs_find_rec_by_key, align 4
  %238 = call i32 @hfs_brec_find(%struct.hfs_find_data* %14, i32 %237)
  store i32 %238, i32* %18, align 4
  %239 = load i32, i32* %18, align 4
  %240 = load i32, i32* @ENOENT, align 4
  %241 = sub nsw i32 0, %240
  %242 = icmp ne i32 %239, %241
  br i1 %242, label %243, label %250

243:                                              ; preds = %236
  %244 = load i32, i32* %18, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %243
  %247 = load i32, i32* @EEXIST, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %18, align 4
  br label %249

249:                                              ; preds = %246, %243
  br label %259

250:                                              ; preds = %236
  %251 = load i32, i32* %16, align 4
  %252 = call i32 @hfs_brec_insert(%struct.hfs_find_data* %14, %struct.TYPE_7__* %15, i32 %251)
  store i32 %252, i32* %18, align 4
  %253 = load %struct.inode*, %struct.inode** %10, align 8
  %254 = load i32, i32* @HFSPLUS_I_CAT_DIRTY, align 4
  %255 = call i32 @hfsplus_mark_inode_dirty(%struct.inode* %253, i32 %254)
  %256 = load %struct.inode*, %struct.inode** %8, align 8
  %257 = load i32, i32* @HFSPLUS_I_CAT_DIRTY, align 4
  %258 = call i32 @hfsplus_mark_inode_dirty(%struct.inode* %256, i32 %257)
  br label %259

259:                                              ; preds = %250, %249, %234, %215, %205, %177, %172, %166, %136, %129, %115, %90, %80, %74, %61
  %260 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %14, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @hfs_bnode_put(i32 %261)
  %263 = call i32 @hfs_find_exit(%struct.hfs_find_data* %13)
  %264 = load i32, i32* %18, align 4
  store i32 %264, i32* %6, align 4
  br label %265

265:                                              ; preds = %259, %44
  %266 = load i32, i32* %6, align 4
  ret i32 %266
}

declare dso_local i32 @hfs_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local %struct.TYPE_9__* @HFSPLUS_SB(%struct.super_block*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hfs_bmap_reserve(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @hfsplus_cat_build_key(%struct.super_block*, i32, i32, %struct.qstr*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hfs_brec_find(%struct.hfs_find_data*, i32) #1

declare dso_local i32 @hfs_bnode_read(i32, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @hfs_brec_insert(%struct.hfs_find_data*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @hfsplus_subfolders_inc(%struct.inode*) #1

declare dso_local i8* @current_time(%struct.inode*) #1

declare dso_local i32 @hfs_brec_remove(%struct.hfs_find_data*) #1

declare dso_local i32 @hfsplus_subfolders_dec(%struct.inode*) #1

declare dso_local i32 @hfsplus_cat_build_key_with_cnid(%struct.super_block*, i32, i32) #1

declare dso_local i32 @hfs_bnode_read_u16(i32, i32) #1

declare dso_local i32 @hfsplus_fill_cat_thread(%struct.super_block*, %struct.TYPE_7__*, i32, i32, %struct.qstr*) #1

declare dso_local i32 @hfsplus_mark_inode_dirty(%struct.inode*, i32) #1

declare dso_local i32 @hfs_bnode_put(i32) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
