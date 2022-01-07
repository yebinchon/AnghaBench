; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_vfs_load_quota_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_vfs_load_quota_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32, i32*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.quota_format_type = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)* }
%struct.quota_info = type { i32, i32**, %struct.TYPE_8__*, %struct.TYPE_7__** }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.quota_format_type* }

@ESRCH = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@PRJQUOTA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@DQUOT_USAGE_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DQUOT_QUOTA_SYS_FILE = common dso_local global i32 0, align 4
@S_NOQUOTA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@dq_data_lock = common dso_local global i32 0, align 4
@DQF_SYS_FILE = common dso_local global i32 0, align 4
@dq_state_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i32)* @vfs_load_quota_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_load_quota_inode(%struct.inode* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.quota_format_type*, align 8
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca %struct.quota_info*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.quota_format_type* @find_quota_format(i32 %14)
  store %struct.quota_format_type* %15, %struct.quota_format_type** %10, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 2
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %11, align 8
  %19 = load %struct.super_block*, %struct.super_block** %11, align 8
  %20 = call %struct.quota_info* @sb_dqopt(%struct.super_block* %19)
  store %struct.quota_info* %20, %struct.quota_info** %12, align 8
  %21 = load %struct.quota_format_type*, %struct.quota_format_type** %10, align 8
  %22 = icmp ne %struct.quota_format_type* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ESRCH, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %275

26:                                               ; preds = %4
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @S_ISREG(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @EACCES, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %13, align 4
  br label %271

35:                                               ; preds = %26
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = call i64 @IS_RDONLY(%struct.inode* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EROFS, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %13, align 4
  br label %271

42:                                               ; preds = %35
  %43 = load %struct.super_block*, %struct.super_block** %11, align 8
  %44 = getelementptr inbounds %struct.super_block, %struct.super_block* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %42
  %50 = load %struct.super_block*, %struct.super_block** %11, align 8
  %51 = getelementptr inbounds %struct.super_block, %struct.super_block* %50, i32 0, i32 3
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @PRJQUOTA, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load %struct.super_block*, %struct.super_block** %11, align 8
  %62 = getelementptr inbounds %struct.super_block, %struct.super_block* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %60, %49, %42
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %13, align 4
  br label %271

70:                                               ; preds = %60, %56
  %71 = load %struct.super_block*, %struct.super_block** %11, align 8
  %72 = getelementptr inbounds %struct.super_block, %struct.super_block* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, @init_user_ns
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %13, align 4
  br label %271

78:                                               ; preds = %70
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @DQUOT_USAGE_ENABLED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %13, align 4
  br label %271

86:                                               ; preds = %78
  %87 = load %struct.super_block*, %struct.super_block** %11, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i64 @sb_has_quota_loaded(%struct.super_block* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* @EBUSY, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %13, align 4
  br label %271

94:                                               ; preds = %86
  %95 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %96 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @DQUOT_QUOTA_SYS_FILE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %94
  %102 = load %struct.super_block*, %struct.super_block** %11, align 8
  %103 = call i32 @sync_filesystem(%struct.super_block* %102)
  %104 = load %struct.super_block*, %struct.super_block** %11, align 8
  %105 = getelementptr inbounds %struct.super_block, %struct.super_block* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @invalidate_bdev(i32 %106)
  br label %108

108:                                              ; preds = %101, %94
  %109 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %110 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @DQUOT_QUOTA_SYS_FILE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %127, label %115

115:                                              ; preds = %108
  %116 = load %struct.inode*, %struct.inode** %6, align 8
  %117 = call i32 @inode_lock(%struct.inode* %116)
  %118 = load i32, i32* @S_NOQUOTA, align 4
  %119 = load %struct.inode*, %struct.inode** %6, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = load %struct.inode*, %struct.inode** %6, align 8
  %124 = call i32 @inode_unlock(%struct.inode* %123)
  %125 = load %struct.inode*, %struct.inode** %6, align 8
  %126 = call i32 @__dquot_drop(%struct.inode* %125)
  br label %127

127:                                              ; preds = %115, %108
  %128 = load i32, i32* @EIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %13, align 4
  %130 = load %struct.inode*, %struct.inode** %6, align 8
  %131 = call i32* @igrab(%struct.inode* %130)
  %132 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %133 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %132, i32 0, i32 1
  %134 = load i32**, i32*** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32*, i32** %134, i64 %136
  store i32* %131, i32** %137, align 8
  %138 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %139 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %138, i32 0, i32 1
  %140 = load i32**, i32*** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %127
  br label %260

147:                                              ; preds = %127
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %13, align 4
  %150 = load %struct.quota_format_type*, %struct.quota_format_type** %10, align 8
  %151 = getelementptr inbounds %struct.quota_format_type, %struct.quota_format_type* %150, i32 0, i32 0
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %153, align 8
  %155 = load %struct.super_block*, %struct.super_block** %11, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call i32 %154(%struct.super_block* %155, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %147
  br label %251

160:                                              ; preds = %147
  %161 = load %struct.quota_format_type*, %struct.quota_format_type** %10, align 8
  %162 = getelementptr inbounds %struct.quota_format_type, %struct.quota_format_type* %161, i32 0, i32 0
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %165 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %164, i32 0, i32 3
  %166 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %166, i64 %168
  store %struct.TYPE_7__* %163, %struct.TYPE_7__** %169, align 8
  %170 = load %struct.quota_format_type*, %struct.quota_format_type** %10, align 8
  %171 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %172 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %171, i32 0, i32 2
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 3
  store %struct.quota_format_type* %170, %struct.quota_format_type** %177, align 8
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %180 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %179, i32 0, i32 2
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  store i32 %178, i32* %185, align 8
  %186 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %187 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %186, i32 0, i32 2
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 2
  %193 = call i32 @INIT_LIST_HEAD(i32* %192)
  %194 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %195 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %194, i32 0, i32 3
  %196 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %196, i64 %198
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %201, align 8
  %203 = load %struct.super_block*, %struct.super_block** %11, align 8
  %204 = load i32, i32* %7, align 4
  %205 = call i32 %202(%struct.super_block* %203, i32 %204)
  store i32 %205, i32* %13, align 4
  %206 = load i32, i32* %13, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %160
  br label %251

209:                                              ; preds = %160
  %210 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %211 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @DQUOT_QUOTA_SYS_FILE, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %229

216:                                              ; preds = %209
  %217 = call i32 @spin_lock(i32* @dq_data_lock)
  %218 = load i32, i32* @DQF_SYS_FILE, align 4
  %219 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %220 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %219, i32 0, i32 2
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %220, align 8
  %222 = load i32, i32* %7, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %226, %218
  store i32 %227, i32* %225, align 4
  %228 = call i32 @spin_unlock(i32* @dq_data_lock)
  br label %229

229:                                              ; preds = %216, %209
  %230 = call i32 @spin_lock(i32* @dq_state_lock)
  %231 = load i32, i32* %9, align 4
  %232 = load i32, i32* %7, align 4
  %233 = call i32 @dquot_state_flag(i32 %231, i32 %232)
  %234 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %235 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 8
  %238 = call i32 @spin_unlock(i32* @dq_state_lock)
  %239 = load %struct.super_block*, %struct.super_block** %11, align 8
  %240 = load i32, i32* %7, align 4
  %241 = call i32 @add_dquot_ref(%struct.super_block* %239, i32 %240)
  store i32 %241, i32* %13, align 4
  %242 = load i32, i32* %13, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %229
  %245 = load %struct.super_block*, %struct.super_block** %11, align 8
  %246 = load i32, i32* %7, align 4
  %247 = load i32, i32* %9, align 4
  %248 = call i32 @dquot_disable(%struct.super_block* %245, i32 %246, i32 %247)
  br label %249

249:                                              ; preds = %244, %229
  %250 = load i32, i32* %13, align 4
  store i32 %250, i32* %5, align 4
  br label %275

251:                                              ; preds = %208, %159
  %252 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %253 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %252, i32 0, i32 1
  %254 = load i32**, i32*** %253, align 8
  %255 = load i32, i32* %7, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32*, i32** %254, i64 %256
  store i32* null, i32** %257, align 8
  %258 = load %struct.inode*, %struct.inode** %6, align 8
  %259 = call i32 @iput(%struct.inode* %258)
  br label %260

260:                                              ; preds = %251, %146
  %261 = load %struct.inode*, %struct.inode** %6, align 8
  %262 = call i32 @inode_lock(%struct.inode* %261)
  %263 = load i32, i32* @S_NOQUOTA, align 4
  %264 = xor i32 %263, -1
  %265 = load %struct.inode*, %struct.inode** %6, align 8
  %266 = getelementptr inbounds %struct.inode, %struct.inode* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = and i32 %267, %264
  store i32 %268, i32* %266, align 8
  %269 = load %struct.inode*, %struct.inode** %6, align 8
  %270 = call i32 @inode_unlock(%struct.inode* %269)
  br label %271

271:                                              ; preds = %260, %91, %83, %75, %67, %39, %32
  %272 = load %struct.quota_format_type*, %struct.quota_format_type** %10, align 8
  %273 = call i32 @put_quota_format(%struct.quota_format_type* %272)
  %274 = load i32, i32* %13, align 4
  store i32 %274, i32* %5, align 4
  br label %275

275:                                              ; preds = %271, %249, %23
  %276 = load i32, i32* %5, align 4
  ret i32 %276
}

declare dso_local %struct.quota_format_type* @find_quota_format(i32) #1

declare dso_local %struct.quota_info* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @IS_RDONLY(%struct.inode*) #1

declare dso_local i64 @sb_has_quota_loaded(%struct.super_block*, i32) #1

declare dso_local i32 @sync_filesystem(%struct.super_block*) #1

declare dso_local i32 @invalidate_bdev(i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @__dquot_drop(%struct.inode*) #1

declare dso_local i32* @igrab(%struct.inode*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dquot_state_flag(i32, i32) #1

declare dso_local i32 @add_dquot_ref(%struct.super_block*, i32) #1

declare dso_local i32 @dquot_disable(%struct.super_block*, i32, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @put_quota_format(%struct.quota_format_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
