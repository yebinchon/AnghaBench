; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_extent.c_hfs_extend_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_extent.c_hfs_extend_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i32, i64, %struct.TYPE_7__*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@EXTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"extend %lu: %u,%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"first extents\0A\00", align 1
@HFS_FLG_EXT_DIRTY = common dso_local global i32 0, align 4
@HFS_FIRSTUSER_CNID = common dso_local global i64 0, align 8
@HFS_FLG_ALT_MDB_DIRTY = common dso_local global i32 0, align 4
@HFS_FLG_MDB_DIRTY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"insert new extent\0A\00", align 1
@HFS_FLG_EXT_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_extend_file(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 1
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %3, align 8
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 7
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.inode*, %struct.inode** %2, align 8
  %16 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %18, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.inode*, %struct.inode** %2, align 8
  %26 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = call i64 @hfs_ext_lastblock(%struct.TYPE_7__* %28)
  store i64 %29, i64* %6, align 8
  br label %46

30:                                               ; preds = %1
  %31 = load %struct.inode*, %struct.inode** %2, align 8
  %32 = load %struct.inode*, %struct.inode** %2, align 8
  %33 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @hfs_ext_read_extent(%struct.inode* %31, i64 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %181

40:                                               ; preds = %30
  %41 = load %struct.inode*, %struct.inode** %2, align 8
  %42 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %41)
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 6
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = call i64 @hfs_ext_lastblock(%struct.TYPE_7__* %44)
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %40, %24
  %47 = load %struct.inode*, %struct.inode** %2, align 8
  %48 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %47)
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %5, align 8
  %51 = load %struct.super_block*, %struct.super_block** %3, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @hfs_vbm_search_free(%struct.super_block* %51, i64 %52, i64* %5)
  store i64 %53, i64* %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %46
  %57 = load i32, i32* @ENOSPC, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %181

59:                                               ; preds = %46
  %60 = load i32, i32* @EXTENT, align 4
  %61 = load %struct.inode*, %struct.inode** %2, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i32 (i32, i8*, ...) @hfs_dbg(i32 %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %63, i64 %64, i64 %65)
  %67 = load %struct.inode*, %struct.inode** %2, align 8
  %68 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.inode*, %struct.inode** %2, align 8
  %72 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %71)
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %70, %74
  br i1 %75, label %76, label %135

76:                                               ; preds = %59
  %77 = load %struct.inode*, %struct.inode** %2, align 8
  %78 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %77)
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %101, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* @EXTENT, align 4
  %84 = call i32 (i32, i8*, ...) @hfs_dbg(i32 %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i64, i64* %4, align 8
  %86 = call i8* @cpu_to_be16(i64 %85)
  %87 = load %struct.inode*, %struct.inode** %2, align 8
  %88 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %87)
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  store i8* %86, i8** %92, align 8
  %93 = load i64, i64* %5, align 8
  %94 = call i8* @cpu_to_be16(i64 %93)
  %95 = load %struct.inode*, %struct.inode** %2, align 8
  %96 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %95)
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i8* %94, i8** %100, align 8
  store i32 0, i32* %7, align 4
  br label %119

101:                                              ; preds = %76
  %102 = load %struct.inode*, %struct.inode** %2, align 8
  %103 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %102)
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load %struct.inode*, %struct.inode** %2, align 8
  %107 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %106)
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %4, align 8
  %111 = load i64, i64* %5, align 8
  %112 = call i32 @hfs_add_extent(%struct.TYPE_7__* %105, i64 %109, i64 %110, i64 %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @ENOSPC, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %101
  br label %218

118:                                              ; preds = %101
  br label %119

119:                                              ; preds = %118, %82
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %134, label %122

122:                                              ; preds = %119
  %123 = load %struct.inode*, %struct.inode** %2, align 8
  %124 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %123)
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = call i32 @hfs_dump_extent(%struct.TYPE_7__* %126)
  %128 = load i64, i64* %5, align 8
  %129 = load %struct.inode*, %struct.inode** %2, align 8
  %130 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %129)
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, %128
  store i64 %133, i64* %131, align 8
  br label %134

134:                                              ; preds = %122, %119
  br label %180

135:                                              ; preds = %59
  %136 = load %struct.inode*, %struct.inode** %2, align 8
  %137 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %136)
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 6
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = load %struct.inode*, %struct.inode** %2, align 8
  %141 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %140)
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.inode*, %struct.inode** %2, align 8
  %145 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %144)
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = sub nsw i64 %143, %147
  %149 = load i64, i64* %4, align 8
  %150 = load i64, i64* %5, align 8
  %151 = call i32 @hfs_add_extent(%struct.TYPE_7__* %139, i64 %148, i64 %149, i64 %150)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %172, label %154

154:                                              ; preds = %135
  %155 = load %struct.inode*, %struct.inode** %2, align 8
  %156 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %155)
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 6
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %157, align 8
  %159 = call i32 @hfs_dump_extent(%struct.TYPE_7__* %158)
  %160 = load i32, i32* @HFS_FLG_EXT_DIRTY, align 4
  %161 = load %struct.inode*, %struct.inode** %2, align 8
  %162 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %161)
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %160
  store i32 %165, i32* %163, align 8
  %166 = load i64, i64* %5, align 8
  %167 = load %struct.inode*, %struct.inode** %2, align 8
  %168 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %167)
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, %166
  store i64 %171, i64* %169, align 8
  br label %179

172:                                              ; preds = %135
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @ENOSPC, align 4
  %175 = sub nsw i32 0, %174
  %176 = icmp eq i32 %173, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  br label %218

178:                                              ; preds = %172
  br label %179

179:                                              ; preds = %178, %154
  br label %180

180:                                              ; preds = %179, %134
  br label %181

181:                                              ; preds = %226, %225, %180, %56, %39
  %182 = load %struct.inode*, %struct.inode** %2, align 8
  %183 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %182)
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 7
  %185 = call i32 @mutex_unlock(i32* %184)
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %216, label %188

188:                                              ; preds = %181
  %189 = load i64, i64* %5, align 8
  %190 = load %struct.inode*, %struct.inode** %2, align 8
  %191 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %190)
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %193, %189
  store i64 %194, i64* %192, align 8
  %195 = load %struct.inode*, %struct.inode** %2, align 8
  %196 = call i32 @mark_inode_dirty(%struct.inode* %195)
  %197 = load %struct.inode*, %struct.inode** %2, align 8
  %198 = getelementptr inbounds %struct.inode, %struct.inode* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @HFS_FIRSTUSER_CNID, align 8
  %201 = icmp slt i64 %199, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %188
  %203 = load i32, i32* @HFS_FLG_ALT_MDB_DIRTY, align 4
  %204 = load %struct.super_block*, %struct.super_block** %3, align 8
  %205 = call %struct.TYPE_8__* @HFS_SB(%struct.super_block* %204)
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = call i32 @set_bit(i32 %203, i32* %206)
  br label %208

208:                                              ; preds = %202, %188
  %209 = load i32, i32* @HFS_FLG_MDB_DIRTY, align 4
  %210 = load %struct.super_block*, %struct.super_block** %3, align 8
  %211 = call %struct.TYPE_8__* @HFS_SB(%struct.super_block* %210)
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = call i32 @set_bit(i32 %209, i32* %212)
  %214 = load %struct.super_block*, %struct.super_block** %3, align 8
  %215 = call i32 @hfs_mark_mdb_dirty(%struct.super_block* %214)
  br label %216

216:                                              ; preds = %208, %181
  %217 = load i32, i32* %7, align 4
  ret i32 %217

218:                                              ; preds = %177, %117
  %219 = load i32, i32* @EXTENT, align 4
  %220 = call i32 (i32, i8*, ...) @hfs_dbg(i32 %219, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %221 = load %struct.inode*, %struct.inode** %2, align 8
  %222 = call i32 @hfs_ext_write_extent(%struct.inode* %221)
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %7, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %218
  br label %181

226:                                              ; preds = %218
  %227 = load %struct.inode*, %struct.inode** %2, align 8
  %228 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %227)
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 6
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %229, align 8
  %231 = call i32 @memset(%struct.TYPE_7__* %230, i32 0, i32 4)
  %232 = load i64, i64* %4, align 8
  %233 = call i8* @cpu_to_be16(i64 %232)
  %234 = load %struct.inode*, %struct.inode** %2, align 8
  %235 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %234)
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 6
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i64 0
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 1
  store i8* %233, i8** %239, align 8
  %240 = load i64, i64* %5, align 8
  %241 = call i8* @cpu_to_be16(i64 %240)
  %242 = load %struct.inode*, %struct.inode** %2, align 8
  %243 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %242)
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 6
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i64 0
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  store i8* %241, i8** %247, align 8
  %248 = load %struct.inode*, %struct.inode** %2, align 8
  %249 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %248)
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 6
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %250, align 8
  %252 = call i32 @hfs_dump_extent(%struct.TYPE_7__* %251)
  %253 = load i32, i32* @HFS_FLG_EXT_DIRTY, align 4
  %254 = load i32, i32* @HFS_FLG_EXT_NEW, align 4
  %255 = or i32 %253, %254
  %256 = load %struct.inode*, %struct.inode** %2, align 8
  %257 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %256)
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = or i32 %259, %255
  store i32 %260, i32* %258, align 8
  %261 = load %struct.inode*, %struct.inode** %2, align 8
  %262 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %261)
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.inode*, %struct.inode** %2, align 8
  %266 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %265)
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 3
  store i64 %264, i64* %267, align 8
  %268 = load i64, i64* %5, align 8
  %269 = load %struct.inode*, %struct.inode** %2, align 8
  %270 = call %struct.TYPE_9__* @HFS_I(%struct.inode* %269)
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 5
  store i64 %268, i64* %271, align 8
  store i32 0, i32* %7, align 4
  br label %181
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_9__* @HFS_I(%struct.inode*) #1

declare dso_local i64 @hfs_ext_lastblock(%struct.TYPE_7__*) #1

declare dso_local i32 @hfs_ext_read_extent(%struct.inode*, i64) #1

declare dso_local i64 @hfs_vbm_search_free(%struct.super_block*, i64, i64*) #1

declare dso_local i32 @hfs_dbg(i32, i8*, ...) #1

declare dso_local i8* @cpu_to_be16(i64) #1

declare dso_local i32 @hfs_add_extent(%struct.TYPE_7__*, i64, i64, i64) #1

declare dso_local i32 @hfs_dump_extent(%struct.TYPE_7__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.TYPE_8__* @HFS_SB(%struct.super_block*) #1

declare dso_local i32 @hfs_mark_mdb_dirty(%struct.super_block*) #1

declare dso_local i32 @hfs_ext_write_extent(%struct.inode*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
