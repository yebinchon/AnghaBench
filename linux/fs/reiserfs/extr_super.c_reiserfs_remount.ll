; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_reiserfs_remount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_reiserfs_remount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_super_block = type { i32 }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.reiserfs_journal = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i8**, i64 }

@REISERFS_MAXQUOTAS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@REISERFS_SMALLTAIL = common dso_local global i32 0, align 4
@REISERFS_LARGETAIL = common dso_local global i32 0, align 4
@REISERFS_NO_BORDER = common dso_local global i32 0, align 4
@REISERFS_NO_UNHASHED_RELOCATION = common dso_local global i32 0, align 4
@REISERFS_HASHED_RELOCATION = common dso_local global i32 0, align 4
@REISERFS_TEST4 = common dso_local global i32 0, align 4
@REISERFS_ATTRS = common dso_local global i32 0, align 4
@REISERFS_XATTRS_USER = common dso_local global i32 0, align 4
@REISERFS_POSIXACL = common dso_local global i32 0, align 4
@REISERFS_BARRIER_FLUSH = common dso_local global i32 0, align 4
@REISERFS_BARRIER_NONE = common dso_local global i32 0, align 4
@REISERFS_ERROR_RO = common dso_local global i32 0, align 4
@REISERFS_ERROR_CONTINUE = common dso_local global i32 0, align 4
@REISERFS_ERROR_PANIC = common dso_local global i32 0, align 4
@REISERFS_USRQUOTA = common dso_local global i32 0, align 4
@REISERFS_GRPQUOTA = common dso_local global i32 0, align 4
@JOURNAL_MAX_TRANS_AGE = common dso_local global i32 0, align 4
@SB_RDONLY = common dso_local global i32 0, align 4
@REISERFS_VALID_FS = common dso_local global i64 0, align 8
@REISERFS_ERROR_FS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i8*)* @reiserfs_remount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_remount(%struct.super_block* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.reiserfs_super_block*, align 8
  %9 = alloca %struct.reiserfs_transaction_handle, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.reiserfs_journal*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 -1, i32* %13, align 4
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %25)
  store %struct.reiserfs_journal* %26, %struct.reiserfs_journal** %14, align 8
  %27 = load i32, i32* @REISERFS_MAXQUOTAS, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %17, align 8
  %30 = alloca i8*, i64 %28, align 16
  store i64 %28, i64* %18, align 8
  store i32 0, i32* %19, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kstrdup(i8* %31, i32 %32)
  store i8* %33, i8** %15, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %3
  %37 = load i8*, i8** %15, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %363

42:                                               ; preds = %36, %3
  %43 = load %struct.super_block*, %struct.super_block** %5, align 8
  %44 = call i32 @sync_filesystem(%struct.super_block* %43)
  %45 = load %struct.super_block*, %struct.super_block** %5, align 8
  %46 = call i32 @reiserfs_write_lock(%struct.super_block* %45)
  %47 = load %struct.super_block*, %struct.super_block** %5, align 8
  %48 = call %struct.reiserfs_super_block* @SB_DISK_SUPER_BLOCK(%struct.super_block* %47)
  store %struct.reiserfs_super_block* %48, %struct.reiserfs_super_block** %8, align 8
  %49 = load %struct.super_block*, %struct.super_block** %5, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @reiserfs_parse_options(%struct.super_block* %49, i8* %50, i64* %11, i64* %10, i32* null, i32* %13, i8** %30, i32* %19)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %42
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %16, align 4
  br label %356

56:                                               ; preds = %42
  %57 = load %struct.super_block*, %struct.super_block** %5, align 8
  %58 = call i32 @handle_attrs(%struct.super_block* %57)
  %59 = load i32, i32* @REISERFS_SMALLTAIL, align 4
  %60 = shl i32 1, %59
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %12, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %12, align 8
  %64 = load i32, i32* @REISERFS_LARGETAIL, align 4
  %65 = shl i32 1, %64
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %12, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %12, align 8
  %69 = load i32, i32* @REISERFS_NO_BORDER, align 4
  %70 = shl i32 1, %69
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %12, align 8
  %73 = or i64 %72, %71
  store i64 %73, i64* %12, align 8
  %74 = load i32, i32* @REISERFS_NO_UNHASHED_RELOCATION, align 4
  %75 = shl i32 1, %74
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %12, align 8
  %78 = or i64 %77, %76
  store i64 %78, i64* %12, align 8
  %79 = load i32, i32* @REISERFS_HASHED_RELOCATION, align 4
  %80 = shl i32 1, %79
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %12, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %12, align 8
  %84 = load i32, i32* @REISERFS_TEST4, align 4
  %85 = shl i32 1, %84
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %12, align 8
  %88 = or i64 %87, %86
  store i64 %88, i64* %12, align 8
  %89 = load i32, i32* @REISERFS_ATTRS, align 4
  %90 = shl i32 1, %89
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %12, align 8
  %93 = or i64 %92, %91
  store i64 %93, i64* %12, align 8
  %94 = load i32, i32* @REISERFS_XATTRS_USER, align 4
  %95 = shl i32 1, %94
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %12, align 8
  %98 = or i64 %97, %96
  store i64 %98, i64* %12, align 8
  %99 = load i32, i32* @REISERFS_POSIXACL, align 4
  %100 = shl i32 1, %99
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %12, align 8
  %103 = or i64 %102, %101
  store i64 %103, i64* %12, align 8
  %104 = load i32, i32* @REISERFS_BARRIER_FLUSH, align 4
  %105 = shl i32 1, %104
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %12, align 8
  %108 = or i64 %107, %106
  store i64 %108, i64* %12, align 8
  %109 = load i32, i32* @REISERFS_BARRIER_NONE, align 4
  %110 = shl i32 1, %109
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %12, align 8
  %113 = or i64 %112, %111
  store i64 %113, i64* %12, align 8
  %114 = load i32, i32* @REISERFS_ERROR_RO, align 4
  %115 = shl i32 1, %114
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %12, align 8
  %118 = or i64 %117, %116
  store i64 %118, i64* %12, align 8
  %119 = load i32, i32* @REISERFS_ERROR_CONTINUE, align 4
  %120 = shl i32 1, %119
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* %12, align 8
  %123 = or i64 %122, %121
  store i64 %123, i64* %12, align 8
  %124 = load i32, i32* @REISERFS_ERROR_PANIC, align 4
  %125 = shl i32 1, %124
  %126 = sext i32 %125 to i64
  %127 = load i64, i64* %12, align 8
  %128 = or i64 %127, %126
  store i64 %128, i64* %12, align 8
  %129 = load i32, i32* @REISERFS_USRQUOTA, align 4
  %130 = shl i32 1, %129
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* %12, align 8
  %133 = or i64 %132, %131
  store i64 %133, i64* %12, align 8
  %134 = load i32, i32* @REISERFS_GRPQUOTA, align 4
  %135 = shl i32 1, %134
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* %12, align 8
  %138 = or i64 %137, %136
  store i64 %138, i64* %12, align 8
  %139 = load %struct.super_block*, %struct.super_block** %5, align 8
  %140 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %139)
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %12, align 8
  %144 = xor i64 %143, -1
  %145 = and i64 %142, %144
  %146 = load i64, i64* %11, align 8
  %147 = load i64, i64* %12, align 8
  %148 = and i64 %146, %147
  %149 = or i64 %145, %148
  %150 = load %struct.super_block*, %struct.super_block** %5, align 8
  %151 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %150)
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  store i64 %149, i64* %152, align 8
  %153 = load i32, i32* %13, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %56
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, -1
  br i1 %157, label %158, label %165

158:                                              ; preds = %155
  %159 = load i32, i32* %13, align 4
  %160 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %14, align 8
  %161 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %13, align 4
  %163 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %14, align 8
  %164 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  br label %178

165:                                              ; preds = %155, %56
  %166 = load i32, i32* %13, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %165
  %169 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %14, align 8
  %170 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %14, align 8
  %173 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* @JOURNAL_MAX_TRANS_AGE, align 4
  %175 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %14, align 8
  %176 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %168, %165
  br label %178

178:                                              ; preds = %177, %158
  %179 = load i64, i64* %10, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %178
  %182 = load %struct.super_block*, %struct.super_block** %5, align 8
  %183 = load i64, i64* %10, align 8
  %184 = call i32 @reiserfs_resize(%struct.super_block* %182, i64 %183)
  store i32 %184, i32* %16, align 4
  %185 = load i32, i32* %16, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  br label %356

188:                                              ; preds = %181
  br label %189

189:                                              ; preds = %188, %178
  %190 = load i32*, i32** %6, align 8
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @SB_RDONLY, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %247

195:                                              ; preds = %189
  %196 = load %struct.super_block*, %struct.super_block** %5, align 8
  %197 = call i32 @reiserfs_write_unlock(%struct.super_block* %196)
  %198 = load %struct.super_block*, %struct.super_block** %5, align 8
  %199 = load i32*, i32** %6, align 8
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @reiserfs_xattr_init(%struct.super_block* %198, i32 %200)
  %202 = load %struct.super_block*, %struct.super_block** %5, align 8
  %203 = call i64 @sb_rdonly(%struct.super_block* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %195
  br label %355

206:                                              ; preds = %195
  %207 = load %struct.super_block*, %struct.super_block** %5, align 8
  %208 = call i32 @dquot_suspend(%struct.super_block* %207, i32 -1)
  store i32 %208, i32* %16, align 4
  %209 = load i32, i32* %16, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  br label %359

212:                                              ; preds = %206
  %213 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %8, align 8
  %214 = call i64 @sb_umount_state(%struct.reiserfs_super_block* %213)
  %215 = load i64, i64* @REISERFS_VALID_FS, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %224, label %217

217:                                              ; preds = %212
  %218 = load %struct.super_block*, %struct.super_block** %5, align 8
  %219 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %218)
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @REISERFS_VALID_FS, align 8
  %223 = icmp ne i64 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %217, %212
  br label %355

225:                                              ; preds = %217
  %226 = load %struct.super_block*, %struct.super_block** %5, align 8
  %227 = call i32 @reiserfs_write_lock(%struct.super_block* %226)
  %228 = load %struct.super_block*, %struct.super_block** %5, align 8
  %229 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %9, %struct.super_block* %228, i32 10)
  store i32 %229, i32* %16, align 4
  %230 = load i32, i32* %16, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %225
  br label %356

233:                                              ; preds = %225
  %234 = load %struct.super_block*, %struct.super_block** %5, align 8
  %235 = load %struct.super_block*, %struct.super_block** %5, align 8
  %236 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %235)
  %237 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %234, i32 %236, i32 1)
  %238 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %8, align 8
  %239 = load %struct.super_block*, %struct.super_block** %5, align 8
  %240 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %239)
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = call i32 @set_sb_umount_state(%struct.reiserfs_super_block* %238, i64 %242)
  %244 = load %struct.super_block*, %struct.super_block** %5, align 8
  %245 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %244)
  %246 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %9, i32 %245)
  br label %325

247:                                              ; preds = %189
  %248 = load %struct.super_block*, %struct.super_block** %5, align 8
  %249 = call i64 @sb_rdonly(%struct.super_block* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %258, label %251

251:                                              ; preds = %247
  %252 = load %struct.super_block*, %struct.super_block** %5, align 8
  %253 = call i32 @reiserfs_write_unlock(%struct.super_block* %252)
  %254 = load %struct.super_block*, %struct.super_block** %5, align 8
  %255 = load i32*, i32** %6, align 8
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @reiserfs_xattr_init(%struct.super_block* %254, i32 %256)
  br label %355

258:                                              ; preds = %247
  %259 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %14, align 8
  %260 = call i64 @reiserfs_is_journal_aborted(%struct.reiserfs_journal* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %258
  %263 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %14, align 8
  %264 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  store i32 %265, i32* %16, align 4
  br label %356

266:                                              ; preds = %258
  %267 = load %struct.super_block*, %struct.super_block** %5, align 8
  %268 = load i64, i64* %11, align 8
  %269 = call i32 @handle_data_mode(%struct.super_block* %267, i64 %268)
  %270 = load %struct.super_block*, %struct.super_block** %5, align 8
  %271 = load i64, i64* %11, align 8
  %272 = call i32 @handle_barrier_mode(%struct.super_block* %270, i64 %271)
  %273 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %8, align 8
  %274 = call i64 @sb_umount_state(%struct.reiserfs_super_block* %273)
  %275 = load %struct.super_block*, %struct.super_block** %5, align 8
  %276 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %275)
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 2
  store i64 %274, i64* %277, align 8
  %278 = load i32, i32* @SB_RDONLY, align 4
  %279 = xor i32 %278, -1
  %280 = load %struct.super_block*, %struct.super_block** %5, align 8
  %281 = getelementptr inbounds %struct.super_block, %struct.super_block* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = and i32 %282, %279
  store i32 %283, i32* %281, align 4
  %284 = load %struct.super_block*, %struct.super_block** %5, align 8
  %285 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %9, %struct.super_block* %284, i32 10)
  store i32 %285, i32* %16, align 4
  %286 = load i32, i32* %16, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %266
  br label %356

289:                                              ; preds = %266
  %290 = load %struct.super_block*, %struct.super_block** %5, align 8
  %291 = load %struct.super_block*, %struct.super_block** %5, align 8
  %292 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %291)
  %293 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %290, i32 %292, i32 1)
  %294 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %8, align 8
  %295 = call i64 @sb_umount_state(%struct.reiserfs_super_block* %294)
  %296 = load %struct.super_block*, %struct.super_block** %5, align 8
  %297 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %296)
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 2
  store i64 %295, i64* %298, align 8
  %299 = load i32, i32* @SB_RDONLY, align 4
  %300 = xor i32 %299, -1
  %301 = load %struct.super_block*, %struct.super_block** %5, align 8
  %302 = getelementptr inbounds %struct.super_block, %struct.super_block* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = and i32 %303, %300
  store i32 %304, i32* %302, align 4
  %305 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %8, align 8
  %306 = load i64, i64* @REISERFS_ERROR_FS, align 8
  %307 = call i32 @set_sb_umount_state(%struct.reiserfs_super_block* %305, i64 %306)
  %308 = load %struct.super_block*, %struct.super_block** %5, align 8
  %309 = call i32 @old_format_only(%struct.super_block* %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %317, label %311

311:                                              ; preds = %289
  %312 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %8, align 8
  %313 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %8, align 8
  %314 = call i64 @sb_mnt_count(%struct.reiserfs_super_block* %313)
  %315 = add nsw i64 %314, 1
  %316 = call i32 @set_sb_mnt_count(%struct.reiserfs_super_block* %312, i64 %315)
  br label %317

317:                                              ; preds = %311, %289
  %318 = load %struct.super_block*, %struct.super_block** %5, align 8
  %319 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %318)
  %320 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %9, i32 %319)
  %321 = load i64, i64* @REISERFS_VALID_FS, align 8
  %322 = load %struct.super_block*, %struct.super_block** %5, align 8
  %323 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %322)
  %324 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %323, i32 0, i32 2
  store i64 %321, i64* %324, align 8
  br label %325

325:                                              ; preds = %317, %233
  %326 = load %struct.super_block*, %struct.super_block** %5, align 8
  %327 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %326)
  %328 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %327, i32 0, i32 4
  store i32 1, i32* %328, align 4
  %329 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %9)
  store i32 %329, i32* %16, align 4
  %330 = load i32, i32* %16, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %325
  br label %356

333:                                              ; preds = %325
  %334 = load %struct.super_block*, %struct.super_block** %5, align 8
  %335 = call i32 @reiserfs_write_unlock(%struct.super_block* %334)
  %336 = load i32*, i32** %6, align 8
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @SB_RDONLY, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %354, label %341

341:                                              ; preds = %333
  %342 = load %struct.super_block*, %struct.super_block** %5, align 8
  %343 = call i32 @dquot_resume(%struct.super_block* %342, i32 -1)
  %344 = load %struct.super_block*, %struct.super_block** %5, align 8
  %345 = call i32 @reiserfs_write_lock(%struct.super_block* %344)
  %346 = load %struct.super_block*, %struct.super_block** %5, align 8
  %347 = call i32 @finish_unfinished(%struct.super_block* %346)
  %348 = load %struct.super_block*, %struct.super_block** %5, align 8
  %349 = call i32 @reiserfs_write_unlock(%struct.super_block* %348)
  %350 = load %struct.super_block*, %struct.super_block** %5, align 8
  %351 = load i32*, i32** %6, align 8
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @reiserfs_xattr_init(%struct.super_block* %350, i32 %352)
  br label %354

354:                                              ; preds = %341, %333
  br label %355

355:                                              ; preds = %354, %251, %224, %205
  store i32 0, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %363

356:                                              ; preds = %332, %288, %262, %232, %187, %53
  %357 = load %struct.super_block*, %struct.super_block** %5, align 8
  %358 = call i32 @reiserfs_write_unlock(%struct.super_block* %357)
  br label %359

359:                                              ; preds = %356, %211
  %360 = load i8*, i8** %15, align 8
  %361 = call i32 @kfree(i8* %360)
  %362 = load i32, i32* %16, align 4
  store i32 %362, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %363

363:                                              ; preds = %359, %355, %39
  %364 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %364)
  %365 = load i32, i32* %4, align 4
  ret i32 %365
}

declare dso_local %struct.TYPE_2__* @REISERFS_SB(%struct.super_block*) #1

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @sync_filesystem(%struct.super_block*) #1

declare dso_local i32 @reiserfs_write_lock(%struct.super_block*) #1

declare dso_local %struct.reiserfs_super_block* @SB_DISK_SUPER_BLOCK(%struct.super_block*) #1

declare dso_local i32 @reiserfs_parse_options(%struct.super_block*, i8*, i64*, i64*, i32*, i32*, i8**, i32*) #1

declare dso_local i32 @handle_attrs(%struct.super_block*) #1

declare dso_local i32 @reiserfs_resize(%struct.super_block*, i64) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.super_block*) #1

declare dso_local i32 @reiserfs_xattr_init(%struct.super_block*, i32) #1

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @dquot_suspend(%struct.super_block*, i32) #1

declare dso_local i64 @sb_umount_state(%struct.reiserfs_super_block*) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32) #1

declare dso_local i32 @reiserfs_prepare_for_journal(%struct.super_block*, i32, i32) #1

declare dso_local i32 @SB_BUFFER_WITH_SB(%struct.super_block*) #1

declare dso_local i32 @set_sb_umount_state(%struct.reiserfs_super_block*, i64) #1

declare dso_local i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle*, i32) #1

declare dso_local i64 @reiserfs_is_journal_aborted(%struct.reiserfs_journal*) #1

declare dso_local i32 @handle_data_mode(%struct.super_block*, i64) #1

declare dso_local i32 @handle_barrier_mode(%struct.super_block*, i64) #1

declare dso_local i32 @old_format_only(%struct.super_block*) #1

declare dso_local i32 @set_sb_mnt_count(%struct.reiserfs_super_block*, i64) #1

declare dso_local i64 @sb_mnt_count(%struct.reiserfs_super_block*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @dquot_resume(%struct.super_block*, i32) #1

declare dso_local i32 @finish_unfinished(%struct.super_block*) #1

declare dso_local i32 @kfree(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
