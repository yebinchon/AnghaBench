; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_exchange.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32, %struct.inode* }
%struct.gfs2_inode = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_holder = type { i32 }

@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@GL_ASYNC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i32 0, align 4
@RES_LEAF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @gfs2_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_exchange(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gfs2_inode*, align 8
  %13 = alloca %struct.gfs2_inode*, align 8
  %14 = alloca %struct.gfs2_inode*, align 8
  %15 = alloca %struct.gfs2_inode*, align 8
  %16 = alloca %struct.gfs2_sbd*, align 8
  %17 = alloca [4 x %struct.gfs2_holder], align 16
  %18 = alloca %struct.gfs2_holder, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %24)
  store %struct.gfs2_inode* %25, %struct.gfs2_inode** %12, align 8
  %26 = load %struct.inode*, %struct.inode** %9, align 8
  %27 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %26)
  store %struct.gfs2_inode* %27, %struct.gfs2_inode** %13, align 8
  %28 = load %struct.dentry*, %struct.dentry** %8, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 1
  %30 = load %struct.inode*, %struct.inode** %29, align 8
  %31 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %30)
  store %struct.gfs2_inode* %31, %struct.gfs2_inode** %14, align 8
  %32 = load %struct.dentry*, %struct.dentry** %10, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 1
  %34 = load %struct.inode*, %struct.inode** %33, align 8
  %35 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %34)
  store %struct.gfs2_inode* %35, %struct.gfs2_inode** %15, align 8
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %36)
  store %struct.gfs2_sbd* %37, %struct.gfs2_sbd** %16, align 8
  %38 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %39 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %21, align 4
  %42 = load %struct.gfs2_inode*, %struct.gfs2_inode** %15, align 8
  %43 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %22, align 4
  %46 = call i32 @gfs2_holder_mark_uninitialized(%struct.gfs2_holder* %18)
  %47 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %16, align 8
  %48 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %47)
  store i32 %48, i32* %23, align 4
  %49 = load i32, i32* %23, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %5
  %52 = load i32, i32* %23, align 4
  store i32 %52, i32* %6, align 4
  br label %360

53:                                               ; preds = %5
  %54 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %55 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %56 = icmp ne %struct.gfs2_inode* %54, %55
  br i1 %56, label %57, label %91

57:                                               ; preds = %53
  %58 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %16, align 8
  %59 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %62 = call i32 @gfs2_glock_nq_init(i32 %60, i32 %61, i32 0, %struct.gfs2_holder* %18)
  store i32 %62, i32* %23, align 4
  %63 = load i32, i32* %23, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %358

66:                                               ; preds = %57
  %67 = load i32, i32* %21, align 4
  %68 = call i64 @S_ISDIR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %72 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %73 = call i32 @gfs2_ok_to_move(%struct.gfs2_inode* %71, %struct.gfs2_inode* %72)
  store i32 %73, i32* %23, align 4
  %74 = load i32, i32* %23, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %352

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %66
  %79 = load i32, i32* %22, align 4
  %80 = call i64 @S_ISDIR(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load %struct.gfs2_inode*, %struct.gfs2_inode** %15, align 8
  %84 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %85 = call i32 @gfs2_ok_to_move(%struct.gfs2_inode* %83, %struct.gfs2_inode* %84)
  store i32 %85, i32* %23, align 4
  %86 = load i32, i32* %23, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %352

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %78
  br label %91

91:                                               ; preds = %90, %53
  store i32 1, i32* %19, align 4
  %92 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %93 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %96 = load i32, i32* @GL_ASYNC, align 4
  %97 = getelementptr inbounds [4 x %struct.gfs2_holder], [4 x %struct.gfs2_holder]* %17, i64 0, i64 0
  %98 = call i32 @gfs2_holder_init(i32 %94, i32 %95, i32 %96, %struct.gfs2_holder* %97)
  %99 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %100 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %101 = icmp ne %struct.gfs2_inode* %99, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %91
  %103 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %104 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %107 = load i32, i32* @GL_ASYNC, align 4
  %108 = getelementptr inbounds [4 x %struct.gfs2_holder], [4 x %struct.gfs2_holder]* %17, i64 0, i64 0
  %109 = load i32, i32* %19, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %108, i64 %110
  %112 = call i32 @gfs2_holder_init(i32 %105, i32 %106, i32 %107, %struct.gfs2_holder* %111)
  %113 = load i32, i32* %19, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %19, align 4
  br label %115

115:                                              ; preds = %102, %91
  %116 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %117 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %120 = load i32, i32* @GL_ASYNC, align 4
  %121 = getelementptr inbounds [4 x %struct.gfs2_holder], [4 x %struct.gfs2_holder]* %17, i64 0, i64 0
  %122 = load i32, i32* %19, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %121, i64 %123
  %125 = call i32 @gfs2_holder_init(i32 %118, i32 %119, i32 %120, %struct.gfs2_holder* %124)
  %126 = load i32, i32* %19, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %19, align 4
  %128 = load %struct.gfs2_inode*, %struct.gfs2_inode** %15, align 8
  %129 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %132 = load i32, i32* @GL_ASYNC, align 4
  %133 = getelementptr inbounds [4 x %struct.gfs2_holder], [4 x %struct.gfs2_holder]* %17, i64 0, i64 0
  %134 = load i32, i32* %19, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %133, i64 %135
  %137 = call i32 @gfs2_holder_init(i32 %130, i32 %131, i32 %132, %struct.gfs2_holder* %136)
  %138 = load i32, i32* %19, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %140

140:                                              ; preds = %154, %115
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* %19, align 4
  %143 = icmp ult i32 %141, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %140
  %145 = getelementptr inbounds [4 x %struct.gfs2_holder], [4 x %struct.gfs2_holder]* %17, i64 0, i64 0
  %146 = load i32, i32* %20, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %145, i64 %147
  %149 = call i32 @gfs2_glock_nq(%struct.gfs2_holder* %148)
  store i32 %149, i32* %23, align 4
  %150 = load i32, i32* %23, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  br label %327

153:                                              ; preds = %144
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %20, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %20, align 4
  br label %140

157:                                              ; preds = %140
  %158 = load i32, i32* %19, align 4
  %159 = getelementptr inbounds [4 x %struct.gfs2_holder], [4 x %struct.gfs2_holder]* %17, i64 0, i64 0
  %160 = call i32 @gfs2_glock_async_wait(i32 %158, %struct.gfs2_holder* %159)
  store i32 %160, i32* %23, align 4
  %161 = load i32, i32* %23, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %327

164:                                              ; preds = %157
  %165 = load i32, i32* @ENOENT, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %23, align 4
  %167 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %168 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %164
  %173 = load %struct.gfs2_inode*, %struct.gfs2_inode** %15, align 8
  %174 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %172, %164
  br label %327

179:                                              ; preds = %172
  %180 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %181 = load %struct.dentry*, %struct.dentry** %8, align 8
  %182 = getelementptr inbounds %struct.dentry, %struct.dentry* %181, i32 0, i32 0
  %183 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %184 = call i32 @gfs2_unlink_ok(%struct.gfs2_inode* %180, i32* %182, %struct.gfs2_inode* %183)
  store i32 %184, i32* %23, align 4
  %185 = load i32, i32* %23, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %179
  br label %327

188:                                              ; preds = %179
  %189 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %190 = load %struct.dentry*, %struct.dentry** %10, align 8
  %191 = getelementptr inbounds %struct.dentry, %struct.dentry* %190, i32 0, i32 0
  %192 = load %struct.gfs2_inode*, %struct.gfs2_inode** %15, align 8
  %193 = call i32 @gfs2_unlink_ok(%struct.gfs2_inode* %189, i32* %191, %struct.gfs2_inode* %192)
  store i32 %193, i32* %23, align 4
  %194 = load i32, i32* %23, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %188
  br label %327

197:                                              ; preds = %188
  %198 = load i32, i32* %21, align 4
  %199 = call i64 @S_ISDIR(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %197
  %202 = load %struct.dentry*, %struct.dentry** %8, align 8
  %203 = getelementptr inbounds %struct.dentry, %struct.dentry* %202, i32 0, i32 1
  %204 = load %struct.inode*, %struct.inode** %203, align 8
  %205 = load i32, i32* @MAY_WRITE, align 4
  %206 = call i32 @gfs2_permission(%struct.inode* %204, i32 %205)
  store i32 %206, i32* %23, align 4
  %207 = load i32, i32* %23, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %201
  br label %327

210:                                              ; preds = %201
  br label %211

211:                                              ; preds = %210, %197
  %212 = load i32, i32* %22, align 4
  %213 = call i64 @S_ISDIR(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %211
  %216 = load %struct.dentry*, %struct.dentry** %10, align 8
  %217 = getelementptr inbounds %struct.dentry, %struct.dentry* %216, i32 0, i32 1
  %218 = load %struct.inode*, %struct.inode** %217, align 8
  %219 = load i32, i32* @MAY_WRITE, align 4
  %220 = call i32 @gfs2_permission(%struct.inode* %218, i32 %219)
  store i32 %220, i32* %23, align 4
  %221 = load i32, i32* %23, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %215
  br label %327

224:                                              ; preds = %215
  br label %225

225:                                              ; preds = %224, %211
  %226 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %16, align 8
  %227 = load i32, i32* @RES_DINODE, align 4
  %228 = mul nsw i32 4, %227
  %229 = load i32, i32* @RES_LEAF, align 4
  %230 = mul nsw i32 4, %229
  %231 = add nsw i32 %228, %230
  %232 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %226, i32 %231, i32 0)
  store i32 %232, i32* %23, align 4
  %233 = load i32, i32* %23, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %225
  br label %327

236:                                              ; preds = %225
  %237 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %238 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %239 = load i32, i32* %21, align 4
  %240 = call i64 @S_ISDIR(i32 %239)
  %241 = call i32 @update_moved_ino(%struct.gfs2_inode* %237, %struct.gfs2_inode* %238, i64 %240)
  store i32 %241, i32* %23, align 4
  %242 = load i32, i32* %23, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %236
  br label %324

245:                                              ; preds = %236
  %246 = load %struct.gfs2_inode*, %struct.gfs2_inode** %15, align 8
  %247 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %248 = load i32, i32* %22, align 4
  %249 = call i64 @S_ISDIR(i32 %248)
  %250 = call i32 @update_moved_ino(%struct.gfs2_inode* %246, %struct.gfs2_inode* %247, i64 %249)
  store i32 %250, i32* %23, align 4
  %251 = load i32, i32* %23, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %245
  br label %324

254:                                              ; preds = %245
  %255 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %256 = load %struct.dentry*, %struct.dentry** %10, align 8
  %257 = getelementptr inbounds %struct.dentry, %struct.dentry* %256, i32 0, i32 0
  %258 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %259 = load i32, i32* %21, align 4
  %260 = call i32 @IF2DT(i32 %259)
  %261 = call i32 @gfs2_dir_mvino(%struct.gfs2_inode* %255, i32* %257, %struct.gfs2_inode* %258, i32 %260)
  store i32 %261, i32* %23, align 4
  %262 = load i32, i32* %23, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %254
  br label %324

265:                                              ; preds = %254
  %266 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %267 = load %struct.dentry*, %struct.dentry** %8, align 8
  %268 = getelementptr inbounds %struct.dentry, %struct.dentry* %267, i32 0, i32 0
  %269 = load %struct.gfs2_inode*, %struct.gfs2_inode** %15, align 8
  %270 = load i32, i32* %22, align 4
  %271 = call i32 @IF2DT(i32 %270)
  %272 = call i32 @gfs2_dir_mvino(%struct.gfs2_inode* %266, i32* %268, %struct.gfs2_inode* %269, i32 %271)
  store i32 %272, i32* %23, align 4
  %273 = load i32, i32* %23, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %265
  br label %324

276:                                              ; preds = %265
  %277 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %278 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %279 = icmp ne %struct.gfs2_inode* %277, %278
  br i1 %279, label %280, label %312

280:                                              ; preds = %276
  %281 = load i32, i32* %22, align 4
  %282 = call i64 @S_ISDIR(i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %295

284:                                              ; preds = %280
  %285 = load i32, i32* %21, align 4
  %286 = call i64 @S_ISDIR(i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %295, label %288

288:                                              ; preds = %284
  %289 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %290 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %289, i32 0, i32 0
  %291 = call i32 @inc_nlink(%struct.TYPE_4__* %290)
  %292 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %293 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %292, i32 0, i32 0
  %294 = call i32 @drop_nlink(%struct.TYPE_4__* %293)
  br label %311

295:                                              ; preds = %284, %280
  %296 = load i32, i32* %21, align 4
  %297 = call i64 @S_ISDIR(i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %310

299:                                              ; preds = %295
  %300 = load i32, i32* %22, align 4
  %301 = call i64 @S_ISDIR(i32 %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %310, label %303

303:                                              ; preds = %299
  %304 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %305 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %304, i32 0, i32 0
  %306 = call i32 @inc_nlink(%struct.TYPE_4__* %305)
  %307 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %308 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %307, i32 0, i32 0
  %309 = call i32 @drop_nlink(%struct.TYPE_4__* %308)
  br label %310

310:                                              ; preds = %303, %299, %295
  br label %311

311:                                              ; preds = %310, %288
  br label %312

312:                                              ; preds = %311, %276
  %313 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %314 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %313, i32 0, i32 0
  %315 = call i32 @mark_inode_dirty(%struct.TYPE_4__* %314)
  %316 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %317 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %318 = icmp ne %struct.gfs2_inode* %316, %317
  br i1 %318, label %319, label %323

319:                                              ; preds = %312
  %320 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %321 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %320, i32 0, i32 0
  %322 = call i32 @mark_inode_dirty(%struct.TYPE_4__* %321)
  br label %323

323:                                              ; preds = %319, %312
  br label %324

324:                                              ; preds = %323, %275, %264, %253, %244
  %325 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %16, align 8
  %326 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %325)
  br label %327

327:                                              ; preds = %324, %235, %223, %209, %196, %187, %178, %163, %152
  br label %328

328:                                              ; preds = %345, %327
  %329 = load i32, i32* %20, align 4
  %330 = add i32 %329, -1
  store i32 %330, i32* %20, align 4
  %331 = icmp ne i32 %329, 0
  br i1 %331, label %332, label %351

332:                                              ; preds = %328
  %333 = getelementptr inbounds [4 x %struct.gfs2_holder], [4 x %struct.gfs2_holder]* %17, i64 0, i64 0
  %334 = load i32, i32* %20, align 4
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %333, i64 %335
  %337 = call i64 @gfs2_holder_queued(%struct.gfs2_holder* %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %345

339:                                              ; preds = %332
  %340 = getelementptr inbounds [4 x %struct.gfs2_holder], [4 x %struct.gfs2_holder]* %17, i64 0, i64 0
  %341 = load i32, i32* %20, align 4
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %340, i64 %342
  %344 = call i32 @gfs2_glock_dq(%struct.gfs2_holder* %343)
  br label %345

345:                                              ; preds = %339, %332
  %346 = getelementptr inbounds [4 x %struct.gfs2_holder], [4 x %struct.gfs2_holder]* %17, i64 0, i64 0
  %347 = load i32, i32* %20, align 4
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %346, i64 %348
  %350 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %349)
  br label %328

351:                                              ; preds = %328
  br label %352

352:                                              ; preds = %351, %88, %76
  %353 = call i64 @gfs2_holder_initialized(%struct.gfs2_holder* %18)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %352
  %356 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %18)
  br label %357

357:                                              ; preds = %355, %352
  br label %358

358:                                              ; preds = %357, %65
  %359 = load i32, i32* %23, align 4
  store i32 %359, i32* %6, align 4
  br label %360

360:                                              ; preds = %358, %51
  %361 = load i32, i32* %6, align 4
  ret i32 %361
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @gfs2_holder_mark_uninitialized(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @gfs2_ok_to_move(%struct.gfs2_inode*, %struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_holder_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_nq(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_async_wait(i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_unlink_ok(%struct.gfs2_inode*, i32*, %struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_permission(%struct.inode*, i32) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @update_moved_ino(%struct.gfs2_inode*, %struct.gfs2_inode*, i64) #1

declare dso_local i32 @gfs2_dir_mvino(%struct.gfs2_inode*, i32*, %struct.gfs2_inode*, i32) #1

declare dso_local i32 @IF2DT(i32) #1

declare dso_local i32 @inc_nlink(%struct.TYPE_4__*) #1

declare dso_local i32 @drop_nlink(%struct.TYPE_4__*) #1

declare dso_local i32 @mark_inode_dirty(%struct.TYPE_4__*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i64 @gfs2_holder_queued(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_dq(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_holder_uninit(%struct.gfs2_holder*) #1

declare dso_local i64 @gfs2_holder_initialized(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
