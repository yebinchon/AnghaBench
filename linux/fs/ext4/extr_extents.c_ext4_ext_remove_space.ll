; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_remove_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_remove_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_sb_info = type { i32 }
%struct.ext4_ext_path = type { i32, i32, %struct.TYPE_6__*, %struct.ext4_ext_path*, i8*, i64, %struct.ext4_extent* }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.ext4_extent = type { i32 }
%struct.partial_cluster = type { i64, i64, i8* }
%struct.buffer_head = type { i32, i32, %struct.TYPE_6__*, %struct.buffer_head*, i8*, i64, %struct.ext4_extent* }

@initial = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"truncate since %u to %u\0A\00", align 1
@EXT4_HT_TRUNCATE = common dso_local global i32 0, align 4
@EXT_MAX_BLOCKS = common dso_local global i32 0, align 4
@EXT4_EX_NOCACHE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"path[%d].p_hdr == NULL\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@nofree = common dso_local global i8* null, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"initialize header\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"init index ptr: hdr 0x%p, num %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"level %d - index, first 0x%p, cur 0x%p\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"move to level %d (block %llu)\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"return to level %d\0A\00", align 1
@tofree = common dso_local global i64 0, align 8
@EXT4_FREE_BLOCKS_RERESERVE_CLUSTER = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_ext_remove_space(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext4_ext_path*, align 8
  %11 = alloca %struct.partial_cluster, align 8
  %12 = alloca %struct.ext4_ext_path*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ext4_extent*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.buffer_head*, align 8
  %22 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.ext4_sb_info* @EXT4_SB(i32 %25)
  store %struct.ext4_sb_info* %26, %struct.ext4_sb_info** %8, align 8
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = call i32 @ext_depth(%struct.inode* %27)
  store i32 %28, i32* %9, align 4
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %29 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %11, i32 0, i32 2
  store i8* null, i8** %29, align 8
  %30 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %11, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load i64, i64* @initial, align 8
  %32 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %11, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (i8*, ...) @ext_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = load i32, i32* @EXT4_HT_TRUNCATE, align 4
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  %40 = call %struct.ext4_ext_path* @ext4_journal_start(%struct.inode* %36, i32 %37, i32 %39)
  store %struct.ext4_ext_path* %40, %struct.ext4_ext_path** %12, align 8
  %41 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %42 = call i64 @IS_ERR(%struct.ext4_ext_path* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %3
  %45 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %46 = call i32 @PTR_ERR(%struct.ext4_ext_path* %45)
  store i32 %46, i32* %4, align 4
  br label %591

47:                                               ; preds = %3
  br label %48

48:                                               ; preds = %586, %47
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @trace_ext4_ext_remove_space(%struct.inode* %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @EXT_MAX_BLOCKS, align 4
  %56 = sub nsw i32 %55, 1
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %176

58:                                               ; preds = %48
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @EXT4_EX_NOCACHE, align 4
  %62 = call %struct.ext4_ext_path* @ext4_find_extent(%struct.inode* %59, i32 %60, i32* null, i32 %61)
  store %struct.ext4_ext_path* %62, %struct.ext4_ext_path** %10, align 8
  %63 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %64 = call i64 @IS_ERR(%struct.ext4_ext_path* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %68 = call i32 @ext4_journal_stop(%struct.ext4_ext_path* %67)
  %69 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %70 = call i32 @PTR_ERR(%struct.ext4_ext_path* %69)
  store i32 %70, i32* %4, align 4
  br label %591

71:                                               ; preds = %58
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = call i32 @ext_depth(%struct.inode* %72)
  store i32 %73, i32* %9, align 4
  %74 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %74, i64 %76
  %78 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %77, i32 0, i32 6
  %79 = load %struct.ext4_extent*, %struct.ext4_extent** %78, align 8
  store %struct.ext4_extent* %79, %struct.ext4_extent** %15, align 8
  %80 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %81 = icmp ne %struct.ext4_extent* %80, null
  br i1 %81, label %92, label %82

82:                                               ; preds = %71
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.inode*, %struct.inode** %5, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @EXT4_ERROR_INODE(%struct.inode* %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @EFSCORRUPTED, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %85, %82
  br label %577

92:                                               ; preds = %71
  %93 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %94 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le32_to_cpu(i32 %95)
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %16, align 4
  %98 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %99 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %98)
  %100 = add nsw i32 %97, %99
  %101 = sub nsw i32 %100, 1
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %16, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %139

105:                                              ; preds = %92
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %17, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %139

109:                                              ; preds = %105
  %110 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %111 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %129

114:                                              ; preds = %109
  %115 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %116 = call i32 @ext4_ext_pblock(%struct.ext4_extent* %115)
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %116, %117
  %119 = load i32, i32* %16, align 4
  %120 = sub nsw i32 %118, %119
  %121 = add nsw i32 %120, 2
  store i32 %121, i32* %19, align 4
  %122 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %123 = load i32, i32* %19, align 4
  %124 = call i8* @EXT4_B2C(%struct.ext4_sb_info* %122, i32 %123)
  %125 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %11, i32 0, i32 2
  store i8* %124, i8** %125, align 8
  %126 = load i8*, i8** @nofree, align 8
  %127 = ptrtoint i8* %126 to i64
  %128 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %11, i32 0, i32 0
  store i64 %127, i64* %128, align 8
  br label %129

129:                                              ; preds = %114, %109
  %130 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %131 = load %struct.inode*, %struct.inode** %5, align 8
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  %134 = call i32 @ext4_force_split_extent_at(%struct.ext4_ext_path* %130, %struct.inode* %131, %struct.ext4_ext_path** %10, i32 %133, i32 1)
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  br label %577

138:                                              ; preds = %129
  br label %175

139:                                              ; preds = %105, %92
  %140 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %141 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp sgt i32 %142, 1
  br i1 %143, label %144, label %174

144:                                              ; preds = %139
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %17, align 4
  %147 = icmp sge i32 %145, %146
  br i1 %147, label %148, label %174

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %11, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @initial, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %174

153:                                              ; preds = %148
  %154 = load i32, i32* %17, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %18, align 4
  %156 = load %struct.inode*, %struct.inode** %5, align 8
  %157 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %158 = call i32 @ext4_ext_search_right(%struct.inode* %156, %struct.ext4_ext_path* %157, i32* %18, i32* %19, %struct.ext4_extent** %15)
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %14, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  br label %577

162:                                              ; preds = %153
  %163 = load i32, i32* %19, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %162
  %166 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %167 = load i32, i32* %19, align 4
  %168 = call i8* @EXT4_B2C(%struct.ext4_sb_info* %166, i32 %167)
  %169 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %11, i32 0, i32 2
  store i8* %168, i8** %169, align 8
  %170 = load i8*, i8** @nofree, align 8
  %171 = ptrtoint i8* %170 to i64
  %172 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %11, i32 0, i32 0
  store i64 %171, i64* %172, align 8
  br label %173

173:                                              ; preds = %165, %162
  br label %174

174:                                              ; preds = %173, %148, %144, %139
  br label %175

175:                                              ; preds = %174, %138
  br label %176

176:                                              ; preds = %175, %48
  %177 = load %struct.inode*, %struct.inode** %5, align 8
  %178 = call i32 @ext_depth(%struct.inode* %177)
  store i32 %178, i32* %9, align 4
  %179 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %180 = icmp ne %struct.ext4_ext_path* %179, null
  br i1 %180, label %181, label %204

181:                                              ; preds = %176
  %182 = load i32, i32* %9, align 4
  store i32 %182, i32* %13, align 4
  store i32 %182, i32* %20, align 4
  br label %183

183:                                              ; preds = %187, %181
  %184 = load i32, i32* %20, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %20, align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %203

187:                                              ; preds = %183
  %188 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %189 = load i32, i32* %20, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %188, i64 %190
  %192 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %191, i32 0, i32 2
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = call i8* @le16_to_cpu(i64 %195)
  %197 = getelementptr i8, i8* %196, i64 1
  %198 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %199 = load i32, i32* %20, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %198, i64 %200
  %202 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %201, i32 0, i32 4
  store i8* %197, i8** %202, align 8
  br label %183

203:                                              ; preds = %183
  br label %241

204:                                              ; preds = %176
  %205 = load i32, i32* %9, align 4
  %206 = add nsw i32 %205, 1
  %207 = load i32, i32* @GFP_NOFS, align 4
  %208 = call %struct.ext4_ext_path* @kcalloc(i32 %206, i32 48, i32 %207)
  store %struct.ext4_ext_path* %208, %struct.ext4_ext_path** %10, align 8
  %209 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %210 = icmp eq %struct.ext4_ext_path* %209, null
  br i1 %210, label %211, label %216

211:                                              ; preds = %204
  %212 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %213 = call i32 @ext4_journal_stop(%struct.ext4_ext_path* %212)
  %214 = load i32, i32* @ENOMEM, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %4, align 4
  br label %591

216:                                              ; preds = %204
  %217 = load i32, i32* %9, align 4
  %218 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %219 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %218, i64 0
  %220 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %219, i32 0, i32 1
  store i32 %217, i32* %220, align 4
  %221 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %222 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %221, i64 0
  %223 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %222, i32 0, i32 0
  store i32 %217, i32* %223, align 8
  %224 = load %struct.inode*, %struct.inode** %5, align 8
  %225 = call %struct.TYPE_6__* @ext_inode_hdr(%struct.inode* %224)
  %226 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %227 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %226, i64 0
  %228 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %227, i32 0, i32 2
  store %struct.TYPE_6__* %225, %struct.TYPE_6__** %228, align 8
  store i32 0, i32* %13, align 4
  %229 = load %struct.inode*, %struct.inode** %5, align 8
  %230 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %231 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %230, i64 0
  %232 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %231, i32 0, i32 2
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = load i32, i32* %9, align 4
  %235 = call i64 @ext4_ext_check(%struct.inode* %229, %struct.TYPE_6__* %233, i32 %234, i32 0)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %216
  %238 = load i32, i32* @EFSCORRUPTED, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %14, align 4
  br label %577

240:                                              ; preds = %216
  br label %241

241:                                              ; preds = %240, %203
  store i32 0, i32* %14, align 4
  br label %242

242:                                              ; preds = %492, %254, %241
  %243 = load i32, i32* %13, align 4
  %244 = icmp sge i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load i32, i32* %14, align 4
  %247 = icmp eq i32 %246, 0
  br label %248

248:                                              ; preds = %245, %242
  %249 = phi i1 [ false, %242 ], [ %247, %245 ]
  br i1 %249, label %250, label %493

250:                                              ; preds = %248
  %251 = load i32, i32* %13, align 4
  %252 = load i32, i32* %9, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %275

254:                                              ; preds = %250
  %255 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %256 = load %struct.inode*, %struct.inode** %5, align 8
  %257 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %258 = load i32, i32* %6, align 4
  %259 = load i32, i32* %7, align 4
  %260 = call i32 @ext4_ext_rm_leaf(%struct.ext4_ext_path* %255, %struct.inode* %256, %struct.ext4_ext_path* %257, %struct.partial_cluster* %11, i32 %258, i32 %259)
  store i32 %260, i32* %14, align 4
  %261 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %262 = load i32, i32* %13, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %261, i64 %263
  %265 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %264, i32 0, i32 3
  %266 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %265, align 8
  %267 = call i32 @brelse(%struct.ext4_ext_path* %266)
  %268 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %269 = load i32, i32* %13, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %268, i64 %270
  %272 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %271, i32 0, i32 3
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %272, align 8
  %273 = load i32, i32* %13, align 4
  %274 = add nsw i32 %273, -1
  store i32 %274, i32* %13, align 4
  br label %242

275:                                              ; preds = %250
  %276 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %277 = load i32, i32* %13, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %276, i64 %278
  %280 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %279, i32 0, i32 2
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %280, align 8
  %282 = icmp ne %struct.TYPE_6__* %281, null
  br i1 %282, label %297, label %283

283:                                              ; preds = %275
  %284 = call i32 (i8*, ...) @ext_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %285 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %286 = load i32, i32* %13, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %285, i64 %287
  %289 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %288, i32 0, i32 3
  %290 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %289, align 8
  %291 = call %struct.TYPE_6__* @ext_block_hdr(%struct.ext4_ext_path* %290)
  %292 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %293 = load i32, i32* %13, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %292, i64 %294
  %296 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %295, i32 0, i32 2
  store %struct.TYPE_6__* %291, %struct.TYPE_6__** %296, align 8
  br label %297

297:                                              ; preds = %283, %275
  %298 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %299 = load i32, i32* %13, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %298, i64 %300
  %302 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %301, i32 0, i32 5
  %303 = load i64, i64* %302, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %349, label %305

305:                                              ; preds = %297
  %306 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %307 = load i32, i32* %13, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %306, i64 %308
  %310 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %309, i32 0, i32 2
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %310, align 8
  %312 = call i64 @EXT_LAST_INDEX(%struct.TYPE_6__* %311)
  %313 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %314 = load i32, i32* %13, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %313, i64 %315
  %317 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %316, i32 0, i32 5
  store i64 %312, i64* %317, align 8
  %318 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %319 = load i32, i32* %13, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %318, i64 %320
  %322 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %321, i32 0, i32 2
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = call i8* @le16_to_cpu(i64 %325)
  %327 = getelementptr i8, i8* %326, i64 1
  %328 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %329 = load i32, i32* %13, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %328, i64 %330
  %332 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %331, i32 0, i32 4
  store i8* %327, i8** %332, align 8
  %333 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %334 = load i32, i32* %13, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %333, i64 %335
  %337 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %336, i32 0, i32 2
  %338 = load %struct.TYPE_6__*, %struct.TYPE_6__** %337, align 8
  %339 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %340 = load i32, i32* %13, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %339, i64 %341
  %343 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %342, i32 0, i32 2
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = call i8* @le16_to_cpu(i64 %346)
  %348 = call i32 (i8*, ...) @ext_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_6__* %338, i8* %347)
  br label %357

349:                                              ; preds = %297
  %350 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %351 = load i32, i32* %13, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %350, i64 %352
  %354 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %353, i32 0, i32 5
  %355 = load i64, i64* %354, align 8
  %356 = add nsw i64 %355, -1
  store i64 %356, i64* %354, align 8
  br label %357

357:                                              ; preds = %349, %305
  %358 = load i32, i32* %13, align 4
  %359 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %360 = load i32, i32* %13, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %359, i64 %361
  %363 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %362, i32 0, i32 2
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %363, align 8
  %365 = call i32 @EXT_FIRST_INDEX(%struct.TYPE_6__* %364)
  %366 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %367 = load i32, i32* %13, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %366, i64 %368
  %370 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %369, i32 0, i32 5
  %371 = load i64, i64* %370, align 8
  %372 = call i32 (i8*, ...) @ext_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %358, i32 %365, i64 %371)
  %373 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %374 = load i32, i32* %13, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %373, i64 %375
  %377 = call i64 @ext4_ext_more_to_rm(%struct.ext4_ext_path* %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %456

379:                                              ; preds = %357
  %380 = load i32, i32* %13, align 4
  %381 = add nsw i32 %380, 1
  %382 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %383 = load i32, i32* %13, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %382, i64 %384
  %386 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %385, i32 0, i32 5
  %387 = load i64, i64* %386, align 8
  %388 = call i32 @ext4_idx_pblock(i64 %387)
  %389 = call i32 (i8*, ...) @ext_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %381, i32 %388)
  %390 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %391 = load i32, i32* %13, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %390, i64 %392
  %394 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %393, i64 1
  %395 = call i32 @memset(%struct.ext4_ext_path* %394, i32 0, i32 48)
  %396 = load %struct.inode*, %struct.inode** %5, align 8
  %397 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %398 = load i32, i32* %13, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %397, i64 %399
  %401 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %400, i32 0, i32 5
  %402 = load i64, i64* %401, align 8
  %403 = call i32 @ext4_idx_pblock(i64 %402)
  %404 = load i32, i32* %9, align 4
  %405 = load i32, i32* %13, align 4
  %406 = sub nsw i32 %404, %405
  %407 = sub nsw i32 %406, 1
  %408 = load i32, i32* @EXT4_EX_NOCACHE, align 4
  %409 = call %struct.ext4_ext_path* @read_extent_tree_block(%struct.inode* %396, i32 %403, i32 %407, i32 %408)
  %410 = bitcast %struct.ext4_ext_path* %409 to %struct.buffer_head*
  store %struct.buffer_head* %410, %struct.buffer_head** %21, align 8
  %411 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %412 = bitcast %struct.buffer_head* %411 to %struct.ext4_ext_path*
  %413 = call i64 @IS_ERR(%struct.ext4_ext_path* %412)
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %419

415:                                              ; preds = %379
  %416 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %417 = bitcast %struct.buffer_head* %416 to %struct.ext4_ext_path*
  %418 = call i32 @PTR_ERR(%struct.ext4_ext_path* %417)
  store i32 %418, i32* %14, align 4
  br label %493

419:                                              ; preds = %379
  %420 = call i32 (...) @cond_resched()
  %421 = load i32, i32* %13, align 4
  %422 = add nsw i32 %421, 1
  %423 = load i32, i32* %9, align 4
  %424 = icmp sgt i32 %422, %423
  %425 = zext i1 %424 to i32
  %426 = call i64 @WARN_ON(i32 %425)
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %419
  %429 = load i32, i32* @EFSCORRUPTED, align 4
  %430 = sub nsw i32 0, %429
  store i32 %430, i32* %14, align 4
  br label %493

431:                                              ; preds = %419
  %432 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %433 = bitcast %struct.buffer_head* %432 to %struct.ext4_ext_path*
  %434 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %435 = load i32, i32* %13, align 4
  %436 = add nsw i32 %435, 1
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %434, i64 %437
  %439 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %438, i32 0, i32 3
  store %struct.ext4_ext_path* %433, %struct.ext4_ext_path** %439, align 8
  %440 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %441 = load i32, i32* %13, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %440, i64 %442
  %444 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %443, i32 0, i32 2
  %445 = load %struct.TYPE_6__*, %struct.TYPE_6__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %445, i32 0, i32 0
  %447 = load i64, i64* %446, align 8
  %448 = call i8* @le16_to_cpu(i64 %447)
  %449 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %450 = load i32, i32* %13, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %449, i64 %451
  %453 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %452, i32 0, i32 4
  store i8* %448, i8** %453, align 8
  %454 = load i32, i32* %13, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %13, align 4
  br label %492

456:                                              ; preds = %357
  %457 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %458 = load i32, i32* %13, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %457, i64 %459
  %461 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %460, i32 0, i32 2
  %462 = load %struct.TYPE_6__*, %struct.TYPE_6__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %462, i32 0, i32 0
  %464 = load i64, i64* %463, align 8
  %465 = icmp eq i64 %464, 0
  br i1 %465, label %466, label %475

466:                                              ; preds = %456
  %467 = load i32, i32* %13, align 4
  %468 = icmp sgt i32 %467, 0
  br i1 %468, label %469, label %475

469:                                              ; preds = %466
  %470 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %471 = load %struct.inode*, %struct.inode** %5, align 8
  %472 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %473 = load i32, i32* %13, align 4
  %474 = call i32 @ext4_ext_rm_idx(%struct.ext4_ext_path* %470, %struct.inode* %471, %struct.ext4_ext_path* %472, i32 %473)
  store i32 %474, i32* %14, align 4
  br label %475

475:                                              ; preds = %469, %466, %456
  %476 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %477 = load i32, i32* %13, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %476, i64 %478
  %480 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %479, i32 0, i32 3
  %481 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %480, align 8
  %482 = call i32 @brelse(%struct.ext4_ext_path* %481)
  %483 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %484 = load i32, i32* %13, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %483, i64 %485
  %487 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %486, i32 0, i32 3
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %487, align 8
  %488 = load i32, i32* %13, align 4
  %489 = add nsw i32 %488, -1
  store i32 %489, i32* %13, align 4
  %490 = load i32, i32* %13, align 4
  %491 = call i32 (i8*, ...) @ext_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %490)
  br label %492

492:                                              ; preds = %475, %431
  br label %242

493:                                              ; preds = %428, %415, %248
  %494 = load %struct.inode*, %struct.inode** %5, align 8
  %495 = load i32, i32* %6, align 4
  %496 = load i32, i32* %7, align 4
  %497 = load i32, i32* %9, align 4
  %498 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %499 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %498, i32 0, i32 2
  %500 = load %struct.TYPE_6__*, %struct.TYPE_6__** %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %500, i32 0, i32 0
  %502 = load i64, i64* %501, align 8
  %503 = call i32 @trace_ext4_ext_remove_space_done(%struct.inode* %494, i32 %495, i32 %496, i32 %497, %struct.partial_cluster* %11, i64 %502)
  %504 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %11, i32 0, i32 0
  %505 = load i64, i64* %504, align 8
  %506 = load i64, i64* @tofree, align 8
  %507 = icmp eq i64 %505, %506
  br i1 %507, label %508, label %547

508:                                              ; preds = %493
  %509 = load i32, i32* %14, align 4
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %511, label %547

511:                                              ; preds = %508
  %512 = load %struct.inode*, %struct.inode** %5, align 8
  %513 = call i32 @get_default_free_blocks_flags(%struct.inode* %512)
  store i32 %513, i32* %22, align 4
  %514 = load %struct.inode*, %struct.inode** %5, align 8
  %515 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %11, i32 0, i32 1
  %516 = load i64, i64* %515, align 8
  %517 = call i64 @ext4_is_pending(%struct.inode* %514, i64 %516)
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %519, label %523

519:                                              ; preds = %511
  %520 = load i32, i32* @EXT4_FREE_BLOCKS_RERESERVE_CLUSTER, align 4
  %521 = load i32, i32* %22, align 4
  %522 = or i32 %521, %520
  store i32 %522, i32* %22, align 4
  br label %523

523:                                              ; preds = %519, %511
  %524 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %525 = load %struct.inode*, %struct.inode** %5, align 8
  %526 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %527 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %11, i32 0, i32 2
  %528 = load i8*, i8** %527, align 8
  %529 = call i32 @EXT4_C2B(%struct.ext4_sb_info* %526, i8* %528)
  %530 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %531 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 4
  %533 = load i32, i32* %22, align 4
  %534 = call i32 @ext4_free_blocks(%struct.ext4_ext_path* %524, %struct.inode* %525, i32* null, i32 %529, i32 %532, i32 %533)
  %535 = load i32, i32* %22, align 4
  %536 = load i32, i32* @EXT4_FREE_BLOCKS_RERESERVE_CLUSTER, align 4
  %537 = and i32 %535, %536
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %544

539:                                              ; preds = %523
  %540 = load %struct.inode*, %struct.inode** %5, align 8
  %541 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %11, i32 0, i32 1
  %542 = load i64, i64* %541, align 8
  %543 = call i32 @ext4_rereserve_cluster(%struct.inode* %540, i64 %542)
  br label %544

544:                                              ; preds = %539, %523
  %545 = load i64, i64* @initial, align 8
  %546 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %11, i32 0, i32 0
  store i64 %545, i64* %546, align 8
  br label %547

547:                                              ; preds = %544, %508, %493
  %548 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %549 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %548, i32 0, i32 2
  %550 = load %struct.TYPE_6__*, %struct.TYPE_6__** %549, align 8
  %551 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %550, i32 0, i32 0
  %552 = load i64, i64* %551, align 8
  %553 = icmp eq i64 %552, 0
  br i1 %553, label %554, label %576

554:                                              ; preds = %547
  %555 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %556 = load %struct.inode*, %struct.inode** %5, align 8
  %557 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %558 = call i32 @ext4_ext_get_access(%struct.ext4_ext_path* %555, %struct.inode* %556, %struct.ext4_ext_path* %557)
  store i32 %558, i32* %14, align 4
  %559 = load i32, i32* %14, align 4
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %575

561:                                              ; preds = %554
  %562 = load %struct.inode*, %struct.inode** %5, align 8
  %563 = call %struct.TYPE_6__* @ext_inode_hdr(%struct.inode* %562)
  %564 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %563, i32 0, i32 2
  store i64 0, i64* %564, align 8
  %565 = load %struct.inode*, %struct.inode** %5, align 8
  %566 = call i32 @ext4_ext_space_root(%struct.inode* %565, i32 0)
  %567 = call i32 @cpu_to_le16(i32 %566)
  %568 = load %struct.inode*, %struct.inode** %5, align 8
  %569 = call %struct.TYPE_6__* @ext_inode_hdr(%struct.inode* %568)
  %570 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %569, i32 0, i32 1
  store i32 %567, i32* %570, align 8
  %571 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %572 = load %struct.inode*, %struct.inode** %5, align 8
  %573 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %574 = call i32 @ext4_ext_dirty(%struct.ext4_ext_path* %571, %struct.inode* %572, %struct.ext4_ext_path* %573)
  store i32 %574, i32* %14, align 4
  br label %575

575:                                              ; preds = %561, %554
  br label %576

576:                                              ; preds = %575, %547
  br label %577

577:                                              ; preds = %576, %237, %161, %137, %91
  %578 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %579 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %578)
  %580 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %581 = call i32 @kfree(%struct.ext4_ext_path* %580)
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %10, align 8
  %582 = load i32, i32* %14, align 4
  %583 = load i32, i32* @EAGAIN, align 4
  %584 = sub nsw i32 0, %583
  %585 = icmp eq i32 %582, %584
  br i1 %585, label %586, label %587

586:                                              ; preds = %577
  br label %48

587:                                              ; preds = %577
  %588 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %589 = call i32 @ext4_journal_stop(%struct.ext4_ext_path* %588)
  %590 = load i32, i32* %14, align 4
  store i32 %590, i32* %4, align 4
  br label %591

591:                                              ; preds = %587, %211, %66, %44
  %592 = load i32, i32* %4, align 4
  ret i32 %592
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(i32) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i32 @ext_debug(i8*, ...) #1

declare dso_local %struct.ext4_ext_path* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @PTR_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @trace_ext4_ext_remove_space(%struct.inode*, i32, i32, i32) #1

declare dso_local %struct.ext4_ext_path* @ext4_find_extent(%struct.inode*, i32, i32*, i32) #1

declare dso_local i32 @ext4_journal_stop(%struct.ext4_ext_path*) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i8* @EXT4_B2C(%struct.ext4_sb_info*, i32) #1

declare dso_local i32 @ext4_force_split_extent_at(%struct.ext4_ext_path*, %struct.inode*, %struct.ext4_ext_path**, i32, i32) #1

declare dso_local i32 @ext4_ext_search_right(%struct.inode*, %struct.ext4_ext_path*, i32*, i32*, %struct.ext4_extent**) #1

declare dso_local i8* @le16_to_cpu(i64) #1

declare dso_local %struct.ext4_ext_path* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @ext_inode_hdr(%struct.inode*) #1

declare dso_local i64 @ext4_ext_check(%struct.inode*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @ext4_ext_rm_leaf(%struct.ext4_ext_path*, %struct.inode*, %struct.ext4_ext_path*, %struct.partial_cluster*, i32, i32) #1

declare dso_local i32 @brelse(%struct.ext4_ext_path*) #1

declare dso_local %struct.TYPE_6__* @ext_block_hdr(%struct.ext4_ext_path*) #1

declare dso_local i64 @EXT_LAST_INDEX(%struct.TYPE_6__*) #1

declare dso_local i32 @EXT_FIRST_INDEX(%struct.TYPE_6__*) #1

declare dso_local i64 @ext4_ext_more_to_rm(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_idx_pblock(i64) #1

declare dso_local i32 @memset(%struct.ext4_ext_path*, i32, i32) #1

declare dso_local %struct.ext4_ext_path* @read_extent_tree_block(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ext4_ext_rm_idx(%struct.ext4_ext_path*, %struct.inode*, %struct.ext4_ext_path*, i32) #1

declare dso_local i32 @trace_ext4_ext_remove_space_done(%struct.inode*, i32, i32, i32, %struct.partial_cluster*, i64) #1

declare dso_local i32 @get_default_free_blocks_flags(%struct.inode*) #1

declare dso_local i64 @ext4_is_pending(%struct.inode*, i64) #1

declare dso_local i32 @ext4_free_blocks(%struct.ext4_ext_path*, %struct.inode*, i32*, i32, i32, i32) #1

declare dso_local i32 @EXT4_C2B(%struct.ext4_sb_info*, i8*) #1

declare dso_local i32 @ext4_rereserve_cluster(%struct.inode*, i64) #1

declare dso_local i32 @ext4_ext_get_access(%struct.ext4_ext_path*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_ext_space_root(%struct.inode*, i32) #1

declare dso_local i32 @ext4_ext_dirty(%struct.ext4_ext_path*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
