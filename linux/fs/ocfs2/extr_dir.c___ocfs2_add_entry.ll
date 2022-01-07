; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c___ocfs2_add_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c___ocfs2_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i8*, i64 }
%struct.ocfs2_dir_lookup_result = type { %struct.buffer_head*, %struct.buffer_head*, %struct.buffer_head* }
%struct.ocfs2_dir_entry = type { i32, i8*, i32, i64, i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [110 x i8] c"Hit dir trailer trying to insert %.*s (namelen %d) into directory %llu.  offset is %lu, trailer offset is %d\0A\00", align 1
@FT_UNKNOWN = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ocfs2_add_entry(i32* %0, %struct.inode* %1, i8* %2, i32 %3, %struct.inode* %4, i64 %5, %struct.buffer_head* %6, %struct.ocfs2_dir_lookup_result* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.ocfs2_dir_lookup_result*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i16, align 2
  %20 = alloca %struct.ocfs2_dir_entry*, align 8
  %21 = alloca %struct.ocfs2_dir_entry*, align 8
  %22 = alloca %struct.ocfs2_dinode*, align 8
  %23 = alloca %struct.super_block*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.buffer_head*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.buffer_head*, align 8
  store i32* %0, i32** %10, align 8
  store %struct.inode* %1, %struct.inode** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.inode* %4, %struct.inode** %14, align 8
  store i64 %5, i64* %15, align 8
  store %struct.buffer_head* %6, %struct.buffer_head** %16, align 8
  store %struct.ocfs2_dir_lookup_result* %7, %struct.ocfs2_dir_lookup_result** %17, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = bitcast i8* %31 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %32, %struct.ocfs2_dinode** %22, align 8
  %33 = load %struct.inode*, %struct.inode** %11, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 3
  %35 = load %struct.super_block*, %struct.super_block** %34, align 8
  store %struct.super_block* %35, %struct.super_block** %23, align 8
  %36 = load %struct.super_block*, %struct.super_block** %23, align 8
  %37 = getelementptr inbounds %struct.super_block, %struct.super_block* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %25, align 4
  %39 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %17, align 8
  %40 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %39, i32 0, i32 2
  %41 = load %struct.buffer_head*, %struct.buffer_head** %40, align 8
  store %struct.buffer_head* %41, %struct.buffer_head** %26, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %43 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %27, align 8
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %8
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %327

50:                                               ; preds = %8
  %51 = load %struct.inode*, %struct.inode** %11, align 8
  %52 = call i64 @ocfs2_dir_indexed(%struct.inode* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %86

54:                                               ; preds = %50
  %55 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %17, align 8
  %56 = call i64 @ocfs2_free_list_at_root(%struct.ocfs2_dir_lookup_result* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %17, align 8
  %60 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %59, i32 0, i32 1
  %61 = load %struct.buffer_head*, %struct.buffer_head** %60, align 8
  store %struct.buffer_head* %61, %struct.buffer_head** %28, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load %struct.inode*, %struct.inode** %11, align 8
  %64 = call i32 @INODE_CACHE(%struct.inode* %63)
  %65 = load %struct.buffer_head*, %struct.buffer_head** %28, align 8
  %66 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %67 = call i32 @ocfs2_journal_access_dr(i32* %62, i32 %64, %struct.buffer_head* %65, i32 %66)
  store i32 %67, i32* %24, align 4
  br label %78

68:                                               ; preds = %54
  %69 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %17, align 8
  %70 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %69, i32 0, i32 0
  %71 = load %struct.buffer_head*, %struct.buffer_head** %70, align 8
  store %struct.buffer_head* %71, %struct.buffer_head** %28, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load %struct.inode*, %struct.inode** %11, align 8
  %74 = call i32 @INODE_CACHE(%struct.inode* %73)
  %75 = load %struct.buffer_head*, %struct.buffer_head** %28, align 8
  %76 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %77 = call i32 @ocfs2_journal_access_db(i32* %72, i32 %74, %struct.buffer_head* %75, i32 %76)
  store i32 %77, i32* %24, align 4
  br label %78

78:                                               ; preds = %68, %58
  %79 = load i32, i32* %24, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %24, align 4
  %83 = call i32 @mlog_errno(i32 %82)
  %84 = load i32, i32* %24, align 4
  store i32 %84, i32* %9, align 4
  br label %327

85:                                               ; preds = %78
  br label %108

86:                                               ; preds = %50
  %87 = load %struct.inode*, %struct.inode** %11, align 8
  %88 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %87)
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %86
  %95 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %22, align 8
  %96 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %27, align 8
  %100 = load %struct.inode*, %struct.inode** %11, align 8
  %101 = call i32 @i_size_read(%struct.inode* %100)
  store i32 %101, i32* %25, align 4
  %102 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %103 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %104 = icmp ne %struct.buffer_head* %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @BUG_ON(i32 %105)
  br label %107

107:                                              ; preds = %94, %86
  br label %108

108:                                              ; preds = %107, %85
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @OCFS2_DIR_REC_LEN(i32 %109)
  %111 = trunc i32 %110 to i16
  store i16 %111, i16* %19, align 2
  store i64 0, i64* %18, align 8
  %112 = load i8*, i8** %27, align 8
  %113 = bitcast i8* %112 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %113, %struct.ocfs2_dir_entry** %20, align 8
  br label %114

114:                                              ; preds = %108, %302
  %115 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %116 = bitcast %struct.ocfs2_dir_entry* %115 to i8*
  %117 = load i32, i32* %25, align 4
  %118 = load i8*, i8** %27, align 8
  %119 = zext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = icmp uge i8* %116, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @BUG_ON(i32 %122)
  %124 = load %struct.inode*, %struct.inode** %11, align 8
  %125 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %126 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %127 = load i64, i64* %18, align 8
  %128 = call i32 @ocfs2_check_dir_entry(%struct.inode* %124, %struct.ocfs2_dir_entry* %125, %struct.buffer_head* %126, i64 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %114
  %131 = load i32, i32* @ENOENT, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %24, align 4
  br label %319

133:                                              ; preds = %114
  %134 = load i32, i32* %13, align 4
  %135 = load i8*, i8** %12, align 8
  %136 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %137 = call i64 @ocfs2_match(i32 %134, i8* %135, %struct.ocfs2_dir_entry* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load i32, i32* @EEXIST, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %24, align 4
  br label %319

142:                                              ; preds = %133
  %143 = load %struct.inode*, %struct.inode** %11, align 8
  %144 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %145 = load i64, i64* %18, align 8
  %146 = load i32, i32* %25, align 4
  %147 = call i32 @ocfs2_skip_dir_trailer(%struct.inode* %143, %struct.ocfs2_dir_entry* %144, i64 %145, i32 %146)
  %148 = load i32, i32* %13, align 4
  %149 = load i8*, i8** %12, align 8
  %150 = load i32, i32* %13, align 4
  %151 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %152 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %18, align 8
  %155 = load %struct.inode*, %struct.inode** %11, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 3
  %157 = load %struct.super_block*, %struct.super_block** %156, align 8
  %158 = call i32 @ocfs2_dir_trailer_blk_off(%struct.super_block* %157)
  %159 = call i32 @mlog_bug_on_msg(i32 %147, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0), i32 %148, i8* %149, i32 %150, i64 %153, i64 %154, i32 %158)
  %160 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %161 = load i16, i16* %19, align 2
  %162 = call i64 @ocfs2_dirent_would_fit(%struct.ocfs2_dir_entry* %160, i16 zeroext %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %302

164:                                              ; preds = %142
  %165 = load %struct.inode*, %struct.inode** %11, align 8
  %166 = call i32 @current_time(%struct.inode* %165)
  %167 = load %struct.inode*, %struct.inode** %11, align 8
  %168 = getelementptr inbounds %struct.inode, %struct.inode* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.inode*, %struct.inode** %11, align 8
  %170 = getelementptr inbounds %struct.inode, %struct.inode* %169, i32 0, i32 2
  store i32 %166, i32* %170, align 8
  %171 = load i32*, i32** %10, align 8
  %172 = load %struct.inode*, %struct.inode** %11, align 8
  %173 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %174 = call i32 @ocfs2_mark_inode_dirty(i32* %171, %struct.inode* %172, %struct.buffer_head* %173)
  store i32 %174, i32* %24, align 4
  %175 = load i32, i32* %24, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %164
  %178 = load i32, i32* %24, align 4
  %179 = call i32 @mlog_errno(i32 %178)
  br label %319

180:                                              ; preds = %164
  %181 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %182 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %183 = icmp eq %struct.buffer_head* %181, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %180
  %185 = load i32*, i32** %10, align 8
  %186 = load %struct.inode*, %struct.inode** %11, align 8
  %187 = call i32 @INODE_CACHE(%struct.inode* %186)
  %188 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %189 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %190 = call i32 @ocfs2_journal_access_di(i32* %185, i32 %187, %struct.buffer_head* %188, i32 %189)
  store i32 %190, i32* %24, align 4
  br label %210

191:                                              ; preds = %180
  %192 = load i32*, i32** %10, align 8
  %193 = load %struct.inode*, %struct.inode** %11, align 8
  %194 = call i32 @INODE_CACHE(%struct.inode* %193)
  %195 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %196 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %197 = call i32 @ocfs2_journal_access_db(i32* %192, i32 %194, %struct.buffer_head* %195, i32 %196)
  store i32 %197, i32* %24, align 4
  %198 = load i32, i32* %24, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %209, label %200

200:                                              ; preds = %191
  %201 = load %struct.inode*, %struct.inode** %11, align 8
  %202 = call i64 @ocfs2_dir_indexed(%struct.inode* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %200
  %205 = load %struct.inode*, %struct.inode** %11, align 8
  %206 = load i32*, i32** %10, align 8
  %207 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %17, align 8
  %208 = call i32 @ocfs2_dx_dir_insert(%struct.inode* %205, i32* %206, %struct.ocfs2_dir_lookup_result* %207)
  store i32 %208, i32* %24, align 4
  br label %209

209:                                              ; preds = %204, %200, %191
  br label %210

210:                                              ; preds = %209, %184
  %211 = load i32, i32* %24, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load i32, i32* %24, align 4
  %215 = call i32 @mlog_errno(i32 %214)
  br label %319

216:                                              ; preds = %210
  %217 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %218 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %217, i32 0, i32 1
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @le16_to_cpu(i8* %219)
  %221 = sext i32 %220 to i64
  %222 = load i64, i64* %18, align 8
  %223 = add i64 %222, %221
  store i64 %223, i64* %18, align 8
  %224 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %225 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = call i64 @le64_to_cpu(i64 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %259

229:                                              ; preds = %216
  %230 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %231 = bitcast %struct.ocfs2_dir_entry* %230 to i8*
  %232 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %233 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @OCFS2_DIR_REC_LEN(i32 %234)
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %231, i64 %236
  %238 = bitcast i8* %237 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %238, %struct.ocfs2_dir_entry** %21, align 8
  %239 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %240 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %239, i32 0, i32 1
  %241 = load i8*, i8** %240, align 8
  %242 = call i32 @le16_to_cpu(i8* %241)
  %243 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %244 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @OCFS2_DIR_REC_LEN(i32 %245)
  %247 = sub nsw i32 %242, %246
  %248 = call i8* @cpu_to_le16(i32 %247)
  %249 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %21, align 8
  %250 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %249, i32 0, i32 1
  store i8* %248, i8** %250, align 8
  %251 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %252 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @OCFS2_DIR_REC_LEN(i32 %253)
  %255 = call i8* @cpu_to_le16(i32 %254)
  %256 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %257 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %256, i32 0, i32 1
  store i8* %255, i8** %257, align 8
  %258 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %21, align 8
  store %struct.ocfs2_dir_entry* %258, %struct.ocfs2_dir_entry** %20, align 8
  br label %259

259:                                              ; preds = %229, %216
  %260 = load i32, i32* @FT_UNKNOWN, align 4
  %261 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %262 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %261, i32 0, i32 4
  store i32 %260, i32* %262, align 8
  %263 = load i64, i64* %15, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %275

265:                                              ; preds = %259
  %266 = load i64, i64* %15, align 8
  %267 = call i64 @cpu_to_le64(i64 %266)
  %268 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %269 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %268, i32 0, i32 3
  store i64 %267, i64* %269, align 8
  %270 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %271 = load %struct.inode*, %struct.inode** %14, align 8
  %272 = getelementptr inbounds %struct.inode, %struct.inode* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @ocfs2_set_de_type(%struct.ocfs2_dir_entry* %270, i32 %273)
  br label %278

275:                                              ; preds = %259
  %276 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %277 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %276, i32 0, i32 3
  store i64 0, i64* %277, align 8
  br label %278

278:                                              ; preds = %275, %265
  %279 = load i32, i32* %13, align 4
  %280 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %281 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %280, i32 0, i32 0
  store i32 %279, i32* %281, align 8
  %282 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %283 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = load i8*, i8** %12, align 8
  %286 = load i32, i32* %13, align 4
  %287 = call i32 @memcpy(i32 %284, i8* %285, i32 %286)
  %288 = load %struct.inode*, %struct.inode** %11, align 8
  %289 = call i64 @ocfs2_dir_indexed(%struct.inode* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %278
  %292 = load %struct.inode*, %struct.inode** %11, align 8
  %293 = load i32*, i32** %10, align 8
  %294 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %17, align 8
  %295 = call i32 @ocfs2_recalc_free_list(%struct.inode* %292, i32* %293, %struct.ocfs2_dir_lookup_result* %294)
  br label %296

296:                                              ; preds = %291, %278
  %297 = load %struct.inode*, %struct.inode** %11, align 8
  %298 = call i32 @inode_inc_iversion(%struct.inode* %297)
  %299 = load i32*, i32** %10, align 8
  %300 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %301 = call i32 @ocfs2_journal_dirty(i32* %299, %struct.buffer_head* %300)
  store i32 0, i32* %24, align 4
  br label %319

302:                                              ; preds = %142
  %303 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %304 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %303, i32 0, i32 1
  %305 = load i8*, i8** %304, align 8
  %306 = call i32 @le16_to_cpu(i8* %305)
  %307 = sext i32 %306 to i64
  %308 = load i64, i64* %18, align 8
  %309 = add i64 %308, %307
  store i64 %309, i64* %18, align 8
  %310 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %311 = bitcast %struct.ocfs2_dir_entry* %310 to i8*
  %312 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %313 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %312, i32 0, i32 1
  %314 = load i8*, i8** %313, align 8
  %315 = call i32 @le16_to_cpu(i8* %314)
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8, i8* %311, i64 %316
  %318 = bitcast i8* %317 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %318, %struct.ocfs2_dir_entry** %20, align 8
  br label %114

319:                                              ; preds = %296, %213, %177, %139, %130
  %320 = load i32, i32* %24, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %319
  %323 = load i32, i32* %24, align 4
  %324 = call i32 @mlog_errno(i32 %323)
  br label %325

325:                                              ; preds = %322, %319
  %326 = load i32, i32* %24, align 4
  store i32 %326, i32* %9, align 4
  br label %327

327:                                              ; preds = %325, %81, %47
  %328 = load i32, i32* %9, align 4
  ret i32 %328
}

declare dso_local i64 @ocfs2_dir_indexed(%struct.inode*) #1

declare dso_local i64 @ocfs2_free_list_at_root(%struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @ocfs2_journal_access_dr(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access_db(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_DIR_REC_LEN(i32) #1

declare dso_local i32 @ocfs2_check_dir_entry(%struct.inode*, %struct.ocfs2_dir_entry*, %struct.buffer_head*, i64) #1

declare dso_local i64 @ocfs2_match(i32, i8*, %struct.ocfs2_dir_entry*) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i32, i8*, i32, i64, i64, i32) #1

declare dso_local i32 @ocfs2_skip_dir_trailer(%struct.inode*, %struct.ocfs2_dir_entry*, i64, i32) #1

declare dso_local i32 @ocfs2_dir_trailer_blk_off(%struct.super_block*) #1

declare dso_local i64 @ocfs2_dirent_would_fit(%struct.ocfs2_dir_entry*, i16 zeroext) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @ocfs2_mark_inode_dirty(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_dx_dir_insert(%struct.inode*, i32*, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i64 @le64_to_cpu(i64) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @cpu_to_le64(i64) #1

declare dso_local i32 @ocfs2_set_de_type(%struct.ocfs2_dir_entry*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @ocfs2_recalc_free_list(%struct.inode*, i32*, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @inode_inc_iversion(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
