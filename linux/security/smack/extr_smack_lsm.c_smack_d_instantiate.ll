; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_d_instantiate.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_d_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smack_known = type { i32 }
%struct.dentry = type { %struct.dentry* }
%struct.inode = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32, %struct.superblock_smack* }
%struct.superblock_smack = type { %struct.smack_known*, %struct.smack_known* }
%struct.inode_smack = type { i32, i32, %struct.smack_known*, %struct.smack_known*, %struct.smack_known* }

@TRANS_TRUE_SIZE = common dso_local global i32 0, align 4
@SMK_INODE_INSTANT = common dso_local global i32 0, align 4
@smack_known_star = common dso_local global %struct.smack_known zeroinitializer, align 4
@IOP_XATTR = common dso_local global i32 0, align 4
@XATTR_NAME_SMACK = common dso_local global i32 0, align 4
@SMK_INODE_CHANGED = common dso_local global i32 0, align 4
@XATTR_NAME_SMACKTRANSMUTE = common dso_local global i32 0, align 4
@TRANS_TRUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SMK_INODE_TRANSMUTE = common dso_local global i32 0, align 4
@XATTR_NAME_SMACKEXEC = common dso_local global i32 0, align 4
@smack_known_web = common dso_local global %struct.smack_known zeroinitializer, align 4
@XATTR_NAME_SMACKMMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*, %struct.inode*)* @smack_d_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smack_d_instantiate(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.superblock_smack*, align 8
  %7 = alloca %struct.inode_smack*, align 8
  %8 = alloca %struct.smack_known*, align 8
  %9 = alloca %struct.smack_known*, align 8
  %10 = alloca %struct.smack_known*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dentry*, align 8
  %16 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %17 = call i8* (...) @smk_of_current()
  %18 = bitcast i8* %17 to %struct.smack_known*
  store %struct.smack_known* %18, %struct.smack_known** %9, align 8
  %19 = load i32, i32* @TRANS_TRUE_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = icmp eq %struct.inode* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 1, i32* %16, align 4
  br label %240

26:                                               ; preds = %2
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call %struct.inode_smack* @smack_inode(%struct.inode* %27)
  store %struct.inode_smack* %28, %struct.inode_smack** %7, align 8
  %29 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %30 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %33 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SMK_INODE_INSTANT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %236

39:                                               ; preds = %26
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 2
  %42 = load %struct.super_block*, %struct.super_block** %41, align 8
  store %struct.super_block* %42, %struct.super_block** %5, align 8
  %43 = load %struct.super_block*, %struct.super_block** %5, align 8
  %44 = getelementptr inbounds %struct.super_block, %struct.super_block* %43, i32 0, i32 1
  %45 = load %struct.superblock_smack*, %struct.superblock_smack** %44, align 8
  store %struct.superblock_smack* %45, %struct.superblock_smack** %6, align 8
  %46 = load %struct.superblock_smack*, %struct.superblock_smack** %6, align 8
  %47 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %46, i32 0, i32 1
  %48 = load %struct.smack_known*, %struct.smack_known** %47, align 8
  store %struct.smack_known* %48, %struct.smack_known** %10, align 8
  %49 = load %struct.dentry*, %struct.dentry** %3, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 0
  %51 = load %struct.dentry*, %struct.dentry** %50, align 8
  %52 = load %struct.dentry*, %struct.dentry** %3, align 8
  %53 = icmp eq %struct.dentry* %51, %52
  br i1 %53, label %54, label %93

54:                                               ; preds = %39
  %55 = load %struct.super_block*, %struct.super_block** %5, align 8
  %56 = getelementptr inbounds %struct.super_block, %struct.super_block* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %81 [
    i32 134, label %58
    i32 135, label %58
    i32 128, label %68
    i32 132, label %73
    i32 129, label %78
  ]

58:                                               ; preds = %54, %54
  %59 = load %struct.superblock_smack*, %struct.superblock_smack** %6, align 8
  %60 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %59, i32 0, i32 0
  store %struct.smack_known* @smack_known_star, %struct.smack_known** %60, align 8
  %61 = load %struct.superblock_smack*, %struct.superblock_smack** %6, align 8
  %62 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %61, i32 0, i32 1
  store %struct.smack_known* @smack_known_star, %struct.smack_known** %62, align 8
  %63 = load %struct.superblock_smack*, %struct.superblock_smack** %6, align 8
  %64 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %63, i32 0, i32 0
  %65 = load %struct.smack_known*, %struct.smack_known** %64, align 8
  %66 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %67 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %66, i32 0, i32 2
  store %struct.smack_known* %65, %struct.smack_known** %67, align 8
  br label %87

68:                                               ; preds = %54
  %69 = call i8* (...) @smk_of_current()
  %70 = bitcast i8* %69 to %struct.smack_known*
  %71 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %72 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %71, i32 0, i32 2
  store %struct.smack_known* %70, %struct.smack_known** %72, align 8
  br label %87

73:                                               ; preds = %54
  %74 = call i8* (...) @smk_of_current()
  %75 = bitcast i8* %74 to %struct.smack_known*
  %76 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %77 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %76, i32 0, i32 2
  store %struct.smack_known* %75, %struct.smack_known** %77, align 8
  br label %87

78:                                               ; preds = %54
  %79 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %80 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %79, i32 0, i32 2
  store %struct.smack_known* @smack_known_star, %struct.smack_known** %80, align 8
  br label %87

81:                                               ; preds = %54
  %82 = load %struct.superblock_smack*, %struct.superblock_smack** %6, align 8
  %83 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %82, i32 0, i32 0
  %84 = load %struct.smack_known*, %struct.smack_known** %83, align 8
  %85 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %86 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %85, i32 0, i32 2
  store %struct.smack_known* %84, %struct.smack_known** %86, align 8
  br label %87

87:                                               ; preds = %81, %78, %73, %68, %58
  %88 = load i32, i32* @SMK_INODE_INSTANT, align 4
  %89 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %90 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %236

93:                                               ; preds = %39
  %94 = load %struct.super_block*, %struct.super_block** %5, align 8
  %95 = getelementptr inbounds %struct.super_block, %struct.super_block* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  switch i32 %96, label %102 [
    i32 130, label %97
    i32 134, label %97
    i32 135, label %97
    i32 133, label %98
    i32 131, label %100
    i32 128, label %101
  ]

97:                                               ; preds = %93, %93, %93
  store %struct.smack_known* @smack_known_star, %struct.smack_known** %10, align 8
  br label %217

98:                                               ; preds = %93
  %99 = load %struct.smack_known*, %struct.smack_known** %9, align 8
  store %struct.smack_known* %99, %struct.smack_known** %10, align 8
  br label %217

100:                                              ; preds = %93
  br label %217

101:                                              ; preds = %93
  store %struct.smack_known* @smack_known_star, %struct.smack_known** %10, align 8
  br label %102

102:                                              ; preds = %93, %101
  %103 = load %struct.inode*, %struct.inode** %4, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @S_ISSOCK(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  store %struct.smack_known* @smack_known_star, %struct.smack_known** %10, align 8
  br label %217

109:                                              ; preds = %102
  %110 = load %struct.inode*, %struct.inode** %4, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @IOP_XATTR, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %109
  br label %217

117:                                              ; preds = %109
  %118 = load %struct.dentry*, %struct.dentry** %3, align 8
  %119 = call %struct.dentry* @dget(%struct.dentry* %118)
  store %struct.dentry* %119, %struct.dentry** %15, align 8
  %120 = load i32, i32* @XATTR_NAME_SMACK, align 4
  %121 = load %struct.inode*, %struct.inode** %4, align 8
  %122 = load %struct.dentry*, %struct.dentry** %15, align 8
  %123 = call %struct.smack_known* @smk_fetch(i32 %120, %struct.inode* %121, %struct.dentry* %122)
  store %struct.smack_known* %123, %struct.smack_known** %8, align 8
  %124 = load %struct.smack_known*, %struct.smack_known** %8, align 8
  %125 = call i32 @IS_ERR_OR_NULL(%struct.smack_known* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %117
  %128 = load %struct.smack_known*, %struct.smack_known** %8, align 8
  store %struct.smack_known* %128, %struct.smack_known** %10, align 8
  br label %129

129:                                              ; preds = %127, %117
  %130 = load %struct.inode*, %struct.inode** %4, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @S_ISDIR(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %178

135:                                              ; preds = %129
  %136 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %137 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @SMK_INODE_CHANGED, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %135
  %143 = load i32, i32* @SMK_INODE_CHANGED, align 4
  %144 = xor i32 %143, -1
  %145 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %146 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = and i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load %struct.dentry*, %struct.dentry** %15, align 8
  %150 = load %struct.inode*, %struct.inode** %4, align 8
  %151 = load i32, i32* @XATTR_NAME_SMACKTRANSMUTE, align 4
  %152 = load i32, i32* @TRANS_TRUE, align 4
  %153 = load i32, i32* @TRANS_TRUE_SIZE, align 4
  %154 = call i32 @__vfs_setxattr(%struct.dentry* %149, %struct.inode* %150, i32 %151, i32 %152, i32 %153, i32 0)
  store i32 %154, i32* %14, align 4
  br label %172

155:                                              ; preds = %135
  %156 = load %struct.dentry*, %struct.dentry** %15, align 8
  %157 = load %struct.inode*, %struct.inode** %4, align 8
  %158 = load i32, i32* @XATTR_NAME_SMACKTRANSMUTE, align 4
  %159 = load i32, i32* @TRANS_TRUE_SIZE, align 4
  %160 = call i32 @__vfs_getxattr(%struct.dentry* %156, %struct.inode* %157, i32 %158, i8* %22, i32 %159)
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  %162 = icmp sge i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %155
  %164 = load i32, i32* @TRANS_TRUE, align 4
  %165 = load i32, i32* @TRANS_TRUE_SIZE, align 4
  %166 = call i32 @strncmp(i8* %22, i32 %164, i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %14, align 4
  br label %171

171:                                              ; preds = %168, %163, %155
  br label %172

172:                                              ; preds = %171, %142
  %173 = load i32, i32* %14, align 4
  %174 = icmp sge i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = load i32, i32* @SMK_INODE_TRANSMUTE, align 4
  store i32 %176, i32* %13, align 4
  br label %177

177:                                              ; preds = %175, %172
  br label %178

178:                                              ; preds = %177, %129
  %179 = load i32, i32* @XATTR_NAME_SMACKEXEC, align 4
  %180 = load %struct.inode*, %struct.inode** %4, align 8
  %181 = load %struct.dentry*, %struct.dentry** %15, align 8
  %182 = call %struct.smack_known* @smk_fetch(i32 %179, %struct.inode* %180, %struct.dentry* %181)
  store %struct.smack_known* %182, %struct.smack_known** %8, align 8
  %183 = load %struct.smack_known*, %struct.smack_known** %8, align 8
  %184 = call i32 @IS_ERR(%struct.smack_known* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %192, label %186

186:                                              ; preds = %178
  %187 = load %struct.smack_known*, %struct.smack_known** %8, align 8
  %188 = icmp eq %struct.smack_known* %187, @smack_known_star
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = load %struct.smack_known*, %struct.smack_known** %8, align 8
  %191 = icmp eq %struct.smack_known* %190, @smack_known_web
  br i1 %191, label %192, label %193

192:                                              ; preds = %189, %186, %178
  store %struct.smack_known* null, %struct.smack_known** %8, align 8
  br label %193

193:                                              ; preds = %192, %189
  %194 = load %struct.smack_known*, %struct.smack_known** %8, align 8
  %195 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %196 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %195, i32 0, i32 4
  store %struct.smack_known* %194, %struct.smack_known** %196, align 8
  %197 = load i32, i32* @XATTR_NAME_SMACKMMAP, align 4
  %198 = load %struct.inode*, %struct.inode** %4, align 8
  %199 = load %struct.dentry*, %struct.dentry** %15, align 8
  %200 = call %struct.smack_known* @smk_fetch(i32 %197, %struct.inode* %198, %struct.dentry* %199)
  store %struct.smack_known* %200, %struct.smack_known** %8, align 8
  %201 = load %struct.smack_known*, %struct.smack_known** %8, align 8
  %202 = call i32 @IS_ERR(%struct.smack_known* %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %193
  %205 = load %struct.smack_known*, %struct.smack_known** %8, align 8
  %206 = icmp eq %struct.smack_known* %205, @smack_known_star
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load %struct.smack_known*, %struct.smack_known** %8, align 8
  %209 = icmp eq %struct.smack_known* %208, @smack_known_web
  br i1 %209, label %210, label %211

210:                                              ; preds = %207, %204, %193
  store %struct.smack_known* null, %struct.smack_known** %8, align 8
  br label %211

211:                                              ; preds = %210, %207
  %212 = load %struct.smack_known*, %struct.smack_known** %8, align 8
  %213 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %214 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %213, i32 0, i32 3
  store %struct.smack_known* %212, %struct.smack_known** %214, align 8
  %215 = load %struct.dentry*, %struct.dentry** %15, align 8
  %216 = call i32 @dput(%struct.dentry* %215)
  br label %217

217:                                              ; preds = %211, %116, %108, %100, %98, %97
  %218 = load %struct.smack_known*, %struct.smack_known** %10, align 8
  %219 = icmp eq %struct.smack_known* %218, null
  br i1 %219, label %220, label %224

220:                                              ; preds = %217
  %221 = load %struct.smack_known*, %struct.smack_known** %9, align 8
  %222 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %223 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %222, i32 0, i32 2
  store %struct.smack_known* %221, %struct.smack_known** %223, align 8
  br label %228

224:                                              ; preds = %217
  %225 = load %struct.smack_known*, %struct.smack_known** %10, align 8
  %226 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %227 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %226, i32 0, i32 2
  store %struct.smack_known* %225, %struct.smack_known** %227, align 8
  br label %228

228:                                              ; preds = %224, %220
  %229 = load i32, i32* @SMK_INODE_INSTANT, align 4
  %230 = load i32, i32* %13, align 4
  %231 = or i32 %229, %230
  %232 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %233 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = or i32 %234, %231
  store i32 %235, i32* %233, align 8
  br label %236

236:                                              ; preds = %228, %87, %38
  %237 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %238 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %237, i32 0, i32 1
  %239 = call i32 @mutex_unlock(i32* %238)
  store i32 1, i32* %16, align 4
  br label %240

240:                                              ; preds = %236, %25
  %241 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %241)
  ret void
}

declare dso_local i8* @smk_of_current(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.inode_smack* @smack_inode(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @S_ISSOCK(i32) #1

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

declare dso_local %struct.smack_known* @smk_fetch(i32, %struct.inode*, %struct.dentry*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.smack_known*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @__vfs_setxattr(%struct.dentry*, %struct.inode*, i32, i32, i32, i32) #1

declare dso_local i32 @__vfs_getxattr(%struct.dentry*, %struct.inode*, i32, i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.smack_known*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
