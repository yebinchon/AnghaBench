; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_create_over_whiteout.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_create_over_whiteout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode*, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i64 }
%struct.ovl_cattr = type { i64, i32 }
%struct.posix_acl = type { i32 }
%struct.iattr = type { i64, i32 }

@EROFS = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@XATTR_NAME_POSIX_ACL_ACCESS = common dso_local global i32 0, align 4
@XATTR_NAME_POSIX_ACL_DEFAULT = common dso_local global i32 0, align 4
@RENAME_EXCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.ovl_cattr*)* @ovl_create_over_whiteout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_create_over_whiteout(%struct.dentry* %0, %struct.inode* %1, %struct.ovl_cattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ovl_cattr*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.posix_acl*, align 8
  %16 = alloca %struct.posix_acl*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.iattr, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.ovl_cattr* %2, %struct.ovl_cattr** %7, align 8
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = call %struct.dentry* @ovl_workdir(%struct.dentry* %19)
  store %struct.dentry* %20, %struct.dentry** %8, align 8
  %21 = load %struct.dentry*, %struct.dentry** %8, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = load %struct.inode*, %struct.inode** %22, align 8
  store %struct.inode* %23, %struct.inode** %9, align 8
  %24 = load %struct.dentry*, %struct.dentry** %5, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call %struct.dentry* @ovl_dentry_upper(%struct.TYPE_4__* %26)
  store %struct.dentry* %27, %struct.dentry** %10, align 8
  %28 = load %struct.dentry*, %struct.dentry** %10, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = load %struct.inode*, %struct.inode** %29, align 8
  store %struct.inode* %30, %struct.inode** %11, align 8
  %31 = load %struct.ovl_cattr*, %struct.ovl_cattr** %7, align 8
  %32 = getelementptr inbounds %struct.ovl_cattr, %struct.ovl_cattr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %17, align 4
  %38 = load %struct.dentry*, %struct.dentry** %8, align 8
  %39 = icmp ne %struct.dentry* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %3
  %45 = load i32, i32* @EROFS, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %243

47:                                               ; preds = %3
  %48 = load i32, i32* %17, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %47
  %51 = load %struct.dentry*, %struct.dentry** %5, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ovl_cattr*, %struct.ovl_cattr** %7, align 8
  %57 = getelementptr inbounds %struct.ovl_cattr, %struct.ovl_cattr* %56, i32 0, i32 0
  %58 = call i32 @posix_acl_create(i32 %55, i64* %57, %struct.posix_acl** %16, %struct.posix_acl** %15)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %4, align 4
  br label %243

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %47
  %65 = load %struct.dentry*, %struct.dentry** %8, align 8
  %66 = load %struct.dentry*, %struct.dentry** %10, align 8
  %67 = call i32 @ovl_lock_rename_workdir(%struct.dentry* %65, %struct.dentry* %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %227

71:                                               ; preds = %64
  %72 = load %struct.dentry*, %struct.dentry** %5, align 8
  %73 = getelementptr inbounds %struct.dentry, %struct.dentry* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.dentry*, %struct.dentry** %10, align 8
  %77 = load %struct.dentry*, %struct.dentry** %5, align 8
  %78 = getelementptr inbounds %struct.dentry, %struct.dentry* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.dentry* @lookup_one_len(i32 %75, %struct.dentry* %76, i32 %80)
  store %struct.dentry* %81, %struct.dentry** %12, align 8
  %82 = load %struct.dentry*, %struct.dentry** %12, align 8
  %83 = call i32 @PTR_ERR(%struct.dentry* %82)
  store i32 %83, i32* %14, align 4
  %84 = load %struct.dentry*, %struct.dentry** %12, align 8
  %85 = call i64 @IS_ERR(%struct.dentry* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %71
  br label %223

88:                                               ; preds = %71
  %89 = load i32, i32* @ESTALE, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %14, align 4
  %91 = load %struct.dentry*, %struct.dentry** %12, align 8
  %92 = call i64 @d_is_negative(%struct.dentry* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %88
  %95 = load %struct.dentry*, %struct.dentry** %12, align 8
  %96 = call i32 @d_inode(%struct.dentry* %95)
  %97 = call i32 @IS_WHITEOUT(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94, %88
  br label %220

100:                                              ; preds = %94
  %101 = load %struct.dentry*, %struct.dentry** %8, align 8
  %102 = load %struct.ovl_cattr*, %struct.ovl_cattr** %7, align 8
  %103 = call %struct.dentry* @ovl_create_temp(%struct.dentry* %101, %struct.ovl_cattr* %102)
  store %struct.dentry* %103, %struct.dentry** %13, align 8
  %104 = load %struct.dentry*, %struct.dentry** %13, align 8
  %105 = call i32 @PTR_ERR(%struct.dentry* %104)
  store i32 %105, i32* %14, align 4
  %106 = load %struct.dentry*, %struct.dentry** %13, align 8
  %107 = call i64 @IS_ERR(%struct.dentry* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %220

110:                                              ; preds = %100
  %111 = load i32, i32* %17, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %150, label %113

113:                                              ; preds = %110
  %114 = load %struct.ovl_cattr*, %struct.ovl_cattr** %7, align 8
  %115 = getelementptr inbounds %struct.ovl_cattr, %struct.ovl_cattr* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @S_ISLNK(i64 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %150, label %119

119:                                              ; preds = %113
  %120 = load %struct.dentry*, %struct.dentry** %13, align 8
  %121 = getelementptr inbounds %struct.dentry, %struct.dentry* %120, i32 0, i32 0
  %122 = load %struct.inode*, %struct.inode** %121, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.ovl_cattr*, %struct.ovl_cattr** %7, align 8
  %126 = getelementptr inbounds %struct.ovl_cattr, %struct.ovl_cattr* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %124, %127
  br i1 %128, label %129, label %150

129:                                              ; preds = %119
  %130 = getelementptr inbounds %struct.iattr, %struct.iattr* %18, i32 0, i32 0
  %131 = load %struct.ovl_cattr*, %struct.ovl_cattr** %7, align 8
  %132 = getelementptr inbounds %struct.ovl_cattr, %struct.ovl_cattr* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %130, align 8
  %134 = getelementptr inbounds %struct.iattr, %struct.iattr* %18, i32 0, i32 1
  %135 = load i32, i32* @ATTR_MODE, align 4
  store i32 %135, i32* %134, align 8
  %136 = load %struct.dentry*, %struct.dentry** %13, align 8
  %137 = getelementptr inbounds %struct.dentry, %struct.dentry* %136, i32 0, i32 0
  %138 = load %struct.inode*, %struct.inode** %137, align 8
  %139 = call i32 @inode_lock(%struct.inode* %138)
  %140 = load %struct.dentry*, %struct.dentry** %13, align 8
  %141 = call i32 @notify_change(%struct.dentry* %140, %struct.iattr* %18, i32* null)
  store i32 %141, i32* %14, align 4
  %142 = load %struct.dentry*, %struct.dentry** %13, align 8
  %143 = getelementptr inbounds %struct.dentry, %struct.dentry* %142, i32 0, i32 0
  %144 = load %struct.inode*, %struct.inode** %143, align 8
  %145 = call i32 @inode_unlock(%struct.inode* %144)
  %146 = load i32, i32* %14, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %129
  br label %237

149:                                              ; preds = %129
  br label %150

150:                                              ; preds = %149, %119, %113, %110
  %151 = load i32, i32* %17, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %170, label %153

153:                                              ; preds = %150
  %154 = load %struct.dentry*, %struct.dentry** %13, align 8
  %155 = load i32, i32* @XATTR_NAME_POSIX_ACL_ACCESS, align 4
  %156 = load %struct.posix_acl*, %struct.posix_acl** %15, align 8
  %157 = call i32 @ovl_set_upper_acl(%struct.dentry* %154, i32 %155, %struct.posix_acl* %156)
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %14, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  br label %237

161:                                              ; preds = %153
  %162 = load %struct.dentry*, %struct.dentry** %13, align 8
  %163 = load i32, i32* @XATTR_NAME_POSIX_ACL_DEFAULT, align 4
  %164 = load %struct.posix_acl*, %struct.posix_acl** %16, align 8
  %165 = call i32 @ovl_set_upper_acl(%struct.dentry* %162, i32 %163, %struct.posix_acl* %164)
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  br label %237

169:                                              ; preds = %161
  br label %170

170:                                              ; preds = %169, %150
  %171 = load i32, i32* %17, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %200, label %173

173:                                              ; preds = %170
  %174 = load %struct.ovl_cattr*, %struct.ovl_cattr** %7, align 8
  %175 = getelementptr inbounds %struct.ovl_cattr, %struct.ovl_cattr* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i64 @S_ISDIR(i64 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %200

179:                                              ; preds = %173
  %180 = load %struct.dentry*, %struct.dentry** %5, align 8
  %181 = load %struct.dentry*, %struct.dentry** %13, align 8
  %182 = call i32 @ovl_set_opaque(%struct.dentry* %180, %struct.dentry* %181)
  store i32 %182, i32* %14, align 4
  %183 = load i32, i32* %14, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  br label %237

186:                                              ; preds = %179
  %187 = load %struct.inode*, %struct.inode** %9, align 8
  %188 = load %struct.dentry*, %struct.dentry** %13, align 8
  %189 = load %struct.inode*, %struct.inode** %11, align 8
  %190 = load %struct.dentry*, %struct.dentry** %12, align 8
  %191 = load i32, i32* @RENAME_EXCHANGE, align 4
  %192 = call i32 @ovl_do_rename(%struct.inode* %187, %struct.dentry* %188, %struct.inode* %189, %struct.dentry* %190, i32 %191)
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %14, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %186
  br label %237

196:                                              ; preds = %186
  %197 = load %struct.inode*, %struct.inode** %9, align 8
  %198 = load %struct.dentry*, %struct.dentry** %12, align 8
  %199 = call i32 @ovl_cleanup(%struct.inode* %197, %struct.dentry* %198)
  br label %210

200:                                              ; preds = %173, %170
  %201 = load %struct.inode*, %struct.inode** %9, align 8
  %202 = load %struct.dentry*, %struct.dentry** %13, align 8
  %203 = load %struct.inode*, %struct.inode** %11, align 8
  %204 = load %struct.dentry*, %struct.dentry** %12, align 8
  %205 = call i32 @ovl_do_rename(%struct.inode* %201, %struct.dentry* %202, %struct.inode* %203, %struct.dentry* %204, i32 0)
  store i32 %205, i32* %14, align 4
  %206 = load i32, i32* %14, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  br label %237

209:                                              ; preds = %200
  br label %210

210:                                              ; preds = %209, %196
  %211 = load %struct.dentry*, %struct.dentry** %5, align 8
  %212 = load %struct.inode*, %struct.inode** %6, align 8
  %213 = load %struct.dentry*, %struct.dentry** %13, align 8
  %214 = load i32, i32* %17, align 4
  %215 = call i32 @ovl_instantiate(%struct.dentry* %211, %struct.inode* %212, %struct.dentry* %213, i32 %214)
  store i32 %215, i32* %14, align 4
  %216 = load i32, i32* %14, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %210
  br label %237

219:                                              ; preds = %210
  br label %220

220:                                              ; preds = %237, %219, %109, %99
  %221 = load %struct.dentry*, %struct.dentry** %12, align 8
  %222 = call i32 @dput(%struct.dentry* %221)
  br label %223

223:                                              ; preds = %220, %87
  %224 = load %struct.dentry*, %struct.dentry** %8, align 8
  %225 = load %struct.dentry*, %struct.dentry** %10, align 8
  %226 = call i32 @unlock_rename(%struct.dentry* %224, %struct.dentry* %225)
  br label %227

227:                                              ; preds = %223, %70
  %228 = load i32, i32* %17, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %235, label %230

230:                                              ; preds = %227
  %231 = load %struct.posix_acl*, %struct.posix_acl** %15, align 8
  %232 = call i32 @posix_acl_release(%struct.posix_acl* %231)
  %233 = load %struct.posix_acl*, %struct.posix_acl** %16, align 8
  %234 = call i32 @posix_acl_release(%struct.posix_acl* %233)
  br label %235

235:                                              ; preds = %230, %227
  %236 = load i32, i32* %14, align 4
  store i32 %236, i32* %4, align 4
  br label %243

237:                                              ; preds = %218, %208, %195, %185, %168, %160, %148
  %238 = load %struct.inode*, %struct.inode** %9, align 8
  %239 = load %struct.dentry*, %struct.dentry** %13, align 8
  %240 = call i32 @ovl_cleanup(%struct.inode* %238, %struct.dentry* %239)
  %241 = load %struct.dentry*, %struct.dentry** %13, align 8
  %242 = call i32 @dput(%struct.dentry* %241)
  br label %220

243:                                              ; preds = %235, %61, %44
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

declare dso_local %struct.dentry* @ovl_workdir(%struct.dentry*) #1

declare dso_local %struct.dentry* @ovl_dentry_upper(%struct.TYPE_4__*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @posix_acl_create(i32, i64*, %struct.posix_acl**, %struct.posix_acl**) #1

declare dso_local i32 @ovl_lock_rename_workdir(%struct.dentry*, %struct.dentry*) #1

declare dso_local %struct.dentry* @lookup_one_len(i32, %struct.dentry*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i64 @d_is_negative(%struct.dentry*) #1

declare dso_local i32 @IS_WHITEOUT(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local %struct.dentry* @ovl_create_temp(%struct.dentry*, %struct.ovl_cattr*) #1

declare dso_local i32 @S_ISLNK(i64) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @notify_change(%struct.dentry*, %struct.iattr*, i32*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @ovl_set_upper_acl(%struct.dentry*, i32, %struct.posix_acl*) #1

declare dso_local i64 @S_ISDIR(i64) #1

declare dso_local i32 @ovl_set_opaque(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @ovl_do_rename(%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @ovl_cleanup(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @ovl_instantiate(%struct.dentry*, %struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @unlock_rename(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
