; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_main.c_process_measurement.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_main.c_process_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, i32 }
%struct.cred = type { i32 }
%struct.inode = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.integrity_iint_cache = type { i32, i32, i32, i32 }
%struct.ima_template_desc = type { i32 }
%struct.evm_ima_xattr_data = type { i64 }
%struct.modsig = type { i32 }

@NAME_MAX = common dso_local global i32 0, align 4
@CONFIG_IMA_MEASURE_PCR_IDX = common dso_local global i32 0, align 4
@ima_policy_flag = common dso_local global i32 0, align 4
@FILE_CHECK = common dso_local global i32 0, align 4
@MMAP_CHECK = common dso_local global i32 0, align 4
@IMA_MEASURE = common dso_local global i32 0, align 4
@IMA_APPRAISE = common dso_local global i32 0, align 4
@IMA_FILE_APPRAISE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IMA_CHANGE_ATTR = common dso_local global i32 0, align 4
@IMA_APPRAISED = common dso_local global i32 0, align 4
@IMA_APPRAISE_SUBMASK = common dso_local global i32 0, align 4
@IMA_APPRAISED_SUBMASK = common dso_local global i32 0, align 4
@IMA_ACTION_FLAGS = common dso_local global i32 0, align 4
@IMA_CHANGE_XATTR = common dso_local global i32 0, align 4
@SB_I_IMA_UNVERIFIABLE_SIGNATURE = common dso_local global i32 0, align 4
@SB_I_UNTRUSTED_MOUNTER = common dso_local global i32 0, align 4
@IMA_FAIL_UNVERIFIABLE_SIGS = common dso_local global i32 0, align 4
@IMA_DONE_MASK = common dso_local global i32 0, align 4
@IMA_DO_MASK = common dso_local global i32 0, align 4
@IMA_MEASURED = common dso_local global i32 0, align 4
@IMA_HASH = common dso_local global i32 0, align 4
@IMA_DIGSIG = common dso_local global i32 0, align 4
@EVM_IMA_XATTR_DIGSIG = common dso_local global i64 0, align 8
@IMA_HASHED = common dso_local global i32 0, align 4
@IMA_UPDATE_XATTR = common dso_local global i32 0, align 4
@IMA_TEMPLATE_IMA_NAME = common dso_local global i32 0, align 4
@IMA_MODSIG_ALLOWED = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IMA_AUDIT = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@IMA_PERMIT_DIRECTIO = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@IMA_NEW_FILE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ima_appraise = common dso_local global i32 0, align 4
@IMA_APPRAISE_ENFORCE = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.cred*, i32, i8*, i32, i32, i32)* @process_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_measurement(%struct.file* %0, %struct.cred* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.cred*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.integrity_iint_cache*, align 8
  %18 = alloca %struct.ima_template_desc*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.evm_ima_xattr_data*, align 8
  %28 = alloca %struct.modsig*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.cred* %1, %struct.cred** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %33 = load %struct.file*, %struct.file** %9, align 8
  %34 = call %struct.inode* @file_inode(%struct.file* %33)
  store %struct.inode* %34, %struct.inode** %16, align 8
  store %struct.integrity_iint_cache* null, %struct.integrity_iint_cache** %17, align 8
  store %struct.ima_template_desc* null, %struct.ima_template_desc** %18, align 8
  store i8* null, i8** %19, align 8
  %35 = load i32, i32* @NAME_MAX, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %20, align 8
  %38 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %21, align 8
  store i8* null, i8** %22, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %25, align 4
  %39 = load i32, i32* @CONFIG_IMA_MEASURE_PCR_IDX, align 4
  store i32 %39, i32* %26, align 4
  store %struct.evm_ima_xattr_data* null, %struct.evm_ima_xattr_data** %27, align 8
  store %struct.modsig* null, %struct.modsig** %28, align 8
  store i32 0, i32* %29, align 4
  %40 = load i32, i32* @ima_policy_flag, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %7
  %43 = load %struct.inode*, %struct.inode** %16, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @S_ISREG(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42, %7
  store i32 0, i32* %8, align 4
  store i32 1, i32* %32, align 4
  br label %492

49:                                               ; preds = %42
  %50 = load %struct.inode*, %struct.inode** %16, align 8
  %51 = load %struct.cred*, %struct.cred** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @ima_get_action(%struct.inode* %50, %struct.cred* %51, i32 %52, i32 %53, i32 %54, i32* %26, %struct.ima_template_desc** %18)
  store i32 %55, i32* %24, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @FILE_CHECK, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @MMAP_CHECK, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59, %49
  %64 = load i32, i32* @ima_policy_flag, align 4
  %65 = load i32, i32* @IMA_MEASURE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br label %68

68:                                               ; preds = %63, %59
  %69 = phi i1 [ false, %59 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %30, align 4
  %71 = load i32, i32* %24, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %30, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  store i32 0, i32* %8, align 4
  store i32 1, i32* %32, align 4
  br label %492

77:                                               ; preds = %73, %68
  %78 = load i32, i32* %24, align 4
  %79 = load i32, i32* @IMA_APPRAISE, align 4
  %80 = and i32 %78, %79
  store i32 %80, i32* %25, align 4
  %81 = load i32, i32* %24, align 4
  %82 = load i32, i32* @IMA_FILE_APPRAISE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* @FILE_CHECK, align 4
  store i32 %86, i32* %15, align 4
  br label %87

87:                                               ; preds = %85, %77
  %88 = load %struct.inode*, %struct.inode** %16, align 8
  %89 = call i32 @inode_lock(%struct.inode* %88)
  %90 = load i32, i32* %24, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load %struct.inode*, %struct.inode** %16, align 8
  %94 = call %struct.integrity_iint_cache* @integrity_inode_get(%struct.inode* %93)
  store %struct.integrity_iint_cache* %94, %struct.integrity_iint_cache** %17, align 8
  %95 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %96 = icmp ne %struct.integrity_iint_cache* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %23, align 4
  br label %100

100:                                              ; preds = %97, %92
  br label %101

101:                                              ; preds = %100, %87
  %102 = load i32, i32* %23, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %30, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load %struct.file*, %struct.file** %9, align 8
  %109 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %110 = load i32, i32* %24, align 4
  %111 = load i32, i32* @IMA_MEASURE, align 4
  %112 = and i32 %110, %111
  %113 = call i32 @ima_rdwr_violation_check(%struct.file* %108, %struct.integrity_iint_cache* %109, i32 %112, i8** %19, i8** %22, i8* %38)
  br label %114

114:                                              ; preds = %107, %104, %101
  %115 = load %struct.inode*, %struct.inode** %16, align 8
  %116 = call i32 @inode_unlock(%struct.inode* %115)
  %117 = load i32, i32* %23, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %458

120:                                              ; preds = %114
  %121 = load i32, i32* %24, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  br label %458

124:                                              ; preds = %120
  %125 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %126 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %125, i32 0, i32 3
  %127 = call i32 @mutex_lock(i32* %126)
  %128 = load i32, i32* @IMA_CHANGE_ATTR, align 4
  %129 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %130 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %129, i32 0, i32 2
  %131 = call i64 @test_and_clear_bit(i32 %128, i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %124
  %134 = load i32, i32* @IMA_APPRAISE, align 4
  %135 = load i32, i32* @IMA_APPRAISED, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @IMA_APPRAISE_SUBMASK, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @IMA_APPRAISED_SUBMASK, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @IMA_ACTION_FLAGS, align 4
  %142 = or i32 %140, %141
  %143 = xor i32 %142, -1
  %144 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %145 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %133, %124
  %149 = load i32, i32* @IMA_CHANGE_XATTR, align 4
  %150 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %151 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %150, i32 0, i32 2
  %152 = call i64 @test_and_clear_bit(i32 %149, i32* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %177, label %154

154:                                              ; preds = %148
  %155 = load %struct.inode*, %struct.inode** %16, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @SB_I_IMA_UNVERIFIABLE_SIGNATURE, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %186

163:                                              ; preds = %154
  %164 = load %struct.inode*, %struct.inode** %16, align 8
  %165 = getelementptr inbounds %struct.inode, %struct.inode* %164, i32 0, i32 0
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @SB_I_UNTRUSTED_MOUNTER, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %186, label %172

172:                                              ; preds = %163
  %173 = load i32, i32* %24, align 4
  %174 = load i32, i32* @IMA_FAIL_UNVERIFIABLE_SIGS, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %186, label %177

177:                                              ; preds = %172, %148
  %178 = load i32, i32* @IMA_DONE_MASK, align 4
  %179 = xor i32 %178, -1
  %180 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %181 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, %179
  store i32 %183, i32* %181, align 4
  %184 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %185 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %184, i32 0, i32 1
  store i32 0, i32* %185, align 4
  br label %186

186:                                              ; preds = %177, %172, %163, %154
  %187 = load i32, i32* %24, align 4
  %188 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %189 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 4
  %192 = load i32, i32* @IMA_DO_MASK, align 4
  %193 = load i32, i32* %24, align 4
  %194 = and i32 %193, %192
  store i32 %194, i32* %24, align 4
  %195 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %196 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @IMA_DONE_MASK, align 4
  %199 = load i32, i32* @IMA_MEASURED, align 4
  %200 = xor i32 %198, %199
  %201 = and i32 %197, %200
  %202 = ashr i32 %201, 1
  %203 = xor i32 %202, -1
  %204 = load i32, i32* %24, align 4
  %205 = and i32 %204, %203
  store i32 %205, i32* %24, align 4
  %206 = load i32, i32* %24, align 4
  %207 = load i32, i32* @IMA_MEASURE, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %222

210:                                              ; preds = %186
  %211 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %212 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %26, align 4
  %215 = shl i32 1, %214
  %216 = and i32 %213, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %210
  %219 = load i32, i32* @IMA_MEASURE, align 4
  %220 = load i32, i32* %24, align 4
  %221 = xor i32 %220, %219
  store i32 %221, i32* %24, align 4
  br label %222

222:                                              ; preds = %218, %210, %186
  %223 = load i32, i32* %24, align 4
  %224 = load i32, i32* @IMA_HASH, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %266

227:                                              ; preds = %222
  %228 = load i32, i32* @IMA_DIGSIG, align 4
  %229 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %230 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %229, i32 0, i32 2
  %231 = call i64 @test_bit(i32 %228, i32* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %266, label %233

233:                                              ; preds = %227
  %234 = load %struct.file*, %struct.file** %9, align 8
  %235 = call i32 @file_dentry(%struct.file* %234)
  %236 = call i32 @ima_read_xattr(i32 %235, %struct.evm_ima_xattr_data** %27)
  store i32 %236, i32* %29, align 4
  %237 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %27, align 8
  %238 = icmp ne %struct.evm_ima_xattr_data* %237, null
  br i1 %238, label %239, label %253

239:                                              ; preds = %233
  %240 = load i32, i32* %29, align 4
  %241 = icmp sgt i32 %240, 2
  br i1 %241, label %242, label %253

242:                                              ; preds = %239
  %243 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %27, align 8
  %244 = getelementptr inbounds %struct.evm_ima_xattr_data, %struct.evm_ima_xattr_data* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @EVM_IMA_XATTR_DIGSIG, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %242
  %249 = load i32, i32* @IMA_DIGSIG, align 4
  %250 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %251 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %250, i32 0, i32 2
  %252 = call i32 @set_bit(i32 %249, i32* %251)
  br label %253

253:                                              ; preds = %248, %242, %239, %233
  %254 = load i32, i32* @IMA_HASHED, align 4
  %255 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %256 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 4
  %259 = load i32, i32* @IMA_HASH, align 4
  %260 = load i32, i32* %24, align 4
  %261 = xor i32 %260, %259
  store i32 %261, i32* %24, align 4
  %262 = load i32, i32* @IMA_UPDATE_XATTR, align 4
  %263 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %264 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %263, i32 0, i32 2
  %265 = call i32 @set_bit(i32 %262, i32* %264)
  br label %266

266:                                              ; preds = %253, %227, %222
  %267 = load i32, i32* %24, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %284, label %269

269:                                              ; preds = %266
  %270 = load i32, i32* %25, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %283

272:                                              ; preds = %269
  %273 = load i32, i32* %15, align 4
  %274 = load %struct.file*, %struct.file** %9, align 8
  %275 = call i32 @mmap_violation_check(i32 %273, %struct.file* %274, i8** %19, i8** %22, i8* %38)
  store i32 %275, i32* %23, align 4
  %276 = load i32, i32* %23, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %282, label %278

278:                                              ; preds = %272
  %279 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %280 = load i32, i32* %15, align 4
  %281 = call i32 @ima_get_cache_status(%struct.integrity_iint_cache* %279, i32 %280)
  store i32 %281, i32* %23, align 4
  br label %282

282:                                              ; preds = %278, %272
  br label %283

283:                                              ; preds = %282, %269
  br label %429

284:                                              ; preds = %266
  %285 = load i32, i32* %24, align 4
  %286 = load i32, i32* @IMA_APPRAISE_SUBMASK, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %296, label %289

289:                                              ; preds = %284
  %290 = load %struct.ima_template_desc*, %struct.ima_template_desc** %18, align 8
  %291 = getelementptr inbounds %struct.ima_template_desc, %struct.ima_template_desc* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @IMA_TEMPLATE_IMA_NAME, align 4
  %294 = call i64 @strcmp(i32 %292, i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %330

296:                                              ; preds = %289, %284
  %297 = load %struct.file*, %struct.file** %9, align 8
  %298 = call i32 @file_dentry(%struct.file* %297)
  %299 = call i32 @ima_read_xattr(i32 %298, %struct.evm_ima_xattr_data** %27)
  store i32 %299, i32* %29, align 4
  %300 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %301 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @IMA_MODSIG_ALLOWED, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %329

306:                                              ; preds = %296
  %307 = load i32, i32* %15, align 4
  %308 = load i8*, i8** %12, align 8
  %309 = load i32, i32* %13, align 4
  %310 = call i32 @ima_read_modsig(i32 %307, i8* %308, i32 %309, %struct.modsig** %28)
  store i32 %310, i32* %23, align 4
  %311 = load i32, i32* %23, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %328, label %313

313:                                              ; preds = %306
  %314 = load %struct.ima_template_desc*, %struct.ima_template_desc** %18, align 8
  %315 = call i64 @ima_template_has_modsig(%struct.ima_template_desc* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %328

317:                                              ; preds = %313
  %318 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %319 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @IMA_MEASURED, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %317
  %325 = load i32, i32* @IMA_MEASURE, align 4
  %326 = load i32, i32* %24, align 4
  %327 = or i32 %326, %325
  store i32 %327, i32* %24, align 4
  br label %328

328:                                              ; preds = %324, %317, %313, %306
  br label %329

329:                                              ; preds = %328, %296
  br label %330

330:                                              ; preds = %329, %289
  %331 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %27, align 8
  %332 = load i32, i32* %29, align 4
  %333 = call i32 @ima_get_hash_algo(%struct.evm_ima_xattr_data* %331, i32 %332)
  store i32 %333, i32* %31, align 4
  %334 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %335 = load %struct.file*, %struct.file** %9, align 8
  %336 = load i8*, i8** %12, align 8
  %337 = load i32, i32* %13, align 4
  %338 = load i32, i32* %31, align 4
  %339 = load %struct.modsig*, %struct.modsig** %28, align 8
  %340 = call i32 @ima_collect_measurement(%struct.integrity_iint_cache* %334, %struct.file* %335, i8* %336, i32 %337, i32 %338, %struct.modsig* %339)
  store i32 %340, i32* %23, align 4
  %341 = load i32, i32* %23, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %354

343:                                              ; preds = %330
  %344 = load i32, i32* %23, align 4
  %345 = load i32, i32* @EBADF, align 4
  %346 = sub nsw i32 0, %345
  %347 = icmp ne i32 %344, %346
  br i1 %347, label %348, label %354

348:                                              ; preds = %343
  %349 = load i32, i32* %23, align 4
  %350 = load i32, i32* @EINVAL, align 4
  %351 = sub nsw i32 0, %350
  %352 = icmp ne i32 %349, %351
  br i1 %352, label %353, label %354

353:                                              ; preds = %348
  br label %429

354:                                              ; preds = %348, %343, %330
  %355 = load i8*, i8** %19, align 8
  %356 = icmp ne i8* %355, null
  br i1 %356, label %361, label %357

357:                                              ; preds = %354
  %358 = load %struct.file*, %struct.file** %9, align 8
  %359 = getelementptr inbounds %struct.file, %struct.file* %358, i32 0, i32 2
  %360 = call i8* @ima_d_path(i32* %359, i8** %19, i8* %38)
  store i8* %360, i8** %22, align 8
  br label %361

361:                                              ; preds = %357, %354
  %362 = load i32, i32* %24, align 4
  %363 = load i32, i32* @IMA_MEASURE, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %376

366:                                              ; preds = %361
  %367 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %368 = load %struct.file*, %struct.file** %9, align 8
  %369 = load i8*, i8** %22, align 8
  %370 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %27, align 8
  %371 = load i32, i32* %29, align 4
  %372 = load %struct.modsig*, %struct.modsig** %28, align 8
  %373 = load i32, i32* %26, align 4
  %374 = load %struct.ima_template_desc*, %struct.ima_template_desc** %18, align 8
  %375 = call i32 @ima_store_measurement(%struct.integrity_iint_cache* %367, %struct.file* %368, i8* %369, %struct.evm_ima_xattr_data* %370, i32 %371, %struct.modsig* %372, i32 %373, %struct.ima_template_desc* %374)
  br label %376

376:                                              ; preds = %366, %361
  %377 = load i32, i32* %23, align 4
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %404

379:                                              ; preds = %376
  %380 = load i32, i32* %24, align 4
  %381 = load i32, i32* @IMA_APPRAISE_SUBMASK, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %404

384:                                              ; preds = %379
  %385 = load %struct.inode*, %struct.inode** %16, align 8
  %386 = call i32 @inode_lock(%struct.inode* %385)
  %387 = load i32, i32* %15, align 4
  %388 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %389 = load %struct.file*, %struct.file** %9, align 8
  %390 = load i8*, i8** %22, align 8
  %391 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %27, align 8
  %392 = load i32, i32* %29, align 4
  %393 = load %struct.modsig*, %struct.modsig** %28, align 8
  %394 = call i32 @ima_appraise_measurement(i32 %387, %struct.integrity_iint_cache* %388, %struct.file* %389, i8* %390, %struct.evm_ima_xattr_data* %391, i32 %392, %struct.modsig* %393)
  store i32 %394, i32* %23, align 4
  %395 = load %struct.inode*, %struct.inode** %16, align 8
  %396 = call i32 @inode_unlock(%struct.inode* %395)
  %397 = load i32, i32* %23, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %403, label %399

399:                                              ; preds = %384
  %400 = load i32, i32* %15, align 4
  %401 = load %struct.file*, %struct.file** %9, align 8
  %402 = call i32 @mmap_violation_check(i32 %400, %struct.file* %401, i8** %19, i8** %22, i8* %38)
  store i32 %402, i32* %23, align 4
  br label %403

403:                                              ; preds = %399, %384
  br label %404

404:                                              ; preds = %403, %379, %376
  %405 = load i32, i32* %24, align 4
  %406 = load i32, i32* @IMA_AUDIT, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %413

409:                                              ; preds = %404
  %410 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %411 = load i8*, i8** %22, align 8
  %412 = call i32 @ima_audit_measurement(%struct.integrity_iint_cache* %410, i8* %411)
  br label %413

413:                                              ; preds = %409, %404
  %414 = load %struct.file*, %struct.file** %9, align 8
  %415 = getelementptr inbounds %struct.file, %struct.file* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* @O_DIRECT, align 4
  %418 = and i32 %416, %417
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %428

420:                                              ; preds = %413
  %421 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %422 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* @IMA_PERMIT_DIRECTIO, align 4
  %425 = and i32 %423, %424
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %428

427:                                              ; preds = %420
  store i32 0, i32* %23, align 4
  br label %428

428:                                              ; preds = %427, %420, %413
  br label %429

429:                                              ; preds = %428, %353, %283
  %430 = load i32, i32* %14, align 4
  %431 = load i32, i32* @MAY_WRITE, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %450

434:                                              ; preds = %429
  %435 = load i32, i32* @IMA_DIGSIG, align 4
  %436 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %437 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %436, i32 0, i32 2
  %438 = call i64 @test_bit(i32 %435, i32* %437)
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %450

440:                                              ; preds = %434
  %441 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %442 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 4
  %444 = load i32, i32* @IMA_NEW_FILE, align 4
  %445 = and i32 %443, %444
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %450, label %447

447:                                              ; preds = %440
  %448 = load i32, i32* @EACCES, align 4
  %449 = sub nsw i32 0, %448
  store i32 %449, i32* %23, align 4
  br label %450

450:                                              ; preds = %447, %440, %434, %429
  %451 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %452 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %451, i32 0, i32 3
  %453 = call i32 @mutex_unlock(i32* %452)
  %454 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %27, align 8
  %455 = call i32 @kfree(%struct.evm_ima_xattr_data* %454)
  %456 = load %struct.modsig*, %struct.modsig** %28, align 8
  %457 = call i32 @ima_free_modsig(%struct.modsig* %456)
  br label %458

458:                                              ; preds = %450, %123, %119
  %459 = load i8*, i8** %19, align 8
  %460 = icmp ne i8* %459, null
  br i1 %460, label %461, label %464

461:                                              ; preds = %458
  %462 = load i8*, i8** %19, align 8
  %463 = call i32 @__putname(i8* %462)
  br label %464

464:                                              ; preds = %461, %458
  %465 = load i32, i32* %25, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %491

467:                                              ; preds = %464
  %468 = load i32, i32* %23, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %478

470:                                              ; preds = %467
  %471 = load i32, i32* @ima_appraise, align 4
  %472 = load i32, i32* @IMA_APPRAISE_ENFORCE, align 4
  %473 = and i32 %471, %472
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %478

475:                                              ; preds = %470
  %476 = load i32, i32* @EACCES, align 4
  %477 = sub nsw i32 0, %476
  store i32 %477, i32* %8, align 4
  store i32 1, i32* %32, align 4
  br label %492

478:                                              ; preds = %470, %467
  %479 = load %struct.file*, %struct.file** %9, align 8
  %480 = getelementptr inbounds %struct.file, %struct.file* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 4
  %482 = load i32, i32* @FMODE_WRITE, align 4
  %483 = and i32 %481, %482
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %490

485:                                              ; preds = %478
  %486 = load i32, i32* @IMA_UPDATE_XATTR, align 4
  %487 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %17, align 8
  %488 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %487, i32 0, i32 2
  %489 = call i32 @set_bit(i32 %486, i32* %488)
  br label %490

490:                                              ; preds = %485, %478
  br label %491

491:                                              ; preds = %490, %464
  store i32 0, i32* %8, align 4
  store i32 1, i32* %32, align 4
  br label %492

492:                                              ; preds = %491, %475, %76, %48
  %493 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %493)
  %494 = load i32, i32* %8, align 4
  ret i32 %494
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @ima_get_action(%struct.inode*, %struct.cred*, i32, i32, i32, i32*, %struct.ima_template_desc**) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local %struct.integrity_iint_cache* @integrity_inode_get(%struct.inode*) #1

declare dso_local i32 @ima_rdwr_violation_check(%struct.file*, %struct.integrity_iint_cache*, i32, i8**, i8**, i8*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ima_read_xattr(i32, %struct.evm_ima_xattr_data**) #1

declare dso_local i32 @file_dentry(%struct.file*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mmap_violation_check(i32, %struct.file*, i8**, i8**, i8*) #1

declare dso_local i32 @ima_get_cache_status(%struct.integrity_iint_cache*, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @ima_read_modsig(i32, i8*, i32, %struct.modsig**) #1

declare dso_local i64 @ima_template_has_modsig(%struct.ima_template_desc*) #1

declare dso_local i32 @ima_get_hash_algo(%struct.evm_ima_xattr_data*, i32) #1

declare dso_local i32 @ima_collect_measurement(%struct.integrity_iint_cache*, %struct.file*, i8*, i32, i32, %struct.modsig*) #1

declare dso_local i8* @ima_d_path(i32*, i8**, i8*) #1

declare dso_local i32 @ima_store_measurement(%struct.integrity_iint_cache*, %struct.file*, i8*, %struct.evm_ima_xattr_data*, i32, %struct.modsig*, i32, %struct.ima_template_desc*) #1

declare dso_local i32 @ima_appraise_measurement(i32, %struct.integrity_iint_cache*, %struct.file*, i8*, %struct.evm_ima_xattr_data*, i32, %struct.modsig*) #1

declare dso_local i32 @ima_audit_measurement(%struct.integrity_iint_cache*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.evm_ima_xattr_data*) #1

declare dso_local i32 @ima_free_modsig(%struct.modsig*) #1

declare dso_local i32 @__putname(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
