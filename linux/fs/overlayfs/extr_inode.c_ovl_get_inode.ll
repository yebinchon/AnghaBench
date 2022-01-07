; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_get_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i64, i32, i32 }
%struct.super_block = type { i32 }
%struct.ovl_inode_params = type { i32, i32, i32, i32, i64, %struct.ovl_path*, %struct.dentry* }
%struct.ovl_path = type { %struct.TYPE_3__*, %struct.dentry* }
%struct.TYPE_3__ = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@OVL_IMPURE = common dso_local global i32 0, align 4
@OVL_INDEX = common dso_local global i32 0, align 4
@OVL_UPPERDATA = common dso_local global i32 0, align 4
@OVL_CONST_INO = common dso_local global i32 0, align 4
@OVL_WHITEOUTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"overlayfs: failed to get inode (%i)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ovl_get_inode(%struct.super_block* %0, %struct.ovl_inode_params* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ovl_inode_params*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.ovl_path*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.inode*, align 8
  %17 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.ovl_inode_params* %1, %struct.ovl_inode_params** %4, align 8
  %18 = load %struct.ovl_inode_params*, %struct.ovl_inode_params** %4, align 8
  %19 = getelementptr inbounds %struct.ovl_inode_params, %struct.ovl_inode_params* %18, i32 0, i32 6
  %20 = load %struct.dentry*, %struct.dentry** %19, align 8
  store %struct.dentry* %20, %struct.dentry** %5, align 8
  %21 = load %struct.ovl_inode_params*, %struct.ovl_inode_params** %4, align 8
  %22 = getelementptr inbounds %struct.ovl_inode_params, %struct.ovl_inode_params* %21, i32 0, i32 5
  %23 = load %struct.ovl_path*, %struct.ovl_path** %22, align 8
  store %struct.ovl_path* %23, %struct.ovl_path** %6, align 8
  %24 = load %struct.dentry*, %struct.dentry** %5, align 8
  %25 = icmp ne %struct.dentry* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.dentry*, %struct.dentry** %5, align 8
  %28 = call %struct.inode* @d_inode(%struct.dentry* %27)
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi %struct.inode* [ %28, %26 ], [ null, %29 ]
  store %struct.inode* %31, %struct.inode** %7, align 8
  %32 = load %struct.ovl_path*, %struct.ovl_path** %6, align 8
  %33 = icmp ne %struct.ovl_path* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.ovl_path*, %struct.ovl_path** %6, align 8
  %36 = getelementptr inbounds %struct.ovl_path, %struct.ovl_path* %35, i32 0, i32 1
  %37 = load %struct.dentry*, %struct.dentry** %36, align 8
  br label %39

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi %struct.dentry* [ %37, %34 ], [ null, %38 ]
  store %struct.dentry* %40, %struct.dentry** %9, align 8
  %41 = load %struct.super_block*, %struct.super_block** %3, align 8
  %42 = load %struct.dentry*, %struct.dentry** %5, align 8
  %43 = load %struct.dentry*, %struct.dentry** %9, align 8
  %44 = load %struct.ovl_inode_params*, %struct.ovl_inode_params** %4, align 8
  %45 = getelementptr inbounds %struct.ovl_inode_params, %struct.ovl_inode_params* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ovl_hash_bylower(%struct.super_block* %41, %struct.dentry* %42, %struct.dentry* %43, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %39
  %51 = load %struct.ovl_inode_params*, %struct.ovl_inode_params** %4, align 8
  %52 = getelementptr inbounds %struct.ovl_inode_params, %struct.ovl_inode_params* %51, i32 0, i32 5
  %53 = load %struct.ovl_path*, %struct.ovl_path** %52, align 8
  %54 = getelementptr inbounds %struct.ovl_path, %struct.ovl_path* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  br label %59

58:                                               ; preds = %39
  br label %59

59:                                               ; preds = %58, %50
  %60 = phi i32 [ %57, %50 ], [ 0, %58 ]
  store i32 %60, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %61 = load %struct.ovl_inode_params*, %struct.ovl_inode_params** %4, align 8
  %62 = getelementptr inbounds %struct.ovl_inode_params, %struct.ovl_inode_params* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EEXIST, align 4
  %67 = sub nsw i32 0, %66
  br label %71

68:                                               ; preds = %59
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i32 [ %67, %65 ], [ %70, %68 ]
  store i32 %72, i32* %15, align 4
  %73 = load %struct.inode*, %struct.inode** %7, align 8
  %74 = icmp ne %struct.inode* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load %struct.dentry*, %struct.dentry** %9, align 8
  %77 = call %struct.inode* @d_inode(%struct.dentry* %76)
  store %struct.inode* %77, %struct.inode** %7, align 8
  br label %78

78:                                               ; preds = %75, %71
  %79 = load %struct.inode*, %struct.inode** %7, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @S_ISDIR(i32 %81)
  store i32 %82, i32* %12, align 4
  %83 = load %struct.dentry*, %struct.dentry** %5, align 8
  %84 = icmp ne %struct.dentry* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %156

88:                                               ; preds = %85, %78
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load %struct.dentry*, %struct.dentry** %9, align 8
  br label %95

93:                                               ; preds = %88
  %94 = load %struct.dentry*, %struct.dentry** %5, align 8
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi %struct.dentry* [ %92, %91 ], [ %94, %93 ]
  %97 = call %struct.inode* @d_inode(%struct.dentry* %96)
  store %struct.inode* %97, %struct.inode** %16, align 8
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %105

101:                                              ; preds = %95
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  br label %105

105:                                              ; preds = %101, %100
  %106 = phi i32 [ 1, %100 ], [ %104, %101 ]
  store i32 %106, i32* %17, align 4
  %107 = load %struct.super_block*, %struct.super_block** %3, align 8
  %108 = load %struct.ovl_inode_params*, %struct.ovl_inode_params** %4, align 8
  %109 = getelementptr inbounds %struct.ovl_inode_params, %struct.ovl_inode_params* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.inode*, %struct.inode** %16, align 8
  %112 = call %struct.inode* @ovl_iget5(%struct.super_block* %107, i64 %110, %struct.inode* %111)
  store %struct.inode* %112, %struct.inode** %8, align 8
  %113 = load %struct.inode*, %struct.inode** %8, align 8
  %114 = icmp ne %struct.inode* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %105
  br label %275

116:                                              ; preds = %105
  %117 = load %struct.inode*, %struct.inode** %8, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @I_NEW, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %141, label %123

123:                                              ; preds = %116
  %124 = load %struct.inode*, %struct.inode** %8, align 8
  %125 = load %struct.dentry*, %struct.dentry** %9, align 8
  %126 = load %struct.dentry*, %struct.dentry** %5, align 8
  %127 = call i32 @ovl_verify_inode(%struct.inode* %124, %struct.dentry* %125, %struct.dentry* %126, i32 1)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %123
  %130 = load %struct.inode*, %struct.inode** %8, align 8
  %131 = call i32 @iput(%struct.inode* %130)
  %132 = load i32, i32* @ESTALE, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %15, align 4
  br label %275

134:                                              ; preds = %123
  %135 = load %struct.dentry*, %struct.dentry** %5, align 8
  %136 = call i32 @dput(%struct.dentry* %135)
  %137 = load %struct.ovl_inode_params*, %struct.ovl_inode_params** %4, align 8
  %138 = getelementptr inbounds %struct.ovl_inode_params, %struct.ovl_inode_params* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @kfree(i32 %139)
  br label %273

141:                                              ; preds = %116
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %141
  %145 = load %struct.dentry*, %struct.dentry** %9, align 8
  %146 = load %struct.dentry*, %struct.dentry** %5, align 8
  %147 = load i32, i32* %17, align 4
  %148 = call i32 @ovl_get_nlink(%struct.dentry* %145, %struct.dentry* %146, i32 %147)
  store i32 %148, i32* %17, align 4
  br label %149

149:                                              ; preds = %144, %141
  %150 = load %struct.inode*, %struct.inode** %8, align 8
  %151 = load i32, i32* %17, align 4
  %152 = call i32 @set_nlink(%struct.inode* %150, i32 %151)
  %153 = load %struct.inode*, %struct.inode** %16, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %14, align 8
  br label %165

156:                                              ; preds = %85
  %157 = load %struct.super_block*, %struct.super_block** %3, align 8
  %158 = call %struct.inode* @new_inode(%struct.super_block* %157)
  store %struct.inode* %158, %struct.inode** %8, align 8
  %159 = load %struct.inode*, %struct.inode** %8, align 8
  %160 = icmp ne %struct.inode* %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %15, align 4
  br label %275

164:                                              ; preds = %156
  br label %165

165:                                              ; preds = %164, %149
  %166 = load %struct.inode*, %struct.inode** %8, align 8
  %167 = load %struct.inode*, %struct.inode** %7, align 8
  %168 = getelementptr inbounds %struct.inode, %struct.inode* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.inode*, %struct.inode** %7, align 8
  %171 = getelementptr inbounds %struct.inode, %struct.inode* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load i64, i64* %14, align 8
  %174 = load i32, i32* %11, align 4
  %175 = call i32 @ovl_fill_inode(%struct.inode* %166, i32 %169, i32 %172, i64 %173, i32 %174)
  %176 = load %struct.inode*, %struct.inode** %8, align 8
  %177 = load %struct.dentry*, %struct.dentry** %5, align 8
  %178 = load %struct.dentry*, %struct.dentry** %9, align 8
  %179 = load %struct.ovl_inode_params*, %struct.ovl_inode_params** %4, align 8
  %180 = getelementptr inbounds %struct.ovl_inode_params, %struct.ovl_inode_params* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @ovl_inode_init(%struct.inode* %176, %struct.dentry* %177, %struct.dentry* %178, i32 %181)
  %183 = load %struct.dentry*, %struct.dentry** %5, align 8
  %184 = icmp ne %struct.dentry* %183, null
  br i1 %184, label %185, label %193

185:                                              ; preds = %165
  %186 = load %struct.dentry*, %struct.dentry** %5, align 8
  %187 = call i64 @ovl_is_impuredir(%struct.dentry* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  %190 = load i32, i32* @OVL_IMPURE, align 4
  %191 = load %struct.inode*, %struct.inode** %8, align 8
  %192 = call i32 @ovl_set_flag(i32 %190, %struct.inode* %191)
  br label %193

193:                                              ; preds = %189, %185, %165
  %194 = load %struct.ovl_inode_params*, %struct.ovl_inode_params** %4, align 8
  %195 = getelementptr inbounds %struct.ovl_inode_params, %struct.ovl_inode_params* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load i32, i32* @OVL_INDEX, align 4
  %200 = load %struct.inode*, %struct.inode** %8, align 8
  %201 = call i32 @ovl_set_flag(i32 %199, %struct.inode* %200)
  br label %202

202:                                              ; preds = %198, %193
  %203 = load %struct.dentry*, %struct.dentry** %5, align 8
  %204 = icmp ne %struct.dentry* %203, null
  br i1 %204, label %205, label %220

205:                                              ; preds = %202
  %206 = load %struct.dentry*, %struct.dentry** %5, align 8
  %207 = call i32 @ovl_check_metacopy_xattr(%struct.dentry* %206)
  store i32 %207, i32* %15, align 4
  %208 = load i32, i32* %15, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  br label %275

211:                                              ; preds = %205
  %212 = load i32, i32* %15, align 4
  store i32 %212, i32* %13, align 4
  %213 = load i32, i32* %13, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %211
  %216 = load i32, i32* @OVL_UPPERDATA, align 4
  %217 = load %struct.inode*, %struct.inode** %8, align 8
  %218 = call i32 @ovl_set_flag(i32 %216, %struct.inode* %217)
  br label %219

219:                                              ; preds = %215, %211
  br label %220

220:                                              ; preds = %219, %202
  %221 = load %struct.ovl_inode_params*, %struct.ovl_inode_params** %4, align 8
  %222 = getelementptr inbounds %struct.ovl_inode_params, %struct.ovl_inode_params* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.inode*, %struct.inode** %8, align 8
  %225 = call %struct.TYPE_4__* @OVL_I(%struct.inode* %224)
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  store i32 %223, i32* %226, align 4
  %227 = load i32, i32* %10, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %220
  %230 = load i32, i32* @OVL_CONST_INO, align 4
  %231 = load %struct.inode*, %struct.inode** %8, align 8
  %232 = call i32 @ovl_set_flag(i32 %230, %struct.inode* %231)
  br label %233

233:                                              ; preds = %229, %220
  %234 = load i32, i32* %12, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %262

236:                                              ; preds = %233
  %237 = load %struct.dentry*, %struct.dentry** %5, align 8
  %238 = icmp ne %struct.dentry* %237, null
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load %struct.dentry*, %struct.dentry** %9, align 8
  %241 = icmp ne %struct.dentry* %240, null
  br i1 %241, label %257, label %242

242:                                              ; preds = %239, %236
  %243 = load %struct.ovl_inode_params*, %struct.ovl_inode_params** %4, align 8
  %244 = getelementptr inbounds %struct.ovl_inode_params, %struct.ovl_inode_params* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp sgt i32 %245, 1
  br i1 %246, label %257, label %247

247:                                              ; preds = %242
  %248 = load %struct.dentry*, %struct.dentry** %5, align 8
  %249 = icmp ne %struct.dentry* %248, null
  br i1 %249, label %250, label %251

250:                                              ; preds = %247
  br label %253

251:                                              ; preds = %247
  %252 = load %struct.dentry*, %struct.dentry** %9, align 8
  br label %253

253:                                              ; preds = %251, %250
  %254 = phi %struct.dentry* [ %248, %250 ], [ %252, %251 ]
  %255 = call i64 @ovl_check_origin_xattr(%struct.dentry* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %253, %242, %239
  %258 = load i32, i32* @OVL_WHITEOUTS, align 4
  %259 = load %struct.inode*, %struct.inode** %8, align 8
  %260 = call i32 @ovl_set_flag(i32 %258, %struct.inode* %259)
  br label %261

261:                                              ; preds = %257, %253
  br label %262

262:                                              ; preds = %261, %233
  %263 = load %struct.inode*, %struct.inode** %8, align 8
  %264 = getelementptr inbounds %struct.inode, %struct.inode* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @I_NEW, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %262
  %270 = load %struct.inode*, %struct.inode** %8, align 8
  %271 = call i32 @unlock_new_inode(%struct.inode* %270)
  br label %272

272:                                              ; preds = %269, %262
  br label %273

273:                                              ; preds = %275, %272, %134
  %274 = load %struct.inode*, %struct.inode** %8, align 8
  ret %struct.inode* %274

275:                                              ; preds = %210, %161, %129, %115
  %276 = load i32, i32* %15, align 4
  %277 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %276)
  %278 = load i32, i32* %15, align 4
  %279 = call %struct.inode* @ERR_PTR(i32 %278)
  store %struct.inode* %279, %struct.inode** %8, align 8
  br label %273
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @ovl_hash_bylower(%struct.super_block*, %struct.dentry*, %struct.dentry*, i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.inode* @ovl_iget5(%struct.super_block*, i64, %struct.inode*) #1

declare dso_local i32 @ovl_verify_inode(%struct.inode*, %struct.dentry*, %struct.dentry*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @ovl_get_nlink(%struct.dentry*, %struct.dentry*, i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @ovl_fill_inode(%struct.inode*, i32, i32, i64, i32) #1

declare dso_local i32 @ovl_inode_init(%struct.inode*, %struct.dentry*, %struct.dentry*, i32) #1

declare dso_local i64 @ovl_is_impuredir(%struct.dentry*) #1

declare dso_local i32 @ovl_set_flag(i32, %struct.inode*) #1

declare dso_local i32 @ovl_check_metacopy_xattr(%struct.dentry*) #1

declare dso_local %struct.TYPE_4__* @OVL_I(%struct.inode*) #1

declare dso_local i64 @ovl_check_origin_xattr(%struct.dentry*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
