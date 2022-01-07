; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c___ocfs2_change_file_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c___ocfs2_change_file_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.inode = type { i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.ocfs2_space_resv = type { i32, i64, i64 }
%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@S_IMMUTABLE = common dso_local global i32 0, align 4
@S_APPEND = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@O_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.inode*, i64, i32, %struct.ocfs2_space_resv*, i32)* @__ocfs2_change_file_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_change_file_space(%struct.file* %0, %struct.inode* %1, i64 %2, i32 %3, %struct.ocfs2_space_resv* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_space_resv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ocfs2_super*, align 8
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.ocfs2_space_resv* %4, %struct.ocfs2_space_resv** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 3
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = call %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_12__* %23)
  store %struct.ocfs2_super* %24, %struct.ocfs2_super** %17, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %18, align 8
  %25 = load %struct.inode*, %struct.inode** %9, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 3
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %20, align 8
  %30 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %31 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %6
  %34 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %35 = call i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %6
  %38 = load i32, i32* @EROFS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %292

40:                                               ; preds = %33
  %41 = load %struct.inode*, %struct.inode** %9, align 8
  %42 = call i32 @inode_lock(%struct.inode* %41)
  %43 = load %struct.inode*, %struct.inode** %9, align 8
  %44 = call i32 @ocfs2_rw_lock(%struct.inode* %43, i32 1)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @mlog_errno(i32 %48)
  br label %288

50:                                               ; preds = %40
  %51 = load %struct.inode*, %struct.inode** %9, align 8
  %52 = call i32 @ocfs2_inode_lock(%struct.inode* %51, %struct.buffer_head** %18, i32 1)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @mlog_errno(i32 %56)
  br label %285

58:                                               ; preds = %50
  %59 = load %struct.inode*, %struct.inode** %9, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @S_IMMUTABLE, align 4
  %63 = load i32, i32* @S_APPEND, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i32, i32* @EPERM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %14, align 4
  br label %280

70:                                               ; preds = %58
  %71 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %72 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %88 [
    i32 0, label %74
    i32 1, label %75
    i32 2, label %81
  ]

74:                                               ; preds = %70
  br label %91

75:                                               ; preds = %70
  %76 = load i64, i64* %10, align 8
  %77 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %78 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, %76
  store i64 %80, i64* %78, align 8
  br label %91

81:                                               ; preds = %70
  %82 = load %struct.inode*, %struct.inode** %9, align 8
  %83 = call i64 @i_size_read(%struct.inode* %82)
  %84 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %85 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, %83
  store i64 %87, i64* %85, align 8
  br label %91

88:                                               ; preds = %70
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %14, align 4
  br label %280

91:                                               ; preds = %81, %75, %74
  %92 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %93 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  %94 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %95 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %100 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %101, 1
  br label %107

103:                                              ; preds = %91
  %104 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %105 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  br label %107

107:                                              ; preds = %103, %98
  %108 = phi i64 [ %102, %98 ], [ %106, %103 ]
  store i64 %108, i64* %15, align 8
  %109 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %110 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %134, label %113

113:                                              ; preds = %107
  %114 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %115 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %20, align 8
  %118 = icmp ugt i64 %116, %117
  br i1 %118, label %134, label %119

119:                                              ; preds = %113
  %120 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %121 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %15, align 8
  %124 = add i64 %122, %123
  %125 = icmp ult i64 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %119
  %127 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %128 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %15, align 8
  %131 = add i64 %129, %130
  %132 = load i64, i64* %20, align 8
  %133 = icmp ugt i64 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %126, %119, %113, %107
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %14, align 4
  br label %280

137:                                              ; preds = %126
  %138 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %139 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %142 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %140, %143
  store i64 %144, i64* %16, align 8
  %145 = load i32, i32* %11, align 4
  %146 = icmp eq i32 %145, 131
  br i1 %146, label %156, label %147

147:                                              ; preds = %137
  %148 = load i32, i32* %11, align 4
  %149 = icmp eq i32 %148, 130
  br i1 %149, label %156, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %11, align 4
  %152 = icmp eq i32 %151, 129
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %11, align 4
  %155 = icmp eq i32 %154, 128
  br i1 %155, label %156, label %165

156:                                              ; preds = %153, %150, %147, %137
  %157 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %158 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp sle i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %14, align 4
  br label %280

164:                                              ; preds = %156
  br label %165

165:                                              ; preds = %164, %153
  %166 = load %struct.file*, %struct.file** %8, align 8
  %167 = icmp ne %struct.file* %166, null
  br i1 %167, label %168, label %185

168:                                              ; preds = %165
  %169 = load %struct.file*, %struct.file** %8, align 8
  %170 = getelementptr inbounds %struct.file, %struct.file* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @should_remove_suid(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %168
  %176 = load %struct.inode*, %struct.inode** %9, align 8
  %177 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %178 = call i32 @__ocfs2_write_remove_suid(%struct.inode* %176, %struct.buffer_head* %177)
  store i32 %178, i32* %14, align 4
  %179 = load i32, i32* %14, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %175
  %182 = load i32, i32* %14, align 4
  %183 = call i32 @mlog_errno(i32 %182)
  br label %280

184:                                              ; preds = %175
  br label %185

185:                                              ; preds = %184, %168, %165
  %186 = load %struct.inode*, %struct.inode** %9, align 8
  %187 = call %struct.TYPE_13__* @OCFS2_I(%struct.inode* %186)
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = call i32 @down_write(i32* %188)
  %190 = load i32, i32* %11, align 4
  switch i32 %190, label %210 [
    i32 131, label %191
    i32 130, label %191
    i32 129, label %200
    i32 128, label %200
  ]

191:                                              ; preds = %185, %185
  %192 = load %struct.inode*, %struct.inode** %9, align 8
  %193 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %194 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %197 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @ocfs2_allocate_unwritten_extents(%struct.inode* %192, i64 %195, i64 %198)
  store i32 %199, i32* %14, align 4
  br label %213

200:                                              ; preds = %185, %185
  %201 = load %struct.inode*, %struct.inode** %9, align 8
  %202 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %203 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %204 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %207 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @ocfs2_remove_inode_range(%struct.inode* %201, %struct.buffer_head* %202, i64 %205, i64 %208)
  store i32 %209, i32* %14, align 4
  br label %213

210:                                              ; preds = %185
  %211 = load i32, i32* @EINVAL, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %14, align 4
  br label %213

213:                                              ; preds = %210, %200, %191
  %214 = load %struct.inode*, %struct.inode** %9, align 8
  %215 = call %struct.TYPE_13__* @OCFS2_I(%struct.inode* %214)
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = call i32 @up_write(i32* %216)
  %218 = load i32, i32* %14, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %213
  %221 = load i32, i32* %14, align 4
  %222 = call i32 @mlog_errno(i32 %221)
  br label %280

223:                                              ; preds = %213
  %224 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %225 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %226 = call %struct.TYPE_11__* @ocfs2_start_trans(%struct.ocfs2_super* %224, i32 %225)
  store %struct.TYPE_11__* %226, %struct.TYPE_11__** %19, align 8
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %228 = call i64 @IS_ERR(%struct.TYPE_11__* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %223
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %232 = call i32 @PTR_ERR(%struct.TYPE_11__* %231)
  store i32 %232, i32* %14, align 4
  %233 = load i32, i32* %14, align 4
  %234 = call i32 @mlog_errno(i32 %233)
  br label %280

235:                                              ; preds = %223
  %236 = load i32, i32* %13, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %247

238:                                              ; preds = %235
  %239 = load %struct.inode*, %struct.inode** %9, align 8
  %240 = call i64 @i_size_read(%struct.inode* %239)
  %241 = load i64, i64* %16, align 8
  %242 = icmp slt i64 %240, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %238
  %244 = load %struct.inode*, %struct.inode** %9, align 8
  %245 = load i64, i64* %16, align 8
  %246 = call i32 @i_size_write(%struct.inode* %244, i64 %245)
  br label %247

247:                                              ; preds = %243, %238, %235
  %248 = load %struct.inode*, %struct.inode** %9, align 8
  %249 = call i32 @current_time(%struct.inode* %248)
  %250 = load %struct.inode*, %struct.inode** %9, align 8
  %251 = getelementptr inbounds %struct.inode, %struct.inode* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 4
  %252 = load %struct.inode*, %struct.inode** %9, align 8
  %253 = getelementptr inbounds %struct.inode, %struct.inode* %252, i32 0, i32 2
  store i32 %249, i32* %253, align 8
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %255 = load %struct.inode*, %struct.inode** %9, align 8
  %256 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %257 = call i32 @ocfs2_mark_inode_dirty(%struct.TYPE_11__* %254, %struct.inode* %255, %struct.buffer_head* %256)
  store i32 %257, i32* %14, align 4
  %258 = load i32, i32* %14, align 4
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %247
  %261 = load i32, i32* %14, align 4
  %262 = call i32 @mlog_errno(i32 %261)
  br label %263

263:                                              ; preds = %260, %247
  %264 = load %struct.file*, %struct.file** %8, align 8
  %265 = icmp ne %struct.file* %264, null
  br i1 %265, label %266, label %276

266:                                              ; preds = %263
  %267 = load %struct.file*, %struct.file** %8, align 8
  %268 = getelementptr inbounds %struct.file, %struct.file* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @O_SYNC, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %266
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 0
  store i32 1, i32* %275, align 4
  br label %276

276:                                              ; preds = %273, %266, %263
  %277 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %279 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %277, %struct.TYPE_11__* %278)
  br label %280

280:                                              ; preds = %276, %230, %220, %181, %161, %134, %88, %67
  %281 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %282 = call i32 @brelse(%struct.buffer_head* %281)
  %283 = load %struct.inode*, %struct.inode** %9, align 8
  %284 = call i32 @ocfs2_inode_unlock(%struct.inode* %283, i32 1)
  br label %285

285:                                              ; preds = %280, %55
  %286 = load %struct.inode*, %struct.inode** %9, align 8
  %287 = call i32 @ocfs2_rw_unlock(%struct.inode* %286, i32 1)
  br label %288

288:                                              ; preds = %285, %47
  %289 = load %struct.inode*, %struct.inode** %9, align 8
  %290 = call i32 @inode_unlock(%struct.inode* %289)
  %291 = load i32, i32* %14, align 4
  store i32 %291, i32* %7, align 4
  br label %292

292:                                              ; preds = %288, %37
  %293 = load i32, i32* %7, align 4
  ret i32 %293
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_12__*) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ocfs2_rw_lock(%struct.inode*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @should_remove_suid(i32) #1

declare dso_local i32 @__ocfs2_write_remove_suid(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_13__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_allocate_unwritten_extents(%struct.inode*, i64, i64) #1

declare dso_local i32 @ocfs2_remove_inode_range(%struct.inode*, %struct.buffer_head*, i64, i64) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local %struct.TYPE_11__* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_11__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_11__*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @ocfs2_mark_inode_dirty(%struct.TYPE_11__*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, %struct.TYPE_11__*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_rw_unlock(%struct.inode*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
