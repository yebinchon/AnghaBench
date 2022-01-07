; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_dir.c_reiserfs_readdir_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_dir.c_reiserfs_readdir_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.inode = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.dir_context = type { i8* }
%struct.cpu_key = type { i32 }
%struct.buffer_head = type { i8*, i32 }
%struct.reiserfs_key = type { i32 }
%struct.item_head = type { %struct.reiserfs_key }
%struct.reiserfs_dir_entry = type { i32, i32, %struct.item_head*, %struct.buffer_head* }
%struct.reiserfs_de_head = type { i32 }

@path_to_entry = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"readdir\00", align 1
@DOT_OFFSET = common dso_local global i32 0, align 4
@TYPE_DIRENTRY = common dso_local global i32 0, align 4
@PATH_READA = common dso_local global i32 0, align 4
@IO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"vs-9000: found item %h does not match to dir we readdir %K\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"vs-9005 item_num == %d, item amount == %d\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"vs-9010: entry number is too big %d (%d)\00", align 1
@POSITION_FOUND = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i32 0, align 4
@MIN_KEY = common dso_local global i32 0, align 4
@KEY_FORMAT_3_5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_readdir_inode(%struct.inode* %0, %struct.dir_context* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dir_context*, align 8
  %5 = alloca %struct.cpu_key, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.reiserfs_key*, align 8
  %10 = alloca %struct.item_head*, align 8
  %11 = alloca %struct.item_head, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [32 x i8], align 16
  %16 = alloca %struct.reiserfs_dir_entry, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.reiserfs_de_head*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dir_context* %1, %struct.dir_context** %4, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @path_to_entry, i32 0, i32 0), align 4
  %25 = call i32 @INITIALIZE_PATH(i32 %24)
  store i32 0, i32* %17, align 4
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = call i32 @reiserfs_write_lock(%struct.TYPE_15__* %28)
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = call i32 @reiserfs_check_lock_depth(%struct.TYPE_15__* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %36 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  br label %44

40:                                               ; preds = %2
  %41 = load i32, i32* @DOT_OFFSET, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  br label %44

44:                                               ; preds = %40, %39
  %45 = phi i8* [ %37, %39 ], [ %43, %40 ]
  %46 = ptrtoint i8* %45 to i32
  %47 = load i32, i32* @TYPE_DIRENTRY, align 4
  %48 = call i32 @make_cpu_key(%struct.cpu_key* %5, %struct.inode* %34, i32 %46, i32 %47, i32 3)
  %49 = call i8* @cpu_key_k_offset(%struct.cpu_key* %5)
  store i8* %49, i8** %14, align 8
  %50 = load i32, i32* @PATH_READA, align 4
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @path_to_entry, i32 0, i32 0), align 4
  br label %51

51:                                               ; preds = %44, %281, %289
  br label %52

52:                                               ; preds = %256, %206, %51
  %53 = load %struct.inode*, %struct.inode** %3, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = call i32 @search_by_entry_key(%struct.TYPE_15__* %55, %struct.cpu_key* %5, %struct.TYPE_16__* @path_to_entry, %struct.reiserfs_dir_entry* %16)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @IO_ERROR, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %17, align 4
  br label %300

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %16, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %8, align 4
  %66 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %16, i32 0, i32 3
  %67 = load %struct.buffer_head*, %struct.buffer_head** %66, align 8
  store %struct.buffer_head* %67, %struct.buffer_head** %6, align 8
  %68 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %16, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %7, align 4
  %70 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %16, i32 0, i32 2
  %71 = load %struct.item_head*, %struct.item_head** %70, align 8
  store %struct.item_head* %71, %struct.item_head** %10, align 8
  %72 = load %struct.item_head*, %struct.item_head** %10, align 8
  %73 = call i32 @store_ih(%struct.item_head* %11, %struct.item_head* %72)
  %74 = load %struct.item_head*, %struct.item_head** %10, align 8
  %75 = getelementptr inbounds %struct.item_head, %struct.item_head* %74, i32 0, i32 0
  %76 = call i64 @COMP_SHORT_KEYS(%struct.reiserfs_key* %75, %struct.cpu_key* %5)
  %77 = trunc i64 %76 to i32
  %78 = load %struct.item_head*, %struct.item_head** %10, align 8
  %79 = call i32 (i32, i8*, ...) @RFALSE(i32 %77, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), %struct.item_head* %78, %struct.cpu_key* %5)
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %82 = call i32 @B_NR_ITEMS(%struct.buffer_head* %81)
  %83 = sub nsw i32 %82, 1
  %84 = icmp sgt i32 %80, %83
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %88 = call i32 @B_NR_ITEMS(%struct.buffer_head* %87)
  %89 = call i32 (i32, i8*, ...) @RFALSE(i32 %85, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %88)
  %90 = load %struct.item_head*, %struct.item_head** %10, align 8
  %91 = call i32 @ih_entry_count(%struct.item_head* %90)
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.item_head*, %struct.item_head** %10, align 8
  %97 = call i32 @ih_entry_count(%struct.item_head* %96)
  %98 = call i32 (i32, i8*, ...) @RFALSE(i32 %94, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %95, i32 %97)
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @POSITION_FOUND, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %107, label %102

102:                                              ; preds = %63
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.item_head*, %struct.item_head** %10, align 8
  %105 = call i32 @ih_entry_count(%struct.item_head* %104)
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %266

107:                                              ; preds = %102, %63
  %108 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %109 = load %struct.item_head*, %struct.item_head** %10, align 8
  %110 = call %struct.reiserfs_de_head* @B_I_DEH(%struct.buffer_head* %108, %struct.item_head* %109)
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %110, i64 %112
  store %struct.reiserfs_de_head* %113, %struct.reiserfs_de_head** %19, align 8
  br label %114

114:                                              ; preds = %260, %107
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.item_head*, %struct.item_head** %10, align 8
  %117 = call i32 @ih_entry_count(%struct.item_head* %116)
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %265

119:                                              ; preds = %114
  %120 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %19, align 8
  %121 = call i8* @deh_offset(%struct.reiserfs_de_head* %120)
  store i8* %121, i8** %23, align 8
  %122 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %19, align 8
  %123 = call i32 @de_visible(%struct.reiserfs_de_head* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %119
  br label %260

126:                                              ; preds = %119
  %127 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %128 = load %struct.item_head*, %struct.item_head** %10, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @entry_length(%struct.buffer_head* %127, %struct.item_head* %128, i32 %129)
  store i32 %130, i32* %20, align 4
  %131 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %132 = load %struct.item_head*, %struct.item_head** %10, align 8
  %133 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %19, align 8
  %134 = call i8* @B_I_DEH_ENTRY_FILE_NAME(%struct.buffer_head* %131, %struct.item_head* %132, %struct.reiserfs_de_head* %133)
  store i8* %134, i8** %21, align 8
  %135 = load i32, i32* %20, align 4
  %136 = icmp sle i32 %135, 0
  br i1 %136, label %151, label %137

137:                                              ; preds = %126
  %138 = load i8*, i8** %21, align 8
  %139 = load i32, i32* %20, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %143 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %146 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %144, i64 %148
  %150 = icmp ugt i8* %141, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %137, %126
  %152 = call i32 @pathrelse(%struct.TYPE_16__* @path_to_entry)
  %153 = load i32, i32* @EIO, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %17, align 4
  br label %300

155:                                              ; preds = %137
  %156 = load i8*, i8** %21, align 8
  %157 = load i32, i32* %20, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %156, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = icmp ne i8 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %155
  %164 = load i8*, i8** %21, align 8
  %165 = call i32 @strlen(i8* %164)
  store i32 %165, i32* %20, align 4
  br label %166

166:                                              ; preds = %163, %155
  %167 = load i32, i32* %20, align 4
  %168 = load %struct.inode*, %struct.inode** %3, align 8
  %169 = getelementptr inbounds %struct.inode, %struct.inode* %168, i32 0, i32 0
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @REISERFS_MAX_NAME(i32 %172)
  %174 = icmp sgt i32 %167, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %166
  br label %260

176:                                              ; preds = %166
  %177 = load %struct.inode*, %struct.inode** %3, align 8
  %178 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %19, align 8
  %179 = call i64 @is_privroot_deh(%struct.inode* %177, %struct.reiserfs_de_head* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %260

182:                                              ; preds = %176
  %183 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %19, align 8
  %184 = call i8* @deh_offset(%struct.reiserfs_de_head* %183)
  %185 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %186 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %185, i32 0, i32 0
  store i8* %184, i8** %186, align 8
  %187 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %19, align 8
  %188 = call i32 @deh_objectid(%struct.reiserfs_de_head* %187)
  store i32 %188, i32* %22, align 4
  %189 = load i32, i32* %20, align 4
  %190 = icmp sle i32 %189, 32
  br i1 %190, label %191, label %193

191:                                              ; preds = %182
  %192 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  store i8* %192, i8** %13, align 8
  br label %210

193:                                              ; preds = %182
  %194 = load i32, i32* %20, align 4
  %195 = load i32, i32* @GFP_NOFS, align 4
  %196 = call i8* @kmalloc(i32 %194, i32 %195)
  store i8* %196, i8** %13, align 8
  %197 = load i8*, i8** %13, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %203, label %199

199:                                              ; preds = %193
  %200 = call i32 @pathrelse(%struct.TYPE_16__* @path_to_entry)
  %201 = load i32, i32* @ENOMEM, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %17, align 4
  br label %300

203:                                              ; preds = %193
  %204 = call i64 @item_moved(%struct.item_head* %11, %struct.TYPE_16__* @path_to_entry)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i8*, i8** %13, align 8
  %208 = call i32 @kfree(i8* %207)
  br label %52

209:                                              ; preds = %203
  br label %210

210:                                              ; preds = %209, %191
  %211 = load i8*, i8** %13, align 8
  %212 = load i8*, i8** %21, align 8
  %213 = load i32, i32* %20, align 4
  %214 = call i32 @memcpy(i8* %211, i8* %212, i32 %213)
  %215 = load %struct.inode*, %struct.inode** %3, align 8
  %216 = getelementptr inbounds %struct.inode, %struct.inode* %215, i32 0, i32 0
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %216, align 8
  %218 = call i32 @reiserfs_write_unlock_nested(%struct.TYPE_15__* %217)
  store i32 %218, i32* %18, align 4
  %219 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %220 = load i8*, i8** %13, align 8
  %221 = load i32, i32* %20, align 4
  %222 = load i32, i32* %22, align 4
  %223 = load i32, i32* @DT_UNKNOWN, align 4
  %224 = call i32 @dir_emit(%struct.dir_context* %219, i8* %220, i32 %221, i32 %222, i32 %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %239, label %226

226:                                              ; preds = %210
  %227 = load %struct.inode*, %struct.inode** %3, align 8
  %228 = getelementptr inbounds %struct.inode, %struct.inode* %227, i32 0, i32 0
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %228, align 8
  %230 = load i32, i32* %18, align 4
  %231 = call i32 @reiserfs_write_lock_nested(%struct.TYPE_15__* %229, i32 %230)
  %232 = load i8*, i8** %13, align 8
  %233 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %234 = icmp ne i8* %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %226
  %236 = load i8*, i8** %13, align 8
  %237 = call i32 @kfree(i8* %236)
  br label %238

238:                                              ; preds = %235, %226
  br label %294

239:                                              ; preds = %210
  %240 = load %struct.inode*, %struct.inode** %3, align 8
  %241 = getelementptr inbounds %struct.inode, %struct.inode* %240, i32 0, i32 0
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %241, align 8
  %243 = load i32, i32* %18, align 4
  %244 = call i32 @reiserfs_write_lock_nested(%struct.TYPE_15__* %242, i32 %243)
  %245 = load i8*, i8** %13, align 8
  %246 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %247 = icmp ne i8* %245, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %239
  %249 = load i8*, i8** %13, align 8
  %250 = call i32 @kfree(i8* %249)
  br label %251

251:                                              ; preds = %248, %239
  %252 = load i8*, i8** %23, align 8
  %253 = getelementptr i8, i8* %252, i64 1
  store i8* %253, i8** %14, align 8
  %254 = call i64 @item_moved(%struct.item_head* %11, %struct.TYPE_16__* @path_to_entry)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %251
  %257 = load i8*, i8** %14, align 8
  %258 = call i32 @set_cpu_key_k_offset(%struct.cpu_key* %5, i8* %257)
  br label %52

259:                                              ; preds = %251
  br label %260

260:                                              ; preds = %259, %181, %175, %125
  %261 = load i32, i32* %8, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %8, align 4
  %263 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %19, align 8
  %264 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %263, i32 1
  store %struct.reiserfs_de_head* %264, %struct.reiserfs_de_head** %19, align 8
  br label %114

265:                                              ; preds = %114
  br label %266

266:                                              ; preds = %265, %102
  %267 = load i32, i32* %7, align 4
  %268 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %269 = call i32 @B_NR_ITEMS(%struct.buffer_head* %268)
  %270 = sub nsw i32 %269, 1
  %271 = icmp ne i32 %267, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %266
  br label %294

273:                                              ; preds = %266
  %274 = load %struct.inode*, %struct.inode** %3, align 8
  %275 = getelementptr inbounds %struct.inode, %struct.inode* %274, i32 0, i32 0
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %275, align 8
  %277 = call %struct.reiserfs_key* @get_rkey(%struct.TYPE_16__* @path_to_entry, %struct.TYPE_15__* %276)
  store %struct.reiserfs_key* %277, %struct.reiserfs_key** %9, align 8
  %278 = load %struct.reiserfs_key*, %struct.reiserfs_key** %9, align 8
  %279 = call i32 @comp_le_keys(%struct.reiserfs_key* %278, i32* @MIN_KEY)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %273
  %282 = load i8*, i8** %14, align 8
  %283 = call i32 @set_cpu_key_k_offset(%struct.cpu_key* %5, i8* %282)
  br label %51

284:                                              ; preds = %273
  %285 = load %struct.reiserfs_key*, %struct.reiserfs_key** %9, align 8
  %286 = call i64 @COMP_SHORT_KEYS(%struct.reiserfs_key* %285, %struct.cpu_key* %5)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %284
  br label %294

289:                                              ; preds = %284
  %290 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %291 = load %struct.reiserfs_key*, %struct.reiserfs_key** %9, align 8
  %292 = call i8* @le_key_k_offset(i32 %290, %struct.reiserfs_key* %291)
  %293 = call i32 @set_cpu_key_k_offset(%struct.cpu_key* %5, i8* %292)
  br label %51

294:                                              ; preds = %288, %272, %238
  %295 = load i8*, i8** %14, align 8
  %296 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %297 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %296, i32 0, i32 0
  store i8* %295, i8** %297, align 8
  %298 = call i32 @pathrelse(%struct.TYPE_16__* @path_to_entry)
  %299 = call i32 @reiserfs_check_path(%struct.TYPE_16__* @path_to_entry)
  br label %300

300:                                              ; preds = %294, %199, %151, %60
  %301 = load %struct.inode*, %struct.inode** %3, align 8
  %302 = getelementptr inbounds %struct.inode, %struct.inode* %301, i32 0, i32 0
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %302, align 8
  %304 = call i32 @reiserfs_write_unlock(%struct.TYPE_15__* %303)
  %305 = load i32, i32* %17, align 4
  ret i32 %305
}

declare dso_local i32 @INITIALIZE_PATH(i32) #1

declare dso_local i32 @reiserfs_write_lock(%struct.TYPE_15__*) #1

declare dso_local i32 @reiserfs_check_lock_depth(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @make_cpu_key(%struct.cpu_key*, %struct.inode*, i32, i32, i32) #1

declare dso_local i8* @cpu_key_k_offset(%struct.cpu_key*) #1

declare dso_local i32 @search_by_entry_key(%struct.TYPE_15__*, %struct.cpu_key*, %struct.TYPE_16__*, %struct.reiserfs_dir_entry*) #1

declare dso_local i32 @store_ih(%struct.item_head*, %struct.item_head*) #1

declare dso_local i32 @RFALSE(i32, i8*, ...) #1

declare dso_local i64 @COMP_SHORT_KEYS(%struct.reiserfs_key*, %struct.cpu_key*) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i32 @ih_entry_count(%struct.item_head*) #1

declare dso_local %struct.reiserfs_de_head* @B_I_DEH(%struct.buffer_head*, %struct.item_head*) #1

declare dso_local i8* @deh_offset(%struct.reiserfs_de_head*) #1

declare dso_local i32 @de_visible(%struct.reiserfs_de_head*) #1

declare dso_local i32 @entry_length(%struct.buffer_head*, %struct.item_head*, i32) #1

declare dso_local i8* @B_I_DEH_ENTRY_FILE_NAME(%struct.buffer_head*, %struct.item_head*, %struct.reiserfs_de_head*) #1

declare dso_local i32 @pathrelse(%struct.TYPE_16__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @REISERFS_MAX_NAME(i32) #1

declare dso_local i64 @is_privroot_deh(%struct.inode*, %struct.reiserfs_de_head*) #1

declare dso_local i32 @deh_objectid(%struct.reiserfs_de_head*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @item_moved(%struct.item_head*, %struct.TYPE_16__*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @reiserfs_write_unlock_nested(%struct.TYPE_15__*) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i8*, i32, i32, i32) #1

declare dso_local i32 @reiserfs_write_lock_nested(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @set_cpu_key_k_offset(%struct.cpu_key*, i8*) #1

declare dso_local %struct.reiserfs_key* @get_rkey(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @comp_le_keys(%struct.reiserfs_key*, i32*) #1

declare dso_local i8* @le_key_k_offset(i32, %struct.reiserfs_key*) #1

declare dso_local i32 @reiserfs_check_path(%struct.TYPE_16__*) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
