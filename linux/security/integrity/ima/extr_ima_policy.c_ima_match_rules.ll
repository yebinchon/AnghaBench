; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_policy.c_ima_match_rules.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_policy.c_ima_match_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ima_rule_entry = type { i32, i32, i32, i64, %struct.TYPE_6__*, i32, i32 (i32, i32)*, i32, i32 (i32, i32)*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.inode = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cred = type { i32, i32, i32 }

@KEXEC_CMDLINE = common dso_local global i32 0, align 4
@IMA_FUNC = common dso_local global i32 0, align 4
@POST_SETATTR = common dso_local global i32 0, align 4
@IMA_MASK = common dso_local global i32 0, align 4
@IMA_INMASK = common dso_local global i32 0, align 4
@IMA_FSMAGIC = common dso_local global i32 0, align 4
@IMA_FSNAME = common dso_local global i32 0, align 4
@IMA_FSUUID = common dso_local global i32 0, align 4
@IMA_UID = common dso_local global i32 0, align 4
@IMA_EUID = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@CAP_SETUID = common dso_local global i32 0, align 4
@IMA_FOWNER = common dso_local global i32 0, align 4
@MAX_LSM_RULES = common dso_local global i32 0, align 4
@Audit_equal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ima_rule_entry*, %struct.inode*, %struct.cred*, i32, i32, i32)* @ima_match_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ima_match_rules(%struct.ima_rule_entry* %0, %struct.inode* %1, %struct.cred* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ima_rule_entry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.cred*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ima_rule_entry* %0, %struct.ima_rule_entry** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.cred* %2, %struct.cred** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @KEXEC_CMDLINE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %6
  %21 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %22 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IMA_FUNC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %29 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %7, align 4
  br label %321

34:                                               ; preds = %27, %20
  store i32 0, i32* %7, align 4
  br label %321

35:                                               ; preds = %6
  %36 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %37 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IMA_FUNC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %44 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @POST_SETATTR, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %321

53:                                               ; preds = %48, %42, %35
  %54 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %55 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @IMA_MASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %53
  %61 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %62 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @POST_SETATTR, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  br label %321

71:                                               ; preds = %66, %60, %53
  %72 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %73 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @IMA_INMASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %71
  %79 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %80 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @POST_SETATTR, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i32 0, i32* %7, align 4
  br label %321

90:                                               ; preds = %85, %78, %71
  %91 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %92 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IMA_FSMAGIC, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %90
  %98 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %99 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.inode*, %struct.inode** %9, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 1
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %100, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  store i32 0, i32* %7, align 4
  br label %321

108:                                              ; preds = %97, %90
  %109 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %110 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @IMA_FSNAME, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %108
  %116 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %117 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %116, i32 0, i32 10
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.inode*, %struct.inode** %9, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 1
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @strcmp(i32 %118, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %115
  store i32 0, i32* %7, align 4
  br label %321

129:                                              ; preds = %115, %108
  %130 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %131 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @IMA_FSUUID, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %129
  %137 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %138 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %137, i32 0, i32 9
  %139 = load %struct.inode*, %struct.inode** %9, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 1
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = call i32 @uuid_equal(i32* %138, i32* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %136
  store i32 0, i32* %7, align 4
  br label %321

146:                                              ; preds = %136, %129
  %147 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %148 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @IMA_UID, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %146
  %154 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %155 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %154, i32 0, i32 8
  %156 = load i32 (i32, i32)*, i32 (i32, i32)** %155, align 8
  %157 = load %struct.cred*, %struct.cred** %10, align 8
  %158 = getelementptr inbounds %struct.cred, %struct.cred* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %161 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 8
  %163 = call i32 %156(i32 %159, i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %153
  store i32 0, i32* %7, align 4
  br label %321

166:                                              ; preds = %153, %146
  %167 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %168 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @IMA_EUID, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %231

173:                                              ; preds = %166
  %174 = load i32, i32* @current, align 4
  %175 = load i32, i32* @CAP_SETUID, align 4
  %176 = call i64 @has_capability_noaudit(i32 %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %216

178:                                              ; preds = %173
  %179 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %180 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %179, i32 0, i32 8
  %181 = load i32 (i32, i32)*, i32 (i32, i32)** %180, align 8
  %182 = load %struct.cred*, %struct.cred** %10, align 8
  %183 = getelementptr inbounds %struct.cred, %struct.cred* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %186 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 8
  %188 = call i32 %181(i32 %184, i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %215, label %190

190:                                              ; preds = %178
  %191 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %192 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %191, i32 0, i32 8
  %193 = load i32 (i32, i32)*, i32 (i32, i32)** %192, align 8
  %194 = load %struct.cred*, %struct.cred** %10, align 8
  %195 = getelementptr inbounds %struct.cred, %struct.cred* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %198 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 8
  %200 = call i32 %193(i32 %196, i32 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %215, label %202

202:                                              ; preds = %190
  %203 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %204 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %203, i32 0, i32 8
  %205 = load i32 (i32, i32)*, i32 (i32, i32)** %204, align 8
  %206 = load %struct.cred*, %struct.cred** %10, align 8
  %207 = getelementptr inbounds %struct.cred, %struct.cred* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %210 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 8
  %212 = call i32 %205(i32 %208, i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %202
  store i32 0, i32* %7, align 4
  br label %321

215:                                              ; preds = %202, %190, %178
  br label %230

216:                                              ; preds = %173
  %217 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %218 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %217, i32 0, i32 8
  %219 = load i32 (i32, i32)*, i32 (i32, i32)** %218, align 8
  %220 = load %struct.cred*, %struct.cred** %10, align 8
  %221 = getelementptr inbounds %struct.cred, %struct.cred* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %224 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 8
  %226 = call i32 %219(i32 %222, i32 %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %216
  store i32 0, i32* %7, align 4
  br label %321

229:                                              ; preds = %216
  br label %230

230:                                              ; preds = %229, %215
  br label %231

231:                                              ; preds = %230, %166
  %232 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %233 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @IMA_FOWNER, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %251

238:                                              ; preds = %231
  %239 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %240 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %239, i32 0, i32 6
  %241 = load i32 (i32, i32)*, i32 (i32, i32)** %240, align 8
  %242 = load %struct.inode*, %struct.inode** %9, align 8
  %243 = getelementptr inbounds %struct.inode, %struct.inode* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %246 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 8
  %248 = call i32 %241(i32 %244, i32 %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %238
  store i32 0, i32* %7, align 4
  br label %321

251:                                              ; preds = %238, %231
  store i32 0, i32* %14, align 4
  br label %252

252:                                              ; preds = %317, %251
  %253 = load i32, i32* %14, align 4
  %254 = load i32, i32* @MAX_LSM_RULES, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %320

256:                                              ; preds = %252
  store i32 0, i32* %15, align 4
  %257 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %258 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %257, i32 0, i32 4
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %258, align 8
  %260 = load i32, i32* %14, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %256
  br label %317

267:                                              ; preds = %256
  %268 = load i32, i32* %14, align 4
  switch i32 %268, label %311 [
    i32 131, label %269
    i32 133, label %269
    i32 132, label %269
    i32 128, label %291
    i32 130, label %291
    i32 129, label %291
  ]

269:                                              ; preds = %267, %267, %267
  %270 = load %struct.inode*, %struct.inode** %9, align 8
  %271 = call i32 @security_inode_getsecid(%struct.inode* %270, i32* %16)
  %272 = load i32, i32* %16, align 4
  %273 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %274 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %273, i32 0, i32 4
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %274, align 8
  %276 = load i32, i32* %14, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @Audit_equal, align 4
  %282 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %283 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %282, i32 0, i32 4
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %283, align 8
  %285 = load i32, i32* %14, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @security_filter_rule_match(i32 %272, i32 %280, i32 %281, i32 %289)
  store i32 %290, i32* %15, align 4
  br label %312

291:                                              ; preds = %267, %267, %267
  %292 = load i32, i32* %11, align 4
  %293 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %294 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %293, i32 0, i32 4
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %294, align 8
  %296 = load i32, i32* %14, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @Audit_equal, align 4
  %302 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %303 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %302, i32 0, i32 4
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %303, align 8
  %305 = load i32, i32* %14, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @security_filter_rule_match(i32 %292, i32 %300, i32 %301, i32 %309)
  store i32 %310, i32* %15, align 4
  br label %311

311:                                              ; preds = %267, %291
  br label %312

312:                                              ; preds = %311, %269
  %313 = load i32, i32* %15, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %316, label %315

315:                                              ; preds = %312
  store i32 0, i32* %7, align 4
  br label %321

316:                                              ; preds = %312
  br label %317

317:                                              ; preds = %316, %266
  %318 = load i32, i32* %14, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %14, align 4
  br label %252

320:                                              ; preds = %252
  store i32 1, i32* %7, align 4
  br label %321

321:                                              ; preds = %320, %315, %250, %228, %214, %165, %145, %128, %107, %89, %70, %52, %34, %33
  %322 = load i32, i32* %7, align 4
  ret i32 %322
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @uuid_equal(i32*, i32*) #1

declare dso_local i64 @has_capability_noaudit(i32, i32) #1

declare dso_local i32 @security_inode_getsecid(%struct.inode*, i32*) #1

declare dso_local i32 @security_filter_rule_match(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
