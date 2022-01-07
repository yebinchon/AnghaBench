; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_inode_doinit_with_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_inode_doinit_with_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.superblock_security_struct* }
%struct.superblock_security_struct = type { i32, i32, i64, i64, i64, i32, i32 }
%struct.dentry = type { i32 }
%struct.inode_security_struct = type { i64, i64, i32, i64, i64, i32 }

@LABEL_INITIALIZED = common dso_local global i64 0, align 8
@SECCLASS_FILE = common dso_local global i64 0, align 8
@SE_SBINITIALIZED = common dso_local global i32 0, align 4
@LABEL_PENDING = common dso_local global i64 0, align 8
@IOP_XATTR = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@SE_SBGENFS = common dso_local global i32 0, align 4
@SE_SBGENFS_XATTR = common dso_local global i32 0, align 4
@LABEL_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @inode_doinit_with_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inode_doinit_with_dentry(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.superblock_security_struct*, align 8
  %7 = alloca %struct.inode_security_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.superblock_security_struct* null, %struct.superblock_security_struct** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.inode_security_struct* @selinux_inode(%struct.inode* %13)
  store %struct.inode_security_struct* %14, %struct.inode_security_struct** %7, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %16 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LABEL_INITIALIZED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %264

21:                                               ; preds = %2
  %22 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %23 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %22, i32 0, i32 2
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %26 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LABEL_INITIALIZED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %259

31:                                               ; preds = %21
  %32 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %33 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SECCLASS_FILE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @inode_mode_to_security_class(i32 %40)
  %42 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %43 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %37, %31
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %48, align 8
  store %struct.superblock_security_struct* %49, %struct.superblock_security_struct** %6, align 8
  %50 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %51 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SE_SBINITIALIZED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %74, label %56

56:                                               ; preds = %44
  %57 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %58 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %57, i32 0, i32 5
  %59 = call i32 @spin_lock(i32* %58)
  %60 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %61 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %60, i32 0, i32 5
  %62 = call i64 @list_empty(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %66 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %65, i32 0, i32 5
  %67 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %68 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %67, i32 0, i32 6
  %69 = call i32 @list_add(i32* %66, i32* %68)
  br label %70

70:                                               ; preds = %64, %56
  %71 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %72 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %71, i32 0, i32 5
  %73 = call i32 @spin_unlock(i32* %72)
  br label %259

74:                                               ; preds = %44
  %75 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %76 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %10, align 8
  %78 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %79 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %8, align 8
  %81 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %82 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %9, align 8
  %84 = load i64, i64* @LABEL_PENDING, align 8
  %85 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %86 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %88 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %87, i32 0, i32 2
  %89 = call i32 @spin_unlock(i32* %88)
  %90 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %91 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %155 [
    i32 131, label %93
    i32 128, label %94
    i32 130, label %137
    i32 129, label %139
    i32 132, label %151
  ]

93:                                               ; preds = %74
  br label %231

94:                                               ; preds = %74
  %95 = load %struct.inode*, %struct.inode** %4, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @IOP_XATTR, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %94
  %102 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %103 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %9, align 8
  br label %231

105:                                              ; preds = %94
  %106 = load %struct.dentry*, %struct.dentry** %5, align 8
  %107 = icmp ne %struct.dentry* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load %struct.dentry*, %struct.dentry** %5, align 8
  %110 = call %struct.dentry* @dget(%struct.dentry* %109)
  store %struct.dentry* %110, %struct.dentry** %11, align 8
  br label %120

111:                                              ; preds = %105
  %112 = load %struct.inode*, %struct.inode** %4, align 8
  %113 = call %struct.dentry* @d_find_alias(%struct.inode* %112)
  store %struct.dentry* %113, %struct.dentry** %11, align 8
  %114 = load %struct.dentry*, %struct.dentry** %11, align 8
  %115 = icmp ne %struct.dentry* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = load %struct.inode*, %struct.inode** %4, align 8
  %118 = call %struct.dentry* @d_find_any_alias(%struct.inode* %117)
  store %struct.dentry* %118, %struct.dentry** %11, align 8
  br label %119

119:                                              ; preds = %116, %111
  br label %120

120:                                              ; preds = %119, %108
  %121 = load %struct.dentry*, %struct.dentry** %11, align 8
  %122 = icmp ne %struct.dentry* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  br label %232

124:                                              ; preds = %120
  %125 = load %struct.inode*, %struct.inode** %4, align 8
  %126 = load %struct.dentry*, %struct.dentry** %11, align 8
  %127 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %128 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @inode_doinit_use_xattr(%struct.inode* %125, %struct.dentry* %126, i64 %129, i64* %9)
  store i32 %130, i32* %12, align 4
  %131 = load %struct.dentry*, %struct.dentry** %11, align 8
  %132 = call i32 @dput(%struct.dentry* %131)
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %124
  br label %232

136:                                              ; preds = %124
  br label %231

137:                                              ; preds = %74
  %138 = load i64, i64* %8, align 8
  store i64 %138, i64* %9, align 8
  br label %231

139:                                              ; preds = %74
  %140 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %141 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %9, align 8
  %143 = load i64, i64* %8, align 8
  %144 = load i64, i64* %9, align 8
  %145 = load i64, i64* %10, align 8
  %146 = call i32 @security_transition_sid(i32* @selinux_state, i64 %143, i64 %144, i64 %145, i32* null, i64* %9)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %139
  br label %232

150:                                              ; preds = %139
  br label %231

151:                                              ; preds = %74
  %152 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %153 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %9, align 8
  br label %231

155:                                              ; preds = %74
  %156 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %157 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %9, align 8
  %159 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %160 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @SE_SBGENFS, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %230

165:                                              ; preds = %155
  %166 = load %struct.inode*, %struct.inode** %4, align 8
  %167 = getelementptr inbounds %struct.inode, %struct.inode* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @S_ISLNK(i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %230, label %171

171:                                              ; preds = %165
  %172 = load %struct.dentry*, %struct.dentry** %5, align 8
  %173 = icmp ne %struct.dentry* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load %struct.dentry*, %struct.dentry** %5, align 8
  %176 = call %struct.dentry* @dget(%struct.dentry* %175)
  store %struct.dentry* %176, %struct.dentry** %11, align 8
  br label %186

177:                                              ; preds = %171
  %178 = load %struct.inode*, %struct.inode** %4, align 8
  %179 = call %struct.dentry* @d_find_alias(%struct.inode* %178)
  store %struct.dentry* %179, %struct.dentry** %11, align 8
  %180 = load %struct.dentry*, %struct.dentry** %11, align 8
  %181 = icmp ne %struct.dentry* %180, null
  br i1 %181, label %185, label %182

182:                                              ; preds = %177
  %183 = load %struct.inode*, %struct.inode** %4, align 8
  %184 = call %struct.dentry* @d_find_any_alias(%struct.inode* %183)
  store %struct.dentry* %184, %struct.dentry** %11, align 8
  br label %185

185:                                              ; preds = %182, %177
  br label %186

186:                                              ; preds = %185, %174
  %187 = load %struct.dentry*, %struct.dentry** %11, align 8
  %188 = icmp ne %struct.dentry* %187, null
  br i1 %188, label %190, label %189

189:                                              ; preds = %186
  br label %232

190:                                              ; preds = %186
  %191 = load %struct.dentry*, %struct.dentry** %11, align 8
  %192 = load i64, i64* %10, align 8
  %193 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %194 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @selinux_genfs_get_sid(%struct.dentry* %191, i64 %192, i32 %195, i64* %9)
  store i32 %196, i32* %12, align 4
  %197 = load i32, i32* %12, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %190
  %200 = load %struct.dentry*, %struct.dentry** %11, align 8
  %201 = call i32 @dput(%struct.dentry* %200)
  br label %232

202:                                              ; preds = %190
  %203 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %204 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @SE_SBGENFS_XATTR, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %227

209:                                              ; preds = %202
  %210 = load %struct.inode*, %struct.inode** %4, align 8
  %211 = getelementptr inbounds %struct.inode, %struct.inode* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @IOP_XATTR, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %227

216:                                              ; preds = %209
  %217 = load %struct.inode*, %struct.inode** %4, align 8
  %218 = load %struct.dentry*, %struct.dentry** %11, align 8
  %219 = load i64, i64* %9, align 8
  %220 = call i32 @inode_doinit_use_xattr(%struct.inode* %217, %struct.dentry* %218, i64 %219, i64* %9)
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* %12, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %216
  %224 = load %struct.dentry*, %struct.dentry** %11, align 8
  %225 = call i32 @dput(%struct.dentry* %224)
  br label %232

226:                                              ; preds = %216
  br label %227

227:                                              ; preds = %226, %209, %202
  %228 = load %struct.dentry*, %struct.dentry** %11, align 8
  %229 = call i32 @dput(%struct.dentry* %228)
  br label %230

230:                                              ; preds = %227, %165, %155
  br label %231

231:                                              ; preds = %230, %151, %150, %137, %136, %101, %93
  br label %232

232:                                              ; preds = %231, %223, %199, %189, %149, %135, %123
  %233 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %234 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %233, i32 0, i32 2
  %235 = call i32 @spin_lock(i32* %234)
  %236 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %237 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @LABEL_PENDING, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %258

241:                                              ; preds = %232
  %242 = load i64, i64* %9, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load i32, i32* %12, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %244, %241
  %248 = load i64, i64* @LABEL_INVALID, align 8
  %249 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %250 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %249, i32 0, i32 0
  store i64 %248, i64* %250, align 8
  br label %259

251:                                              ; preds = %244
  %252 = load i64, i64* @LABEL_INITIALIZED, align 8
  %253 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %254 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %253, i32 0, i32 0
  store i64 %252, i64* %254, align 8
  %255 = load i64, i64* %9, align 8
  %256 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %257 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %256, i32 0, i32 3
  store i64 %255, i64* %257, align 8
  br label %258

258:                                              ; preds = %251, %232
  br label %259

259:                                              ; preds = %258, %247, %70, %30
  %260 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %261 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %260, i32 0, i32 2
  %262 = call i32 @spin_unlock(i32* %261)
  %263 = load i32, i32* %12, align 4
  store i32 %263, i32* %3, align 4
  br label %264

264:                                              ; preds = %259, %20
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local %struct.inode_security_struct* @selinux_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @inode_mode_to_security_class(i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

declare dso_local %struct.dentry* @d_find_alias(%struct.inode*) #1

declare dso_local %struct.dentry* @d_find_any_alias(%struct.inode*) #1

declare dso_local i32 @inode_doinit_use_xattr(%struct.inode*, %struct.dentry*, i64, i64*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @security_transition_sid(i32*, i64, i64, i64, i32*, i64*) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i32 @selinux_genfs_get_sid(%struct.dentry*, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
