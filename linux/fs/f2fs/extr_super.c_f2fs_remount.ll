; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_remount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_remount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64 }
%struct.f2fs_sb_info = type { %struct.f2fs_mount_info, i64 }
%struct.f2fs_mount_info = type { i64, i32**, i32 }
%struct.TYPE_2__ = type { i64, i32**, i32 }

@EXTENT_CACHE = common dso_local global i32 0, align 4
@DISABLE_CHECKPOINT = common dso_local global i32 0, align 4
@SB_RDONLY = common dso_local global i32 0, align 4
@SBI_NEED_SB_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Try to recover all the superblocks, ret: %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"switch extent_cache option is not allowed\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"switch io_bits option is not allowed\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"disabling checkpoint not compatible with read-only\00", align 1
@BG_GC = common dso_local global i32 0, align 4
@WB_REASON_SYNC = common dso_local global i32 0, align 4
@SBI_IS_DIRTY = common dso_local global i32 0, align 4
@SBI_IS_CLOSE = common dso_local global i32 0, align 4
@FLUSH_MERGE = common dso_local global i32 0, align 4
@SB_POSIXACL = common dso_local global i32 0, align 4
@POSIX_ACL = common dso_local global i32 0, align 4
@SB_LAZYTIME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"background gc thread has stopped\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MAXQUOTAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i8*)* @f2fs_remount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_remount(%struct.super_block* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.f2fs_sb_info*, align 8
  %9 = alloca %struct.f2fs_mount_info, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_2__, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = call %struct.f2fs_sb_info* @F2FS_SB(%struct.super_block* %19)
  store %struct.f2fs_sb_info* %20, %struct.f2fs_sb_info** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %22 = load i32, i32* @EXTENT_CACHE, align 4
  %23 = call i32 @test_opt(%struct.f2fs_sb_info* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %14, align 4
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %28 = load i32, i32* @DISABLE_CHECKPOINT, align 4
  %29 = call i32 @test_opt(%struct.f2fs_sb_info* %27, i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %31 = call i32 @F2FS_IO_ALIGNED(%struct.f2fs_sb_info* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %16, align 4
  %35 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %36 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %35, i32 0, i32 0
  %37 = bitcast %struct.f2fs_mount_info* %9 to i8*
  %38 = bitcast %struct.f2fs_mount_info* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 24, i1 false)
  %39 = load %struct.super_block*, %struct.super_block** %5, align 8
  %40 = getelementptr inbounds %struct.super_block, %struct.super_block* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %10, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SB_RDONLY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %65, label %47

47:                                               ; preds = %3
  %48 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %49 = load i32, i32* @SBI_NEED_SB_WRITE, align 4
  %50 = call i64 @is_sbi_flag_set(%struct.f2fs_sb_info* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %54 = call i32 @f2fs_commit_super(%struct.f2fs_sb_info* %53, i32 0)
  store i32 %54, i32* %11, align 4
  %55 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @f2fs_info(%struct.f2fs_sb_info* %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %52
  %61 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %62 = load i32, i32* @SBI_NEED_SB_WRITE, align 4
  %63 = call i32 @clear_sbi_flag(%struct.f2fs_sb_info* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %52
  br label %65

65:                                               ; preds = %64, %47, %3
  %66 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %67 = call i32 @default_options(%struct.f2fs_sb_info* %66)
  %68 = load %struct.super_block*, %struct.super_block** %5, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @parse_options(%struct.super_block* %68, i8* %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %300

74:                                               ; preds = %65
  %75 = load i32, i32* %15, align 4
  %76 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %77 = load i32, i32* @DISABLE_CHECKPOINT, align 4
  %78 = call i32 @test_opt(%struct.f2fs_sb_info* %76, i32 %77)
  %79 = icmp ne i32 %75, %78
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %17, align 4
  %81 = load %struct.super_block*, %struct.super_block** %5, align 8
  %82 = call i64 @f2fs_readonly(%struct.super_block* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %74
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @SB_RDONLY, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %243

91:                                               ; preds = %84, %74
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %94 = load i32, i32* @EXTENT_CACHE, align 4
  %95 = call i32 @test_opt(%struct.f2fs_sb_info* %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = icmp eq i32 %92, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %91
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %11, align 4
  %104 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %105 = call i32 @f2fs_warn(%struct.f2fs_sb_info* %104, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %300

106:                                              ; preds = %91
  %107 = load i32, i32* %16, align 4
  %108 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %109 = call i32 @F2FS_IO_ALIGNED(%struct.f2fs_sb_info* %108)
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = icmp eq i32 %107, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %106
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %11, align 4
  %118 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %119 = call i32 @f2fs_warn(%struct.f2fs_sb_info* %118, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %300

120:                                              ; preds = %106
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @SB_RDONLY, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %120
  %127 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %128 = load i32, i32* @DISABLE_CHECKPOINT, align 4
  %129 = call i32 @test_opt(%struct.f2fs_sb_info* %127, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %11, align 4
  %134 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %135 = call i32 @f2fs_warn(%struct.f2fs_sb_info* %134, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %300

136:                                              ; preds = %126, %120
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @SB_RDONLY, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %136
  %143 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %144 = load i32, i32* @BG_GC, align 4
  %145 = call i32 @test_opt(%struct.f2fs_sb_info* %143, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %156, label %147

147:                                              ; preds = %142, %136
  %148 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %149 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %154 = call i32 @f2fs_stop_gc_thread(%struct.f2fs_sb_info* %153)
  store i32 1, i32* %12, align 4
  br label %155

155:                                              ; preds = %152, %147
  br label %169

156:                                              ; preds = %142
  %157 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %158 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %156
  %162 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %163 = call i32 @f2fs_start_gc_thread(%struct.f2fs_sb_info* %162)
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %300

167:                                              ; preds = %161
  store i32 1, i32* %13, align 4
  br label %168

168:                                              ; preds = %167, %156
  br label %169

169:                                              ; preds = %168, %155
  %170 = load i32*, i32** %6, align 8
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @SB_RDONLY, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %169
  %176 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  call void @F2FS_OPTION(%struct.TYPE_2__* sret %18, %struct.f2fs_sb_info* %176)
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.f2fs_mount_info, %struct.f2fs_mount_info* %9, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %178, %180
  br i1 %181, label %182, label %199

182:                                              ; preds = %175, %169
  %183 = load %struct.super_block*, %struct.super_block** %5, align 8
  %184 = load i32, i32* @WB_REASON_SYNC, align 4
  %185 = call i32 @writeback_inodes_sb(%struct.super_block* %183, i32 %184)
  %186 = load %struct.super_block*, %struct.super_block** %5, align 8
  %187 = call i32 @sync_inodes_sb(%struct.super_block* %186)
  %188 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %189 = load i32, i32* @SBI_IS_DIRTY, align 4
  %190 = call i32 @set_sbi_flag(%struct.f2fs_sb_info* %188, i32 %189)
  %191 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %192 = load i32, i32* @SBI_IS_CLOSE, align 4
  %193 = call i32 @set_sbi_flag(%struct.f2fs_sb_info* %191, i32 %192)
  %194 = load %struct.super_block*, %struct.super_block** %5, align 8
  %195 = call i32 @f2fs_sync_fs(%struct.super_block* %194, i32 1)
  %196 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %197 = load i32, i32* @SBI_IS_CLOSE, align 4
  %198 = call i32 @clear_sbi_flag(%struct.f2fs_sb_info* %196, i32 %197)
  br label %199

199:                                              ; preds = %182, %175
  %200 = load i32, i32* %17, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %218

202:                                              ; preds = %199
  %203 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %204 = load i32, i32* @DISABLE_CHECKPOINT, align 4
  %205 = call i32 @test_opt(%struct.f2fs_sb_info* %203, i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %202
  %208 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %209 = call i32 @f2fs_disable_checkpoint(%struct.f2fs_sb_info* %208)
  store i32 %209, i32* %11, align 4
  %210 = load i32, i32* %11, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  br label %281

213:                                              ; preds = %207
  br label %217

214:                                              ; preds = %202
  %215 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %216 = call i32 @f2fs_enable_checkpoint(%struct.f2fs_sb_info* %215)
  br label %217

217:                                              ; preds = %214, %213
  br label %218

218:                                              ; preds = %217, %199
  %219 = load i32*, i32** %6, align 8
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @SB_RDONLY, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %229, label %224

224:                                              ; preds = %218
  %225 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %226 = load i32, i32* @FLUSH_MERGE, align 4
  %227 = call i32 @test_opt(%struct.f2fs_sb_info* %225, i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %235, label %229

229:                                              ; preds = %224, %218
  %230 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %231 = load i32, i32* @FLUSH_MERGE, align 4
  %232 = call i32 @clear_opt(%struct.f2fs_sb_info* %230, i32 %231)
  %233 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %234 = call i32 @f2fs_destroy_flush_cmd_control(%struct.f2fs_sb_info* %233, i32 0)
  br label %242

235:                                              ; preds = %224
  %236 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %237 = call i32 @f2fs_create_flush_cmd_control(%struct.f2fs_sb_info* %236)
  store i32 %237, i32* %11, align 4
  %238 = load i32, i32* %11, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %235
  br label %281

241:                                              ; preds = %235
  br label %242

242:                                              ; preds = %241, %229
  br label %243

243:                                              ; preds = %242, %90
  %244 = load %struct.super_block*, %struct.super_block** %5, align 8
  %245 = getelementptr inbounds %struct.super_block, %struct.super_block* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i32, i32* @SB_POSIXACL, align 4
  %248 = xor i32 %247, -1
  %249 = sext i32 %248 to i64
  %250 = and i64 %246, %249
  %251 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %252 = load i32, i32* @POSIX_ACL, align 4
  %253 = call i32 @test_opt(%struct.f2fs_sb_info* %251, i32 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %243
  %256 = load i32, i32* @SB_POSIXACL, align 4
  br label %258

257:                                              ; preds = %243
  br label %258

258:                                              ; preds = %257, %255
  %259 = phi i32 [ %256, %255 ], [ 0, %257 ]
  %260 = sext i32 %259 to i64
  %261 = or i64 %250, %260
  %262 = load %struct.super_block*, %struct.super_block** %5, align 8
  %263 = getelementptr inbounds %struct.super_block, %struct.super_block* %262, i32 0, i32 0
  store i64 %261, i64* %263, align 8
  %264 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %265 = call i32 @limit_reserve_root(%struct.f2fs_sb_info* %264)
  %266 = load i32*, i32** %6, align 8
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @SB_LAZYTIME, align 4
  %269 = xor i32 %268, -1
  %270 = and i32 %267, %269
  %271 = sext i32 %270 to i64
  %272 = load %struct.super_block*, %struct.super_block** %5, align 8
  %273 = getelementptr inbounds %struct.super_block, %struct.super_block* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i32, i32* @SB_LAZYTIME, align 4
  %276 = sext i32 %275 to i64
  %277 = and i64 %274, %276
  %278 = or i64 %271, %277
  %279 = trunc i64 %278 to i32
  %280 = load i32*, i32** %6, align 8
  store i32 %279, i32* %280, align 4
  store i32 0, i32* %4, align 4
  br label %309

281:                                              ; preds = %240, %212
  %282 = load i32, i32* %12, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %292

284:                                              ; preds = %281
  %285 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %286 = call i32 @f2fs_start_gc_thread(%struct.f2fs_sb_info* %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %284
  %289 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %290 = call i32 @f2fs_warn(%struct.f2fs_sb_info* %289, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %291

291:                                              ; preds = %288, %284
  br label %299

292:                                              ; preds = %281
  %293 = load i32, i32* %13, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %292
  %296 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %297 = call i32 @f2fs_stop_gc_thread(%struct.f2fs_sb_info* %296)
  br label %298

298:                                              ; preds = %295, %292
  br label %299

299:                                              ; preds = %298, %291
  br label %300

300:                                              ; preds = %299, %166, %131, %115, %101, %73
  %301 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %302 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %301, i32 0, i32 0
  %303 = bitcast %struct.f2fs_mount_info* %302 to i8*
  %304 = bitcast %struct.f2fs_mount_info* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %303, i8* align 8 %304, i64 24, i1 false)
  %305 = load i64, i64* %10, align 8
  %306 = load %struct.super_block*, %struct.super_block** %5, align 8
  %307 = getelementptr inbounds %struct.super_block, %struct.super_block* %306, i32 0, i32 0
  store i64 %305, i64* %307, align 8
  %308 = load i32, i32* %11, align 4
  store i32 %308, i32* %4, align 4
  br label %309

309:                                              ; preds = %300, %258
  %310 = load i32, i32* %4, align 4
  ret i32 %310
}

declare dso_local %struct.f2fs_sb_info* @F2FS_SB(%struct.super_block*) #1

declare dso_local i32 @test_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @F2FS_IO_ALIGNED(%struct.f2fs_sb_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_commit_super(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_info(%struct.f2fs_sb_info*, i8*, i32) #1

declare dso_local i32 @clear_sbi_flag(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @default_options(%struct.f2fs_sb_info*) #1

declare dso_local i32 @parse_options(%struct.super_block*, i8*) #1

declare dso_local i64 @f2fs_readonly(%struct.super_block*) #1

declare dso_local i32 @f2fs_warn(%struct.f2fs_sb_info*, i8*) #1

declare dso_local i32 @f2fs_stop_gc_thread(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_start_gc_thread(%struct.f2fs_sb_info*) #1

declare dso_local void @F2FS_OPTION(%struct.TYPE_2__* sret, %struct.f2fs_sb_info*) #1

declare dso_local i32 @writeback_inodes_sb(%struct.super_block*, i32) #1

declare dso_local i32 @sync_inodes_sb(%struct.super_block*) #1

declare dso_local i32 @set_sbi_flag(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_sync_fs(%struct.super_block*, i32) #1

declare dso_local i32 @f2fs_disable_checkpoint(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_enable_checkpoint(%struct.f2fs_sb_info*) #1

declare dso_local i32 @clear_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_destroy_flush_cmd_control(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_create_flush_cmd_control(%struct.f2fs_sb_info*) #1

declare dso_local i32 @limit_reserve_root(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
