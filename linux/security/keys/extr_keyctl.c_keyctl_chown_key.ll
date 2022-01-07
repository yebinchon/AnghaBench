; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyctl.c_keyctl_chown_key.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyctl.c_keyctl_chown_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_user = type { i32, i32, i32, i32, i32 }
%struct.key = type { i32, i64, i32, i32, i32, %struct.key_user*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@KEY_LOOKUP_CREATE = common dso_local global i32 0, align 4
@KEY_LOOKUP_PARTIAL = common dso_local global i32 0, align 4
@KEY_NEED_SETATTR = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@KEY_FLAG_IN_QUOTA = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@key_quota_root_maxkeys = common dso_local global i32 0, align 4
@key_quota_maxkeys = common dso_local global i32 0, align 4
@key_quota_root_maxbytes = common dso_local global i32 0, align 4
@key_quota_maxbytes = common dso_local global i32 0, align 4
@KEY_IS_UNINSTANTIATED = common dso_local global i64 0, align 8
@EDQUOT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @keyctl_chown_key(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.key_user*, align 8
  %8 = alloca %struct.key_user*, align 8
  %9 = alloca %struct.key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.key_user* null, %struct.key_user** %8, align 8
  %16 = call i32 (...) @current_user_ns()
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @make_kuid(i32 %16, i64 %17)
  store i32 %18, i32* %12, align 4
  %19 = call i32 (...) @current_user_ns()
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @make_kgid(i32 %19, i64 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub nsw i64 0, %22
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, -1
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @uid_valid(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %267

31:                                               ; preds = %26, %3
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, -1
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @gid_valid(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %267

39:                                               ; preds = %34, %31
  store i64 0, i64* %11, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp eq i64 %40, -1
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %267

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @KEY_LOOKUP_CREATE, align 4
  %49 = load i32, i32* @KEY_LOOKUP_PARTIAL, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @KEY_NEED_SETATTR, align 4
  %52 = call i32 @lookup_user_key(i32 %47, i32 %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i64 @IS_ERR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* %10, align 4
  %58 = call i64 @PTR_ERR(i32 %57)
  store i64 %58, i64* %11, align 8
  br label %267

59:                                               ; preds = %46
  %60 = load i32, i32* %10, align 4
  %61 = call %struct.key* @key_ref_to_ptr(i32 %60)
  store %struct.key* %61, %struct.key** %9, align 8
  %62 = load i64, i64* @EACCES, align 8
  %63 = sub nsw i64 0, %62
  store i64 %63, i64* %11, align 8
  %64 = load %struct.key*, %struct.key** %9, align 8
  %65 = getelementptr inbounds %struct.key, %struct.key* %64, i32 0, i32 2
  %66 = call i32 @down_write(i32* %65)
  %67 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %68 = call i32 @capable(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %97, label %70

70:                                               ; preds = %59
  %71 = load i64, i64* %5, align 8
  %72 = icmp ne i64 %71, -1
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load %struct.key*, %struct.key** %9, align 8
  %75 = getelementptr inbounds %struct.key, %struct.key* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i64 @uid_eq(i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  br label %255

81:                                               ; preds = %73, %70
  %82 = load i64, i64* %6, align 8
  %83 = icmp ne i64 %82, -1
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.key*, %struct.key** %9, align 8
  %87 = getelementptr inbounds %struct.key, %struct.key* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @gid_eq(i32 %85, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %84
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @in_group_p(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  br label %255

96:                                               ; preds = %91, %84, %81
  br label %97

97:                                               ; preds = %96, %59
  %98 = load i64, i64* %5, align 8
  %99 = icmp ne i64 %98, -1
  br i1 %99, label %100, label %247

100:                                              ; preds = %97
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.key*, %struct.key** %9, align 8
  %103 = getelementptr inbounds %struct.key, %struct.key* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @uid_eq(i32 %101, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %247, label %107

107:                                              ; preds = %100
  %108 = load i64, i64* @ENOMEM, align 8
  %109 = sub nsw i64 0, %108
  store i64 %109, i64* %11, align 8
  %110 = load i32, i32* %12, align 4
  %111 = call %struct.key_user* @key_user_lookup(i32 %110)
  store %struct.key_user* %111, %struct.key_user** %7, align 8
  %112 = load %struct.key_user*, %struct.key_user** %7, align 8
  %113 = icmp ne %struct.key_user* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %107
  br label %255

115:                                              ; preds = %107
  %116 = load i32, i32* @KEY_FLAG_IN_QUOTA, align 4
  %117 = load %struct.key*, %struct.key** %9, align 8
  %118 = getelementptr inbounds %struct.key, %struct.key* %117, i32 0, i32 6
  %119 = call i64 @test_bit(i32 %116, i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %214

121:                                              ; preds = %115
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %124 = call i64 @uid_eq(i32 %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* @key_quota_root_maxkeys, align 4
  br label %130

128:                                              ; preds = %121
  %129 = load i32, i32* @key_quota_maxkeys, align 4
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i32 [ %127, %126 ], [ %129, %128 ]
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %134 = call i64 @uid_eq(i32 %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load i32, i32* @key_quota_root_maxbytes, align 4
  br label %140

138:                                              ; preds = %130
  %139 = load i32, i32* @key_quota_maxbytes, align 4
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i32 [ %137, %136 ], [ %139, %138 ]
  store i32 %141, i32* %15, align 4
  %142 = load %struct.key_user*, %struct.key_user** %7, align 8
  %143 = getelementptr inbounds %struct.key_user, %struct.key_user* %142, i32 0, i32 2
  %144 = call i32 @spin_lock(i32* %143)
  %145 = load %struct.key_user*, %struct.key_user** %7, align 8
  %146 = getelementptr inbounds %struct.key_user, %struct.key_user* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  %149 = load i32, i32* %14, align 4
  %150 = icmp uge i32 %148, %149
  br i1 %150, label %173, label %151

151:                                              ; preds = %140
  %152 = load %struct.key_user*, %struct.key_user** %7, align 8
  %153 = getelementptr inbounds %struct.key_user, %struct.key_user* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.key*, %struct.key** %9, align 8
  %156 = getelementptr inbounds %struct.key, %struct.key* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = add i32 %154, %157
  %159 = load i32, i32* %15, align 4
  %160 = icmp uge i32 %158, %159
  br i1 %160, label %173, label %161

161:                                              ; preds = %151
  %162 = load %struct.key_user*, %struct.key_user** %7, align 8
  %163 = getelementptr inbounds %struct.key_user, %struct.key_user* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.key*, %struct.key** %9, align 8
  %166 = getelementptr inbounds %struct.key, %struct.key* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = add i32 %164, %167
  %169 = load %struct.key_user*, %struct.key_user** %7, align 8
  %170 = getelementptr inbounds %struct.key_user, %struct.key_user* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp ult i32 %168, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %161, %151, %140
  br label %269

174:                                              ; preds = %161
  %175 = load %struct.key_user*, %struct.key_user** %7, align 8
  %176 = getelementptr inbounds %struct.key_user, %struct.key_user* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 4
  %179 = load %struct.key*, %struct.key** %9, align 8
  %180 = getelementptr inbounds %struct.key, %struct.key* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.key_user*, %struct.key_user** %7, align 8
  %183 = getelementptr inbounds %struct.key_user, %struct.key_user* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = add i32 %184, %181
  store i32 %185, i32* %183, align 4
  %186 = load %struct.key_user*, %struct.key_user** %7, align 8
  %187 = getelementptr inbounds %struct.key_user, %struct.key_user* %186, i32 0, i32 2
  %188 = call i32 @spin_unlock(i32* %187)
  %189 = load %struct.key*, %struct.key** %9, align 8
  %190 = getelementptr inbounds %struct.key, %struct.key* %189, i32 0, i32 5
  %191 = load %struct.key_user*, %struct.key_user** %190, align 8
  %192 = getelementptr inbounds %struct.key_user, %struct.key_user* %191, i32 0, i32 2
  %193 = call i32 @spin_lock(i32* %192)
  %194 = load %struct.key*, %struct.key** %9, align 8
  %195 = getelementptr inbounds %struct.key, %struct.key* %194, i32 0, i32 5
  %196 = load %struct.key_user*, %struct.key_user** %195, align 8
  %197 = getelementptr inbounds %struct.key_user, %struct.key_user* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %197, align 4
  %200 = load %struct.key*, %struct.key** %9, align 8
  %201 = getelementptr inbounds %struct.key, %struct.key* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.key*, %struct.key** %9, align 8
  %204 = getelementptr inbounds %struct.key, %struct.key* %203, i32 0, i32 5
  %205 = load %struct.key_user*, %struct.key_user** %204, align 8
  %206 = getelementptr inbounds %struct.key_user, %struct.key_user* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = sub i32 %207, %202
  store i32 %208, i32* %206, align 4
  %209 = load %struct.key*, %struct.key** %9, align 8
  %210 = getelementptr inbounds %struct.key, %struct.key* %209, i32 0, i32 5
  %211 = load %struct.key_user*, %struct.key_user** %210, align 8
  %212 = getelementptr inbounds %struct.key_user, %struct.key_user* %211, i32 0, i32 2
  %213 = call i32 @spin_unlock(i32* %212)
  br label %214

214:                                              ; preds = %174, %115
  %215 = load %struct.key*, %struct.key** %9, align 8
  %216 = getelementptr inbounds %struct.key, %struct.key* %215, i32 0, i32 5
  %217 = load %struct.key_user*, %struct.key_user** %216, align 8
  %218 = getelementptr inbounds %struct.key_user, %struct.key_user* %217, i32 0, i32 4
  %219 = call i32 @atomic_dec(i32* %218)
  %220 = load %struct.key_user*, %struct.key_user** %7, align 8
  %221 = getelementptr inbounds %struct.key_user, %struct.key_user* %220, i32 0, i32 4
  %222 = call i32 @atomic_inc(i32* %221)
  %223 = load %struct.key*, %struct.key** %9, align 8
  %224 = getelementptr inbounds %struct.key, %struct.key* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @KEY_IS_UNINSTANTIATED, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %237

228:                                              ; preds = %214
  %229 = load %struct.key*, %struct.key** %9, align 8
  %230 = getelementptr inbounds %struct.key, %struct.key* %229, i32 0, i32 5
  %231 = load %struct.key_user*, %struct.key_user** %230, align 8
  %232 = getelementptr inbounds %struct.key_user, %struct.key_user* %231, i32 0, i32 3
  %233 = call i32 @atomic_dec(i32* %232)
  %234 = load %struct.key_user*, %struct.key_user** %7, align 8
  %235 = getelementptr inbounds %struct.key_user, %struct.key_user* %234, i32 0, i32 3
  %236 = call i32 @atomic_inc(i32* %235)
  br label %237

237:                                              ; preds = %228, %214
  %238 = load %struct.key*, %struct.key** %9, align 8
  %239 = getelementptr inbounds %struct.key, %struct.key* %238, i32 0, i32 5
  %240 = load %struct.key_user*, %struct.key_user** %239, align 8
  store %struct.key_user* %240, %struct.key_user** %8, align 8
  %241 = load %struct.key_user*, %struct.key_user** %7, align 8
  %242 = load %struct.key*, %struct.key** %9, align 8
  %243 = getelementptr inbounds %struct.key, %struct.key* %242, i32 0, i32 5
  store %struct.key_user* %241, %struct.key_user** %243, align 8
  %244 = load i32, i32* %12, align 4
  %245 = load %struct.key*, %struct.key** %9, align 8
  %246 = getelementptr inbounds %struct.key, %struct.key* %245, i32 0, i32 4
  store i32 %244, i32* %246, align 8
  br label %247

247:                                              ; preds = %237, %100, %97
  %248 = load i64, i64* %6, align 8
  %249 = icmp ne i64 %248, -1
  br i1 %249, label %250, label %254

250:                                              ; preds = %247
  %251 = load i32, i32* %13, align 4
  %252 = load %struct.key*, %struct.key** %9, align 8
  %253 = getelementptr inbounds %struct.key, %struct.key* %252, i32 0, i32 3
  store i32 %251, i32* %253, align 4
  br label %254

254:                                              ; preds = %250, %247
  store i64 0, i64* %11, align 8
  br label %255

255:                                              ; preds = %269, %254, %114, %95, %80
  %256 = load %struct.key*, %struct.key** %9, align 8
  %257 = getelementptr inbounds %struct.key, %struct.key* %256, i32 0, i32 2
  %258 = call i32 @up_write(i32* %257)
  %259 = load %struct.key*, %struct.key** %9, align 8
  %260 = call i32 @key_put(%struct.key* %259)
  %261 = load %struct.key_user*, %struct.key_user** %8, align 8
  %262 = icmp ne %struct.key_user* %261, null
  br i1 %262, label %263, label %266

263:                                              ; preds = %255
  %264 = load %struct.key_user*, %struct.key_user** %8, align 8
  %265 = call i32 @key_user_put(%struct.key_user* %264)
  br label %266

266:                                              ; preds = %263, %255
  br label %267

267:                                              ; preds = %266, %56, %45, %38, %30
  %268 = load i64, i64* %11, align 8
  ret i64 %268

269:                                              ; preds = %173
  %270 = load %struct.key_user*, %struct.key_user** %7, align 8
  %271 = getelementptr inbounds %struct.key_user, %struct.key_user* %270, i32 0, i32 2
  %272 = call i32 @spin_unlock(i32* %271)
  %273 = load %struct.key_user*, %struct.key_user** %7, align 8
  store %struct.key_user* %273, %struct.key_user** %8, align 8
  %274 = load i64, i64* @EDQUOT, align 8
  %275 = sub nsw i64 0, %274
  store i64 %275, i64* %11, align 8
  br label %255
}

declare dso_local i32 @make_kuid(i32, i64) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @make_kgid(i32, i64) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @gid_valid(i32) #1

declare dso_local i32 @lookup_user_key(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i64 @PTR_ERR(i32) #1

declare dso_local %struct.key* @key_ref_to_ptr(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i32 @in_group_p(i32) #1

declare dso_local %struct.key_user* @key_user_lookup(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @key_user_put(%struct.key_user*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
