; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_appraise.c_ima_appraise_measurement.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_appraise.c_ima_appraise_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.integrity_iint_cache = type { i32 }
%struct.file = type { i32 }
%struct.evm_ima_xattr_data = type { i64 }
%struct.modsig = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ima_appraise_measurement.op = internal constant [14 x i8] c"appraise_data\00", align 1
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@IMA_MODSIG_ALLOWED = common dso_local global i32 0, align 4
@IOP_XATTR = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@IMA_DIGSIG_REQUIRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"IMA-signature-required\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"missing-hash\00", align 1
@FMODE_CREATED = common dso_local global i32 0, align 4
@IMA_NEW_FILE = common dso_local global i32 0, align 4
@XATTR_NAME_IMA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"missing-HMAC\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"invalid-HMAC\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Unexpected integrity status %d\0A\00", align 1
@IMA_XATTR_DIGEST_NG = common dso_local global i64 0, align 8
@ENOKEY = common dso_local global i32 0, align 4
@SB_I_IMA_UNVERIFIABLE_SIGNATURE = common dso_local global i32 0, align 4
@SB_I_UNTRUSTED_MOUNTER = common dso_local global i32 0, align 4
@IMA_FAIL_UNVERIFIABLE_SIGS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"unverifiable-signature\00", align 1
@AUDIT_INTEGRITY_DATA = common dso_local global i32 0, align 4
@ima_appraise = common dso_local global i32 0, align 4
@IMA_APPRAISE_FIX = common dso_local global i32 0, align 4
@EVM_IMA_XATTR_DIGSIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ima_appraise_measurement(i32 %0, %struct.integrity_iint_cache* %1, %struct.file* %2, i8* %3, %struct.evm_ima_xattr_data* %4, i32 %5, %struct.modsig* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.integrity_iint_cache*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.evm_ima_xattr_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.modsig*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.dentry*, align 8
  %18 = alloca %struct.inode*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.integrity_iint_cache* %1, %struct.integrity_iint_cache** %10, align 8
  store %struct.file* %2, %struct.file** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.evm_ima_xattr_data* %4, %struct.evm_ima_xattr_data** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.modsig* %6, %struct.modsig** %15, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %22 = load %struct.file*, %struct.file** %11, align 8
  %23 = call %struct.dentry* @file_dentry(%struct.file* %22)
  store %struct.dentry* %23, %struct.dentry** %17, align 8
  %24 = load %struct.dentry*, %struct.dentry** %17, align 8
  %25 = call %struct.inode* @d_backing_inode(%struct.dentry* %24)
  store %struct.inode* %25, %struct.inode** %18, align 8
  store i32 128, i32* %19, align 4
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %20, align 4
  %27 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %10, align 8
  %28 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IMA_MODSIG_ALLOWED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %7
  %34 = load %struct.modsig*, %struct.modsig** %15, align 8
  %35 = icmp ne %struct.modsig* %34, null
  br label %36

36:                                               ; preds = %33, %7
  %37 = phi i1 [ false, %7 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %21, align 4
  %39 = load %struct.inode*, %struct.inode** %18, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IOP_XATTR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %21, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 128, i32* %8, align 4
  br label %255

49:                                               ; preds = %45, %36
  %50 = load i32, i32* %20, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %106

52:                                               ; preds = %49
  %53 = load i32, i32* %21, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %106, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %20, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* @ENODATA, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %156

64:                                               ; preds = %58, %55
  %65 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %10, align 8
  %66 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IMA_DIGSIG_REQUIRED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)
  store i8* %72, i8** %16, align 8
  store i32 132, i32* %19, align 4
  %73 = load %struct.file*, %struct.file** %11, align 8
  %74 = getelementptr inbounds %struct.file, %struct.file* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @FMODE_CREATED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %64
  %80 = load i32, i32* @IMA_NEW_FILE, align 4
  %81 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %10, align 8
  %82 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %64
  %86 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %10, align 8
  %87 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IMA_NEW_FILE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %85
  %93 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %10, align 8
  %94 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @IMA_DIGSIG_REQUIRED, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load %struct.inode*, %struct.inode** %18, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99, %92
  store i32 130, i32* %19, align 4
  br label %105

105:                                              ; preds = %104, %99, %85
  br label %156

106:                                              ; preds = %52, %49
  %107 = load %struct.dentry*, %struct.dentry** %17, align 8
  %108 = load i32, i32* @XATTR_NAME_IMA, align 4
  %109 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %13, align 8
  %110 = load i32, i32* %20, align 4
  %111 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %10, align 8
  %112 = call i32 @evm_verifyxattr(%struct.dentry* %107, i32 %108, %struct.evm_ima_xattr_data* %109, i32 %110, %struct.integrity_iint_cache* %111)
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  switch i32 %113, label %122 [
    i32 130, label %114
    i32 129, label %114
    i32 128, label %114
    i32 131, label %115
    i32 132, label %120
    i32 133, label %121
  ]

114:                                              ; preds = %106, %106, %106
  br label %125

115:                                              ; preds = %106
  %116 = load i32, i32* %21, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %125

119:                                              ; preds = %115
  br label %120

120:                                              ; preds = %106, %119
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %16, align 8
  br label %156

121:                                              ; preds = %106
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  br label %156

122:                                              ; preds = %106
  %123 = load i32, i32* %19, align 4
  %124 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %122, %118, %114
  %126 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %13, align 8
  %127 = icmp ne %struct.evm_ima_xattr_data* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %10, align 8
  %131 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %13, align 8
  %132 = load i32, i32* %14, align 4
  %133 = call i32 @xattr_verify(i32 %129, %struct.integrity_iint_cache* %130, %struct.evm_ima_xattr_data* %131, i32 %132, i32* %19, i8** %16)
  store i32 %133, i32* %20, align 4
  br label %134

134:                                              ; preds = %128, %125
  %135 = load i32, i32* %21, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %155

137:                                              ; preds = %134
  %138 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %13, align 8
  %139 = icmp ne %struct.evm_ima_xattr_data* %138, null
  br i1 %139, label %140, label %151

140:                                              ; preds = %137
  %141 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %13, align 8
  %142 = getelementptr inbounds %struct.evm_ima_xattr_data, %struct.evm_ima_xattr_data* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @IMA_XATTR_DIGEST_NG, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %151, label %146

146:                                              ; preds = %140
  %147 = load i32, i32* %20, align 4
  %148 = load i32, i32* @ENOKEY, align 4
  %149 = sub nsw i32 0, %148
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %146, %140, %137
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.modsig*, %struct.modsig** %15, align 8
  %154 = call i32 @modsig_verify(i32 %152, %struct.modsig* %153, i32* %19, i8** %16)
  store i32 %154, i32* %20, align 4
  br label %155

155:                                              ; preds = %151, %146, %134
  br label %156

156:                                              ; preds = %155, %121, %120, %105, %63
  %157 = load %struct.inode*, %struct.inode** %18, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 2
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @SB_I_IMA_UNVERIFIABLE_SIGNATURE, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %188

165:                                              ; preds = %156
  %166 = load %struct.inode*, %struct.inode** %18, align 8
  %167 = getelementptr inbounds %struct.inode, %struct.inode* %166, i32 0, i32 2
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @SB_I_UNTRUSTED_MOUNTER, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %165
  %175 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %10, align 8
  %176 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @IMA_FAIL_UNVERIFIABLE_SIGS, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %174, %165
  store i32 133, i32* %19, align 4
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8** %16, align 8
  %182 = load i32, i32* @AUDIT_INTEGRITY_DATA, align 4
  %183 = load %struct.inode*, %struct.inode** %18, align 8
  %184 = load i8*, i8** %12, align 8
  %185 = load i8*, i8** %16, align 8
  %186 = load i32, i32* %20, align 4
  %187 = call i32 @integrity_audit_msg(i32 %182, %struct.inode* %183, i8* %184, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @ima_appraise_measurement.op, i64 0, i64 0), i8* %185, i32 %186, i32 0)
  br label %249

188:                                              ; preds = %174, %156
  %189 = load i32, i32* %19, align 4
  %190 = icmp ne i32 %189, 130
  br i1 %190, label %191, label %244

191:                                              ; preds = %188
  %192 = load i32, i32* @ima_appraise, align 4
  %193 = load i32, i32* @IMA_APPRAISE_FIX, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %215

196:                                              ; preds = %191
  %197 = load i32, i32* %21, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %215, label %199

199:                                              ; preds = %196
  %200 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %13, align 8
  %201 = icmp ne %struct.evm_ima_xattr_data* %200, null
  br i1 %201, label %202, label %208

202:                                              ; preds = %199
  %203 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %13, align 8
  %204 = getelementptr inbounds %struct.evm_ima_xattr_data, %struct.evm_ima_xattr_data* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @EVM_IMA_XATTR_DIGSIG, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %215

208:                                              ; preds = %202, %199
  %209 = load %struct.dentry*, %struct.dentry** %17, align 8
  %210 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %10, align 8
  %211 = call i32 @ima_fix_xattr(%struct.dentry* %209, %struct.integrity_iint_cache* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %208
  store i32 130, i32* %19, align 4
  br label %214

214:                                              ; preds = %213, %208
  br label %215

215:                                              ; preds = %214, %202, %196, %191
  %216 = load %struct.inode*, %struct.inode** %18, align 8
  %217 = getelementptr inbounds %struct.inode, %struct.inode* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %237

220:                                              ; preds = %215
  %221 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %10, align 8
  %222 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @IMA_NEW_FILE, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %237

227:                                              ; preds = %220
  %228 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %13, align 8
  %229 = icmp ne %struct.evm_ima_xattr_data* %228, null
  br i1 %229, label %230, label %237

230:                                              ; preds = %227
  %231 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %13, align 8
  %232 = getelementptr inbounds %struct.evm_ima_xattr_data, %struct.evm_ima_xattr_data* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @EVM_IMA_XATTR_DIGSIG, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %230
  store i32 130, i32* %19, align 4
  br label %237

237:                                              ; preds = %236, %230, %227, %220, %215
  %238 = load i32, i32* @AUDIT_INTEGRITY_DATA, align 4
  %239 = load %struct.inode*, %struct.inode** %18, align 8
  %240 = load i8*, i8** %12, align 8
  %241 = load i8*, i8** %16, align 8
  %242 = load i32, i32* %20, align 4
  %243 = call i32 @integrity_audit_msg(i32 %238, %struct.inode* %239, i8* %240, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @ima_appraise_measurement.op, i64 0, i64 0), i8* %241, i32 %242, i32 0)
  br label %248

244:                                              ; preds = %188
  %245 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %10, align 8
  %246 = load i32, i32* %9, align 4
  %247 = call i32 @ima_cache_flags(%struct.integrity_iint_cache* %245, i32 %246)
  br label %248

248:                                              ; preds = %244, %237
  br label %249

249:                                              ; preds = %248, %181
  %250 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %10, align 8
  %251 = load i32, i32* %9, align 4
  %252 = load i32, i32* %19, align 4
  %253 = call i32 @ima_set_cache_status(%struct.integrity_iint_cache* %250, i32 %251, i32 %252)
  %254 = load i32, i32* %19, align 4
  store i32 %254, i32* %8, align 4
  br label %255

255:                                              ; preds = %249, %48
  %256 = load i32, i32* %8, align 4
  ret i32 %256
}

declare dso_local %struct.dentry* @file_dentry(%struct.file*) #1

declare dso_local %struct.inode* @d_backing_inode(%struct.dentry*) #1

declare dso_local i32 @evm_verifyxattr(%struct.dentry*, i32, %struct.evm_ima_xattr_data*, i32, %struct.integrity_iint_cache*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @xattr_verify(i32, %struct.integrity_iint_cache*, %struct.evm_ima_xattr_data*, i32, i32*, i8**) #1

declare dso_local i32 @modsig_verify(i32, %struct.modsig*, i32*, i8**) #1

declare dso_local i32 @integrity_audit_msg(i32, %struct.inode*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @ima_fix_xattr(%struct.dentry*, %struct.integrity_iint_cache*) #1

declare dso_local i32 @ima_cache_flags(%struct.integrity_iint_cache*, i32) #1

declare dso_local i32 @ima_set_cache_status(%struct.integrity_iint_cache*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
