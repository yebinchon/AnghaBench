; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i64, %struct.dentry*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cred = type { i32 }

@RENAME_EXCHANGE = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RENAME_NOREPLACE = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@RENAME_WHITEOUT = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @ovl_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca %struct.dentry*, align 8
  %15 = alloca %struct.dentry*, align 8
  %16 = alloca %struct.dentry*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.dentry*, align 8
  %26 = alloca %struct.cred*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @RENAME_EXCHANGE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %21, align 4
  %33 = load %struct.dentry*, %struct.dentry** %7, align 8
  %34 = call i32 @d_is_dir(%struct.dentry* %33)
  store i32 %34, i32* %22, align 4
  %35 = load %struct.dentry*, %struct.dentry** %9, align 8
  %36 = call i32 @d_is_dir(%struct.dentry* %35)
  store i32 %36, i32* %23, align 4
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = icmp eq %struct.inode* %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %24, align 4
  store %struct.dentry* null, %struct.dentry** %25, align 8
  store %struct.cred* null, %struct.cred** %26, align 8
  %41 = load i32, i32* @list, align 4
  %42 = call i32 @LIST_HEAD(i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @RENAME_EXCHANGE, align 4
  %47 = load i32, i32* @RENAME_NOREPLACE, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %45, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %5
  br label %526

53:                                               ; preds = %5
  %54 = load i32, i32* @RENAME_NOREPLACE, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* @EXDEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %11, align 4
  %60 = load %struct.dentry*, %struct.dentry** %7, align 8
  %61 = call i32 @ovl_can_move(%struct.dentry* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %53
  br label %526

64:                                               ; preds = %53
  %65 = load i32, i32* %21, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = load %struct.dentry*, %struct.dentry** %9, align 8
  %69 = call i32 @ovl_can_move(%struct.dentry* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %526

72:                                               ; preds = %67, %64
  %73 = load i32, i32* %21, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = load i32, i32* %23, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load %struct.dentry*, %struct.dentry** %9, align 8
  %80 = call i32 @ovl_pure_upper(%struct.dentry* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %78
  %83 = load %struct.dentry*, %struct.dentry** %9, align 8
  %84 = call i32 @ovl_check_empty_dir(%struct.dentry* %83, i32* @list)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %526

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %78, %75, %72
  %90 = load i32, i32* %21, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %122

92:                                               ; preds = %89
  %93 = load %struct.dentry*, %struct.dentry** %7, align 8
  %94 = call i64 @ovl_lower_positive(%struct.dentry* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %92
  %97 = load %struct.dentry*, %struct.dentry** %9, align 8
  %98 = call i64 @ovl_dentry_is_whiteout(%struct.dentry* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* @RENAME_WHITEOUT, align 4
  %102 = load i32, i32* %10, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %10, align 4
  br label %108

104:                                              ; preds = %96
  %105 = load i32, i32* @RENAME_EXCHANGE, align 4
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %104, %100
  br label %121

109:                                              ; preds = %92
  %110 = load i32, i32* %22, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load %struct.dentry*, %struct.dentry** %9, align 8
  %114 = call i64 @ovl_dentry_is_whiteout(%struct.dentry* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i32, i32* @RENAME_EXCHANGE, align 4
  %118 = load i32, i32* %10, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %10, align 4
  store i32 1, i32* %19, align 4
  br label %120

120:                                              ; preds = %116, %112, %109
  br label %121

121:                                              ; preds = %120, %108
  br label %122

122:                                              ; preds = %121, %89
  %123 = load %struct.dentry*, %struct.dentry** %7, align 8
  %124 = call i32 @ovl_want_write(%struct.dentry* %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %526

128:                                              ; preds = %122
  %129 = load %struct.dentry*, %struct.dentry** %7, align 8
  %130 = call i32 @ovl_copy_up(%struct.dentry* %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %523

134:                                              ; preds = %128
  %135 = load %struct.dentry*, %struct.dentry** %9, align 8
  %136 = getelementptr inbounds %struct.dentry, %struct.dentry* %135, i32 0, i32 1
  %137 = load %struct.dentry*, %struct.dentry** %136, align 8
  %138 = call i32 @ovl_copy_up(%struct.dentry* %137)
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  br label %523

142:                                              ; preds = %134
  %143 = load i32, i32* %21, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %142
  %146 = load %struct.dentry*, %struct.dentry** %9, align 8
  %147 = call i32 @ovl_copy_up(%struct.dentry* %146)
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %523

151:                                              ; preds = %145
  br label %164

152:                                              ; preds = %142
  %153 = load %struct.dentry*, %struct.dentry** %9, align 8
  %154 = call i32 @d_inode(%struct.dentry* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  %157 = load %struct.dentry*, %struct.dentry** %9, align 8
  %158 = call i32 @ovl_nlink_start(%struct.dentry* %157)
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %523

162:                                              ; preds = %156
  store i32 1, i32* %20, align 4
  br label %163

163:                                              ; preds = %162, %152
  br label %164

164:                                              ; preds = %163, %151
  %165 = load %struct.dentry*, %struct.dentry** %7, align 8
  %166 = getelementptr inbounds %struct.dentry, %struct.dentry* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = call %struct.cred* @ovl_override_creds(i32 %167)
  store %struct.cred* %168, %struct.cred** %26, align 8
  %169 = call i32 @list_empty(i32* @list)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %181, label %171

171:                                              ; preds = %164
  %172 = load %struct.dentry*, %struct.dentry** %9, align 8
  %173 = call %struct.dentry* @ovl_clear_empty(%struct.dentry* %172, i32* @list)
  store %struct.dentry* %173, %struct.dentry** %25, align 8
  %174 = load %struct.dentry*, %struct.dentry** %25, align 8
  %175 = call i32 @PTR_ERR(%struct.dentry* %174)
  store i32 %175, i32* %11, align 4
  %176 = load %struct.dentry*, %struct.dentry** %25, align 8
  %177 = call i64 @IS_ERR(%struct.dentry* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %171
  store %struct.dentry* null, %struct.dentry** %25, align 8
  br label %514

180:                                              ; preds = %171
  br label %181

181:                                              ; preds = %180, %164
  %182 = load %struct.dentry*, %struct.dentry** %7, align 8
  %183 = getelementptr inbounds %struct.dentry, %struct.dentry* %182, i32 0, i32 1
  %184 = load %struct.dentry*, %struct.dentry** %183, align 8
  %185 = call %struct.dentry* @ovl_dentry_upper(%struct.dentry* %184)
  store %struct.dentry* %185, %struct.dentry** %12, align 8
  %186 = load %struct.dentry*, %struct.dentry** %9, align 8
  %187 = getelementptr inbounds %struct.dentry, %struct.dentry* %186, i32 0, i32 1
  %188 = load %struct.dentry*, %struct.dentry** %187, align 8
  %189 = call %struct.dentry* @ovl_dentry_upper(%struct.dentry* %188)
  store %struct.dentry* %189, %struct.dentry** %13, align 8
  %190 = load i32, i32* %24, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %224, label %192

192:                                              ; preds = %181
  %193 = load %struct.dentry*, %struct.dentry** %7, align 8
  %194 = call i64 @ovl_type_origin(%struct.dentry* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %192
  %197 = load %struct.dentry*, %struct.dentry** %9, align 8
  %198 = getelementptr inbounds %struct.dentry, %struct.dentry* %197, i32 0, i32 1
  %199 = load %struct.dentry*, %struct.dentry** %198, align 8
  %200 = load %struct.dentry*, %struct.dentry** %13, align 8
  %201 = call i32 @ovl_set_impure(%struct.dentry* %199, %struct.dentry* %200)
  store i32 %201, i32* %11, align 4
  %202 = load i32, i32* %11, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %196
  br label %514

205:                                              ; preds = %196
  br label %206

206:                                              ; preds = %205, %192
  %207 = load i32, i32* %21, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %223, label %209

209:                                              ; preds = %206
  %210 = load %struct.dentry*, %struct.dentry** %9, align 8
  %211 = call i64 @ovl_type_origin(%struct.dentry* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %223

213:                                              ; preds = %209
  %214 = load %struct.dentry*, %struct.dentry** %7, align 8
  %215 = getelementptr inbounds %struct.dentry, %struct.dentry* %214, i32 0, i32 1
  %216 = load %struct.dentry*, %struct.dentry** %215, align 8
  %217 = load %struct.dentry*, %struct.dentry** %12, align 8
  %218 = call i32 @ovl_set_impure(%struct.dentry* %216, %struct.dentry* %217)
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %11, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %213
  br label %514

222:                                              ; preds = %213
  br label %223

223:                                              ; preds = %222, %209, %206
  br label %224

224:                                              ; preds = %223, %181
  %225 = load %struct.dentry*, %struct.dentry** %13, align 8
  %226 = load %struct.dentry*, %struct.dentry** %12, align 8
  %227 = call %struct.dentry* @lock_rename(%struct.dentry* %225, %struct.dentry* %226)
  store %struct.dentry* %227, %struct.dentry** %16, align 8
  %228 = load %struct.dentry*, %struct.dentry** %7, align 8
  %229 = getelementptr inbounds %struct.dentry, %struct.dentry* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.dentry*, %struct.dentry** %12, align 8
  %233 = load %struct.dentry*, %struct.dentry** %7, align 8
  %234 = getelementptr inbounds %struct.dentry, %struct.dentry* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call %struct.dentry* @lookup_one_len(i32 %231, %struct.dentry* %232, i32 %236)
  store %struct.dentry* %237, %struct.dentry** %14, align 8
  %238 = load %struct.dentry*, %struct.dentry** %14, align 8
  %239 = call i32 @PTR_ERR(%struct.dentry* %238)
  store i32 %239, i32* %11, align 4
  %240 = load %struct.dentry*, %struct.dentry** %14, align 8
  %241 = call i64 @IS_ERR(%struct.dentry* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %224
  br label %510

244:                                              ; preds = %224
  %245 = load i32, i32* @ESTALE, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %11, align 4
  %247 = load %struct.dentry*, %struct.dentry** %7, align 8
  %248 = load %struct.dentry*, %struct.dentry** %14, align 8
  %249 = call i32 @ovl_matches_upper(%struct.dentry* %247, %struct.dentry* %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %244
  br label %507

252:                                              ; preds = %244
  %253 = load %struct.dentry*, %struct.dentry** %9, align 8
  %254 = getelementptr inbounds %struct.dentry, %struct.dentry* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.dentry*, %struct.dentry** %13, align 8
  %258 = load %struct.dentry*, %struct.dentry** %9, align 8
  %259 = getelementptr inbounds %struct.dentry, %struct.dentry* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call %struct.dentry* @lookup_one_len(i32 %256, %struct.dentry* %257, i32 %261)
  store %struct.dentry* %262, %struct.dentry** %15, align 8
  %263 = load %struct.dentry*, %struct.dentry** %15, align 8
  %264 = call i32 @PTR_ERR(%struct.dentry* %263)
  store i32 %264, i32* %11, align 4
  %265 = load %struct.dentry*, %struct.dentry** %15, align 8
  %266 = call i64 @IS_ERR(%struct.dentry* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %252
  br label %507

269:                                              ; preds = %252
  %270 = load %struct.dentry*, %struct.dentry** %7, align 8
  %271 = call i32 @ovl_dentry_is_opaque(%struct.dentry* %270)
  store i32 %271, i32* %17, align 4
  %272 = load %struct.dentry*, %struct.dentry** %9, align 8
  %273 = call i32 @ovl_dentry_is_opaque(%struct.dentry* %272)
  store i32 %273, i32* %18, align 4
  %274 = load i32, i32* @ESTALE, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %11, align 4
  %276 = load %struct.dentry*, %struct.dentry** %9, align 8
  %277 = call i32 @d_inode(%struct.dentry* %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %300

279:                                              ; preds = %269
  %280 = load %struct.dentry*, %struct.dentry** %9, align 8
  %281 = call %struct.dentry* @ovl_dentry_upper(%struct.dentry* %280)
  %282 = icmp ne %struct.dentry* %281, null
  br i1 %282, label %283, label %300

283:                                              ; preds = %279
  %284 = load %struct.dentry*, %struct.dentry** %25, align 8
  %285 = icmp ne %struct.dentry* %284, null
  br i1 %285, label %286, label %292

286:                                              ; preds = %283
  %287 = load %struct.dentry*, %struct.dentry** %15, align 8
  %288 = load %struct.dentry*, %struct.dentry** %25, align 8
  %289 = icmp ne %struct.dentry* %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %286
  br label %504

291:                                              ; preds = %286
  br label %299

292:                                              ; preds = %283
  %293 = load %struct.dentry*, %struct.dentry** %9, align 8
  %294 = load %struct.dentry*, %struct.dentry** %15, align 8
  %295 = call i32 @ovl_matches_upper(%struct.dentry* %293, %struct.dentry* %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %298, label %297

297:                                              ; preds = %292
  br label %504

298:                                              ; preds = %292
  br label %299

299:                                              ; preds = %298, %291
  br label %313

300:                                              ; preds = %279, %269
  %301 = load %struct.dentry*, %struct.dentry** %15, align 8
  %302 = call i32 @d_is_negative(%struct.dentry* %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %312, label %304

304:                                              ; preds = %300
  %305 = load i32, i32* %18, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %304
  %308 = load %struct.dentry*, %struct.dentry** %15, align 8
  %309 = call i32 @ovl_is_whiteout(%struct.dentry* %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %312, label %311

311:                                              ; preds = %307, %304
  br label %504

312:                                              ; preds = %307, %300
  br label %313

313:                                              ; preds = %312, %299
  %314 = load %struct.dentry*, %struct.dentry** %14, align 8
  %315 = load %struct.dentry*, %struct.dentry** %16, align 8
  %316 = icmp eq %struct.dentry* %314, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %313
  br label %504

318:                                              ; preds = %313
  %319 = load %struct.dentry*, %struct.dentry** %15, align 8
  %320 = load %struct.dentry*, %struct.dentry** %16, align 8
  %321 = icmp eq %struct.dentry* %319, %320
  br i1 %321, label %322, label %323

322:                                              ; preds = %318
  br label %504

323:                                              ; preds = %318
  %324 = load %struct.dentry*, %struct.dentry** %14, align 8
  %325 = getelementptr inbounds %struct.dentry, %struct.dentry* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.dentry*, %struct.dentry** %15, align 8
  %328 = getelementptr inbounds %struct.dentry, %struct.dentry* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = icmp eq i64 %326, %329
  %331 = zext i1 %330 to i32
  %332 = call i64 @WARN_ON(i32 %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %323
  br label %504

335:                                              ; preds = %323
  store i32 0, i32* %11, align 4
  %336 = load %struct.dentry*, %struct.dentry** %7, align 8
  %337 = call i64 @ovl_type_merge_or_lower(%struct.dentry* %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %343

339:                                              ; preds = %335
  %340 = load %struct.dentry*, %struct.dentry** %7, align 8
  %341 = load i32, i32* %24, align 4
  %342 = call i32 @ovl_set_redirect(%struct.dentry* %340, i32 %341)
  store i32 %342, i32* %11, align 4
  br label %362

343:                                              ; preds = %335
  %344 = load i32, i32* %22, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %361

346:                                              ; preds = %343
  %347 = load i32, i32* %17, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %361, label %349

349:                                              ; preds = %346
  %350 = load %struct.dentry*, %struct.dentry** %9, align 8
  %351 = getelementptr inbounds %struct.dentry, %struct.dentry* %350, i32 0, i32 1
  %352 = load %struct.dentry*, %struct.dentry** %351, align 8
  %353 = call i64 @ovl_type_merge(%struct.dentry* %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %361

355:                                              ; preds = %349
  %356 = load %struct.dentry*, %struct.dentry** %7, align 8
  %357 = load %struct.dentry*, %struct.dentry** %14, align 8
  %358 = load i32, i32* @EXDEV, align 4
  %359 = sub nsw i32 0, %358
  %360 = call i32 @ovl_set_opaque_xerr(%struct.dentry* %356, %struct.dentry* %357, i32 %359)
  store i32 %360, i32* %11, align 4
  br label %361

361:                                              ; preds = %355, %349, %346, %343
  br label %362

362:                                              ; preds = %361, %339
  %363 = load i32, i32* %11, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %362
  br label %504

366:                                              ; preds = %362
  %367 = load i32, i32* %21, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %377, label %369

369:                                              ; preds = %366
  %370 = load %struct.dentry*, %struct.dentry** %9, align 8
  %371 = call i64 @ovl_type_merge_or_lower(%struct.dentry* %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %369
  %374 = load %struct.dentry*, %struct.dentry** %9, align 8
  %375 = load i32, i32* %24, align 4
  %376 = call i32 @ovl_set_redirect(%struct.dentry* %374, i32 %375)
  store i32 %376, i32* %11, align 4
  br label %399

377:                                              ; preds = %369, %366
  %378 = load i32, i32* %21, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %398, label %380

380:                                              ; preds = %377
  %381 = load i32, i32* %23, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %398

383:                                              ; preds = %380
  %384 = load i32, i32* %18, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %398, label %386

386:                                              ; preds = %383
  %387 = load %struct.dentry*, %struct.dentry** %7, align 8
  %388 = getelementptr inbounds %struct.dentry, %struct.dentry* %387, i32 0, i32 1
  %389 = load %struct.dentry*, %struct.dentry** %388, align 8
  %390 = call i64 @ovl_type_merge(%struct.dentry* %389)
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %398

392:                                              ; preds = %386
  %393 = load %struct.dentry*, %struct.dentry** %9, align 8
  %394 = load %struct.dentry*, %struct.dentry** %15, align 8
  %395 = load i32, i32* @EXDEV, align 4
  %396 = sub nsw i32 0, %395
  %397 = call i32 @ovl_set_opaque_xerr(%struct.dentry* %393, %struct.dentry* %394, i32 %396)
  store i32 %397, i32* %11, align 4
  br label %398

398:                                              ; preds = %392, %386, %383, %380, %377
  br label %399

399:                                              ; preds = %398, %373
  %400 = load i32, i32* %11, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %403

402:                                              ; preds = %399
  br label %504

403:                                              ; preds = %399
  %404 = load %struct.dentry*, %struct.dentry** %12, align 8
  %405 = getelementptr inbounds %struct.dentry, %struct.dentry* %404, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = load %struct.dentry*, %struct.dentry** %14, align 8
  %408 = load %struct.dentry*, %struct.dentry** %13, align 8
  %409 = getelementptr inbounds %struct.dentry, %struct.dentry* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = load %struct.dentry*, %struct.dentry** %15, align 8
  %412 = load i32, i32* %10, align 4
  %413 = call i32 @ovl_do_rename(i64 %406, %struct.dentry* %407, i64 %410, %struct.dentry* %411, i32 %412)
  store i32 %413, i32* %11, align 4
  %414 = load i32, i32* %11, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %417

416:                                              ; preds = %403
  br label %504

417:                                              ; preds = %403
  %418 = load i32, i32* %19, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %426

420:                                              ; preds = %417
  %421 = load %struct.dentry*, %struct.dentry** %12, align 8
  %422 = getelementptr inbounds %struct.dentry, %struct.dentry* %421, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = load %struct.dentry*, %struct.dentry** %15, align 8
  %425 = call i32 @ovl_cleanup(i64 %423, %struct.dentry* %424)
  br label %426

426:                                              ; preds = %420, %417
  %427 = load i32, i32* %21, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %445

429:                                              ; preds = %426
  %430 = load %struct.dentry*, %struct.dentry** %9, align 8
  %431 = call i32 @d_inode(%struct.dentry* %430)
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %445

433:                                              ; preds = %429
  %434 = load i32, i32* %23, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %440

436:                                              ; preds = %433
  %437 = load %struct.dentry*, %struct.dentry** %9, align 8
  %438 = call i32 @d_inode(%struct.dentry* %437)
  %439 = call i32 @clear_nlink(i32 %438)
  br label %444

440:                                              ; preds = %433
  %441 = load %struct.dentry*, %struct.dentry** %9, align 8
  %442 = call i32 @d_inode(%struct.dentry* %441)
  %443 = call i32 @drop_nlink(i32 %442)
  br label %444

444:                                              ; preds = %440, %436
  br label %445

445:                                              ; preds = %444, %429, %426
  %446 = load %struct.dentry*, %struct.dentry** %7, align 8
  %447 = getelementptr inbounds %struct.dentry, %struct.dentry* %446, i32 0, i32 1
  %448 = load %struct.dentry*, %struct.dentry** %447, align 8
  %449 = load %struct.dentry*, %struct.dentry** %7, align 8
  %450 = call i64 @ovl_type_origin(%struct.dentry* %449)
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %461, label %452

452:                                              ; preds = %445
  %453 = load i32, i32* %21, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %459, label %455

455:                                              ; preds = %452
  %456 = load %struct.dentry*, %struct.dentry** %9, align 8
  %457 = call i64 @ovl_type_origin(%struct.dentry* %456)
  %458 = icmp ne i64 %457, 0
  br label %459

459:                                              ; preds = %455, %452
  %460 = phi i1 [ false, %452 ], [ %458, %455 ]
  br label %461

461:                                              ; preds = %459, %445
  %462 = phi i1 [ true, %445 ], [ %460, %459 ]
  %463 = zext i1 %462 to i32
  %464 = call i32 @ovl_dir_modified(%struct.dentry* %448, i32 %463)
  %465 = load %struct.dentry*, %struct.dentry** %9, align 8
  %466 = getelementptr inbounds %struct.dentry, %struct.dentry* %465, i32 0, i32 1
  %467 = load %struct.dentry*, %struct.dentry** %466, align 8
  %468 = load %struct.dentry*, %struct.dentry** %7, align 8
  %469 = call i64 @ovl_type_origin(%struct.dentry* %468)
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %481, label %471

471:                                              ; preds = %461
  %472 = load %struct.dentry*, %struct.dentry** %9, align 8
  %473 = call i32 @d_inode(%struct.dentry* %472)
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %479

475:                                              ; preds = %471
  %476 = load %struct.dentry*, %struct.dentry** %9, align 8
  %477 = call i64 @ovl_type_origin(%struct.dentry* %476)
  %478 = icmp ne i64 %477, 0
  br label %479

479:                                              ; preds = %475, %471
  %480 = phi i1 [ false, %471 ], [ %478, %475 ]
  br label %481

481:                                              ; preds = %479, %461
  %482 = phi i1 [ true, %461 ], [ %480, %479 ]
  %483 = zext i1 %482 to i32
  %484 = call i32 @ovl_dir_modified(%struct.dentry* %467, i32 %483)
  %485 = load %struct.dentry*, %struct.dentry** %14, align 8
  %486 = call i32 @d_inode(%struct.dentry* %485)
  %487 = load %struct.dentry*, %struct.dentry** %7, align 8
  %488 = call i32 @d_inode(%struct.dentry* %487)
  %489 = call i32 @ovl_copyattr(i32 %486, i32 %488)
  %490 = load %struct.dentry*, %struct.dentry** %9, align 8
  %491 = call i32 @d_inode(%struct.dentry* %490)
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %503

493:                                              ; preds = %481
  %494 = load %struct.dentry*, %struct.dentry** %9, align 8
  %495 = call %struct.dentry* @ovl_dentry_upper(%struct.dentry* %494)
  %496 = icmp ne %struct.dentry* %495, null
  br i1 %496, label %497, label %503

497:                                              ; preds = %493
  %498 = load %struct.dentry*, %struct.dentry** %15, align 8
  %499 = call i32 @d_inode(%struct.dentry* %498)
  %500 = load %struct.dentry*, %struct.dentry** %9, align 8
  %501 = call i32 @d_inode(%struct.dentry* %500)
  %502 = call i32 @ovl_copyattr(i32 %499, i32 %501)
  br label %503

503:                                              ; preds = %497, %493, %481
  br label %504

504:                                              ; preds = %503, %416, %402, %365, %334, %322, %317, %311, %297, %290
  %505 = load %struct.dentry*, %struct.dentry** %15, align 8
  %506 = call i32 @dput(%struct.dentry* %505)
  br label %507

507:                                              ; preds = %504, %268, %251
  %508 = load %struct.dentry*, %struct.dentry** %14, align 8
  %509 = call i32 @dput(%struct.dentry* %508)
  br label %510

510:                                              ; preds = %507, %243
  %511 = load %struct.dentry*, %struct.dentry** %13, align 8
  %512 = load %struct.dentry*, %struct.dentry** %12, align 8
  %513 = call i32 @unlock_rename(%struct.dentry* %511, %struct.dentry* %512)
  br label %514

514:                                              ; preds = %510, %221, %204, %179
  %515 = load %struct.cred*, %struct.cred** %26, align 8
  %516 = call i32 @revert_creds(%struct.cred* %515)
  %517 = load i32, i32* %20, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %522

519:                                              ; preds = %514
  %520 = load %struct.dentry*, %struct.dentry** %9, align 8
  %521 = call i32 @ovl_nlink_end(%struct.dentry* %520)
  br label %522

522:                                              ; preds = %519, %514
  br label %523

523:                                              ; preds = %522, %161, %150, %141, %133
  %524 = load %struct.dentry*, %struct.dentry** %7, align 8
  %525 = call i32 @ovl_drop_write(%struct.dentry* %524)
  br label %526

526:                                              ; preds = %523, %127, %87, %71, %63, %52
  %527 = load %struct.dentry*, %struct.dentry** %25, align 8
  %528 = call i32 @dput(%struct.dentry* %527)
  %529 = call i32 @ovl_cache_free(i32* @list)
  %530 = load i32, i32* %11, align 4
  ret i32 %530
}

declare dso_local i32 @d_is_dir(%struct.dentry*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @ovl_can_move(%struct.dentry*) #1

declare dso_local i32 @ovl_pure_upper(%struct.dentry*) #1

declare dso_local i32 @ovl_check_empty_dir(%struct.dentry*, i32*) #1

declare dso_local i64 @ovl_lower_positive(%struct.dentry*) #1

declare dso_local i64 @ovl_dentry_is_whiteout(%struct.dentry*) #1

declare dso_local i32 @ovl_want_write(%struct.dentry*) #1

declare dso_local i32 @ovl_copy_up(%struct.dentry*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @ovl_nlink_start(%struct.dentry*) #1

declare dso_local %struct.cred* @ovl_override_creds(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.dentry* @ovl_clear_empty(%struct.dentry*, i32*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local %struct.dentry* @ovl_dentry_upper(%struct.dentry*) #1

declare dso_local i64 @ovl_type_origin(%struct.dentry*) #1

declare dso_local i32 @ovl_set_impure(%struct.dentry*, %struct.dentry*) #1

declare dso_local %struct.dentry* @lock_rename(%struct.dentry*, %struct.dentry*) #1

declare dso_local %struct.dentry* @lookup_one_len(i32, %struct.dentry*, i32) #1

declare dso_local i32 @ovl_matches_upper(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @ovl_dentry_is_opaque(%struct.dentry*) #1

declare dso_local i32 @d_is_negative(%struct.dentry*) #1

declare dso_local i32 @ovl_is_whiteout(%struct.dentry*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @ovl_type_merge_or_lower(%struct.dentry*) #1

declare dso_local i32 @ovl_set_redirect(%struct.dentry*, i32) #1

declare dso_local i64 @ovl_type_merge(%struct.dentry*) #1

declare dso_local i32 @ovl_set_opaque_xerr(%struct.dentry*, %struct.dentry*, i32) #1

declare dso_local i32 @ovl_do_rename(i64, %struct.dentry*, i64, %struct.dentry*, i32) #1

declare dso_local i32 @ovl_cleanup(i64, %struct.dentry*) #1

declare dso_local i32 @clear_nlink(i32) #1

declare dso_local i32 @drop_nlink(i32) #1

declare dso_local i32 @ovl_dir_modified(%struct.dentry*, i32) #1

declare dso_local i32 @ovl_copyattr(i32, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @unlock_rename(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

declare dso_local i32 @ovl_nlink_end(%struct.dentry*) #1

declare dso_local i32 @ovl_drop_write(%struct.dentry*) #1

declare dso_local i32 @ovl_cache_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
