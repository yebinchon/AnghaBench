; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_policy.c_ima_parse_rule.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_policy.c_ima_parse_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ima_rule_entry = type { i64, i32, i64, %struct.ima_template_desc*, i8*, i32, i8*, i32*, i8*, i32*, i32, i32, i32 }
%struct.ima_template_desc = type { i32, i32, i32 }
%struct.audit_buffer = type { i32 }
%struct.TYPE_4__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@AUDIT_INTEGRITY_POLICY_RULE = common dso_local global i32 0, align 4
@INVALID_UID = common dso_local global i8* null, align 8
@uid_eq = common dso_local global i32 0, align 4
@UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@policy_tokens = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"measure\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MEASURE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"dont_measure\00", align 1
@DONT_MEASURE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"appraise\00", align 1
@APPRAISE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"dont_appraise\00", align 1
@DONT_APPRAISE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"audit\00", align 1
@AUDIT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@HASH = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"dont_hash\00", align 1
@DONT_HASH = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"FILE_CHECK\00", align 1
@FILE_CHECK = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"PATH_CHECK\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"MODULE_CHECK\00", align 1
@MODULE_CHECK = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [15 x i8] c"FIRMWARE_CHECK\00", align 1
@FIRMWARE_CHECK = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [10 x i8] c"FILE_MMAP\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"MMAP_CHECK\00", align 1
@MMAP_CHECK = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [11 x i8] c"BPRM_CHECK\00", align 1
@BPRM_CHECK = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [12 x i8] c"CREDS_CHECK\00", align 1
@CREDS_CHECK = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [19 x i8] c"KEXEC_KERNEL_CHECK\00", align 1
@KEXEC_KERNEL_CHECK = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [22 x i8] c"KEXEC_INITRAMFS_CHECK\00", align 1
@KEXEC_INITRAMFS_CHECK = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [13 x i8] c"POLICY_CHECK\00", align 1
@POLICY_CHECK = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [14 x i8] c"KEXEC_CMDLINE\00", align 1
@KEXEC_CMDLINE = common dso_local global i8* null, align 8
@IMA_FUNC = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"MAY_EXEC\00", align 1
@MAY_EXEC = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [10 x i8] c"MAY_WRITE\00", align 1
@MAY_WRITE = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [9 x i8] c"MAY_READ\00", align 1
@MAY_READ = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [11 x i8] c"MAY_APPEND\00", align 1
@MAY_APPEND = common dso_local global i32 0, align 4
@IMA_INMASK = common dso_local global i32 0, align 4
@IMA_MASK = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [8 x i8] c"fsmagic\00", align 1
@IMA_FSMAGIC = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [7 x i8] c"fsname\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IMA_FSNAME = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [7 x i8] c"fsuuid\00", align 1
@IMA_FSUUID = common dso_local global i32 0, align 4
@uid_gt = common dso_local global i32 0, align 4
@uid_lt = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"euid\00", align 1
@IMA_UID = common dso_local global i32 0, align 4
@IMA_EUID = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [7 x i8] c"fowner\00", align 1
@IMA_FOWNER = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [9 x i8] c"obj_user\00", align 1
@LSM_OBJ_USER = common dso_local global i32 0, align 4
@AUDIT_OBJ_USER = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [9 x i8] c"obj_role\00", align 1
@LSM_OBJ_ROLE = common dso_local global i32 0, align 4
@AUDIT_OBJ_ROLE = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [9 x i8] c"obj_type\00", align 1
@LSM_OBJ_TYPE = common dso_local global i32 0, align 4
@AUDIT_OBJ_TYPE = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [10 x i8] c"subj_user\00", align 1
@LSM_SUBJ_USER = common dso_local global i32 0, align 4
@AUDIT_SUBJ_USER = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [10 x i8] c"subj_role\00", align 1
@LSM_SUBJ_ROLE = common dso_local global i32 0, align 4
@AUDIT_SUBJ_ROLE = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [10 x i8] c"subj_type\00", align 1
@LSM_SUBJ_TYPE = common dso_local global i32 0, align 4
@AUDIT_SUBJ_TYPE = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [14 x i8] c"appraise_type\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"imasig\00", align 1
@IMA_DIGSIG_REQUIRED = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [14 x i8] c"imasig|modsig\00", align 1
@IMA_MODSIG_ALLOWED = common dso_local global i32 0, align 4
@IMA_PERMIT_DIRECTIO = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [4 x i8] c"pcr\00", align 1
@IMA_PCR = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [9 x i8] c"template\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@temp_ima_appraise = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [7 x i8] c"res=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ima_rule_entry*)* @ima_parse_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ima_parse_rule(i8* %0, %struct.ima_rule_entry* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ima_rule_entry*, align 8
  %5 = alloca %struct.audit_buffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ima_template_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.ima_rule_entry* %1, %struct.ima_rule_entry** %4, align 8
  store i32 0, i32* %10, align 4
  %16 = call i32 (...) @audit_context()
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load i32, i32* @AUDIT_INTEGRITY_POLICY_RULE, align 4
  %19 = call %struct.audit_buffer* @integrity_audit_log_start(i32 %16, i32 %17, i32 %18)
  store %struct.audit_buffer* %19, %struct.audit_buffer** %5, align 8
  %20 = load i8*, i8** @INVALID_UID, align 8
  %21 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %22 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %21, i32 0, i32 8
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @INVALID_UID, align 8
  %24 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %25 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %24, i32 0, i32 6
  store i8* %23, i8** %25, align 8
  %26 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %27 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %26, i32 0, i32 9
  store i32* @uid_eq, i32** %27, align 8
  %28 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %29 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %28, i32 0, i32 7
  store i32* @uid_eq, i32** %29, align 8
  %30 = load i64, i64* @UNKNOWN, align 8
  %31 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %32 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %841, %838, %2
  %34 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %34, i8** %7, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %842

36:                                               ; preds = %33
  %37 = load i32, i32* @MAX_OPT_ARGS, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %11, align 8
  %40 = alloca %struct.TYPE_4__, i64 %38, align 16
  store i64 %38, i64* %12, align 8
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 3, i32* %15, align 4
  br label %838

44:                                               ; preds = %36
  %45 = load i8*, i8** %7, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** %7, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 32
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** %7, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 9
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %49, %44
  store i32 2, i32* %15, align 4
  br label %838

60:                                               ; preds = %54
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* @policy_tokens, align 4
  %63 = call i32 @match_token(i8* %61, i32 %62, %struct.TYPE_4__* %40)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  switch i32 %64, label %837 [
    i32 140, label %65
    i32 154, label %80
    i32 159, label %95
    i32 156, label %110
    i32 157, label %125
    i32 142, label %140
    i32 155, label %155
    i32 143, label %170
    i32 141, label %322
    i32 146, label %405
    i32 145, label %434
    i32 144, label %460
    i32 129, label %489
    i32 151, label %489
    i32 128, label %492
    i32 150, label %492
    i32 130, label %502
    i32 152, label %502
    i32 148, label %574
    i32 147, label %577
    i32 149, label %584
    i32 137, label %634
    i32 139, label %644
    i32 138, label %654
    i32 132, label %664
    i32 134, label %674
    i32 133, label %684
    i32 158, label %694
    i32 135, label %745
    i32 136, label %751
    i32 131, label %790
    i32 153, label %831
  ]

65:                                               ; preds = %60
  %66 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %67 = call i32 @ima_log_string(%struct.audit_buffer* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %69 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @UNKNOWN, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %73, %65
  %77 = load i64, i64* @MEASURE, align 8
  %78 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %79 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %837

80:                                               ; preds = %60
  %81 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %82 = call i32 @ima_log_string(%struct.audit_buffer* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %84 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @UNKNOWN, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %88, %80
  %92 = load i64, i64* @DONT_MEASURE, align 8
  %93 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %94 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %837

95:                                               ; preds = %60
  %96 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %97 = call i32 @ima_log_string(%struct.audit_buffer* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %98 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %99 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @UNKNOWN, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %103, %95
  %107 = load i64, i64* @APPRAISE, align 8
  %108 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %109 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %837

110:                                              ; preds = %60
  %111 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %112 = call i32 @ima_log_string(%struct.audit_buffer* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %113 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %114 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @UNKNOWN, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %118, %110
  %122 = load i64, i64* @DONT_APPRAISE, align 8
  %123 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %124 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  br label %837

125:                                              ; preds = %60
  %126 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %127 = call i32 @ima_log_string(%struct.audit_buffer* %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %128 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %129 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @UNKNOWN, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %125
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %10, align 4
  br label %136

136:                                              ; preds = %133, %125
  %137 = load i64, i64* @AUDIT, align 8
  %138 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %139 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  br label %837

140:                                              ; preds = %60
  %141 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %142 = call i32 @ima_log_string(%struct.audit_buffer* %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %143 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %144 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @UNKNOWN, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %140
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %10, align 4
  br label %151

151:                                              ; preds = %148, %140
  %152 = load i64, i64* @HASH, align 8
  %153 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %154 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  br label %837

155:                                              ; preds = %60
  %156 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %157 = call i32 @ima_log_string(%struct.audit_buffer* %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %158 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %159 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @UNKNOWN, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %155
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %10, align 4
  br label %166

166:                                              ; preds = %163, %155
  %167 = load i64, i64* @DONT_HASH, align 8
  %168 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %169 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  br label %837

170:                                              ; preds = %60
  %171 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 16
  %175 = call i32 @ima_log_string(%struct.audit_buffer* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %174)
  %176 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %177 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %176, i32 0, i32 4
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %170
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %10, align 4
  br label %183

183:                                              ; preds = %180, %170
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 16
  %187 = call i32 @strcmp(i8* %186, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %183
  %190 = load i8*, i8** @FILE_CHECK, align 8
  %191 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %192 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %191, i32 0, i32 4
  store i8* %190, i8** %192, align 8
  br label %312

193:                                              ; preds = %183
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 16
  %197 = call i32 @strcmp(i8* %196, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %193
  %200 = load i8*, i8** @FILE_CHECK, align 8
  %201 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %202 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %201, i32 0, i32 4
  store i8* %200, i8** %202, align 8
  br label %311

203:                                              ; preds = %193
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 16
  %207 = call i32 @strcmp(i8* %206, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %203
  %210 = load i8*, i8** @MODULE_CHECK, align 8
  %211 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %212 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %211, i32 0, i32 4
  store i8* %210, i8** %212, align 8
  br label %310

213:                                              ; preds = %203
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 16
  %217 = call i32 @strcmp(i8* %216, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %213
  %220 = load i8*, i8** @FIRMWARE_CHECK, align 8
  %221 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %222 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %221, i32 0, i32 4
  store i8* %220, i8** %222, align 8
  br label %309

223:                                              ; preds = %213
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 16
  %227 = call i32 @strcmp(i8* %226, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %235, label %229

229:                                              ; preds = %223
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 16
  %233 = call i32 @strcmp(i8* %232, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %229, %223
  %236 = load i8*, i8** @MMAP_CHECK, align 8
  %237 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %238 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %237, i32 0, i32 4
  store i8* %236, i8** %238, align 8
  br label %308

239:                                              ; preds = %229
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 16
  %243 = call i32 @strcmp(i8* %242, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %239
  %246 = load i8*, i8** @BPRM_CHECK, align 8
  %247 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %248 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %247, i32 0, i32 4
  store i8* %246, i8** %248, align 8
  br label %307

249:                                              ; preds = %239
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 16
  %253 = call i32 @strcmp(i8* %252, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %249
  %256 = load i8*, i8** @CREDS_CHECK, align 8
  %257 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %258 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %257, i32 0, i32 4
  store i8* %256, i8** %258, align 8
  br label %306

259:                                              ; preds = %249
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  %262 = load i8*, i8** %261, align 16
  %263 = call i32 @strcmp(i8* %262, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0))
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %259
  %266 = load i8*, i8** @KEXEC_KERNEL_CHECK, align 8
  %267 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %268 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %267, i32 0, i32 4
  store i8* %266, i8** %268, align 8
  br label %305

269:                                              ; preds = %259
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 16
  %273 = call i32 @strcmp(i8* %272, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %269
  %276 = load i8*, i8** @KEXEC_INITRAMFS_CHECK, align 8
  %277 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %278 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %277, i32 0, i32 4
  store i8* %276, i8** %278, align 8
  br label %304

279:                                              ; preds = %269
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 0
  %282 = load i8*, i8** %281, align 16
  %283 = call i32 @strcmp(i8* %282, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %279
  %286 = load i8*, i8** @POLICY_CHECK, align 8
  %287 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %288 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %287, i32 0, i32 4
  store i8* %286, i8** %288, align 8
  br label %303

289:                                              ; preds = %279
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 0
  %292 = load i8*, i8** %291, align 16
  %293 = call i32 @strcmp(i8* %292, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0))
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %289
  %296 = load i8*, i8** @KEXEC_CMDLINE, align 8
  %297 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %298 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %297, i32 0, i32 4
  store i8* %296, i8** %298, align 8
  br label %302

299:                                              ; preds = %289
  %300 = load i32, i32* @EINVAL, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %10, align 4
  br label %302

302:                                              ; preds = %299, %295
  br label %303

303:                                              ; preds = %302, %285
  br label %304

304:                                              ; preds = %303, %275
  br label %305

305:                                              ; preds = %304, %265
  br label %306

306:                                              ; preds = %305, %255
  br label %307

307:                                              ; preds = %306, %245
  br label %308

308:                                              ; preds = %307, %235
  br label %309

309:                                              ; preds = %308, %219
  br label %310

310:                                              ; preds = %309, %209
  br label %311

311:                                              ; preds = %310, %199
  br label %312

312:                                              ; preds = %311, %189
  %313 = load i32, i32* %10, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %321, label %315

315:                                              ; preds = %312
  %316 = load i32, i32* @IMA_FUNC, align 4
  %317 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %318 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = or i32 %319, %316
  store i32 %320, i32* %318, align 8
  br label %321

321:                                              ; preds = %315, %312
  br label %837

322:                                              ; preds = %60
  %323 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 0
  %326 = load i8*, i8** %325, align 16
  %327 = call i32 @ima_log_string(%struct.audit_buffer* %323, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* %326)
  %328 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %329 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %328, i32 0, i32 12
  %330 = load i32, i32* %329, align 8
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %322
  %333 = load i32, i32* @EINVAL, align 4
  %334 = sub nsw i32 0, %333
  store i32 %334, i32* %10, align 4
  br label %335

335:                                              ; preds = %332, %322
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 0
  %338 = load i8*, i8** %337, align 16
  store i8* %338, i8** %6, align 8
  %339 = load i8*, i8** %6, align 8
  %340 = load i8, i8* %339, align 1
  %341 = sext i8 %340 to i32
  %342 = icmp eq i32 %341, 94
  br i1 %342, label %343, label %346

343:                                              ; preds = %335
  %344 = load i8*, i8** %6, align 8
  %345 = getelementptr inbounds i8, i8* %344, i32 1
  store i8* %345, i8** %6, align 8
  br label %346

346:                                              ; preds = %343, %335
  %347 = load i8*, i8** %6, align 8
  %348 = call i32 @strcmp(i8* %347, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %346
  %351 = load i32, i32* @MAY_EXEC, align 4
  %352 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %353 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %352, i32 0, i32 12
  store i32 %351, i32* %353, align 8
  br label %384

354:                                              ; preds = %346
  %355 = load i8*, i8** %6, align 8
  %356 = call i32 @strcmp(i8* %355, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %362

358:                                              ; preds = %354
  %359 = load i32, i32* @MAY_WRITE, align 4
  %360 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %361 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %360, i32 0, i32 12
  store i32 %359, i32* %361, align 8
  br label %383

362:                                              ; preds = %354
  %363 = load i8*, i8** %6, align 8
  %364 = call i32 @strcmp(i8* %363, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %370

366:                                              ; preds = %362
  %367 = load i32, i32* @MAY_READ, align 4
  %368 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %369 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %368, i32 0, i32 12
  store i32 %367, i32* %369, align 8
  br label %382

370:                                              ; preds = %362
  %371 = load i8*, i8** %6, align 8
  %372 = call i32 @strcmp(i8* %371, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0))
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %378

374:                                              ; preds = %370
  %375 = load i32, i32* @MAY_APPEND, align 4
  %376 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %377 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %376, i32 0, i32 12
  store i32 %375, i32* %377, align 8
  br label %381

378:                                              ; preds = %370
  %379 = load i32, i32* @EINVAL, align 4
  %380 = sub nsw i32 0, %379
  store i32 %380, i32* %10, align 4
  br label %381

381:                                              ; preds = %378, %374
  br label %382

382:                                              ; preds = %381, %366
  br label %383

383:                                              ; preds = %382, %358
  br label %384

384:                                              ; preds = %383, %350
  %385 = load i32, i32* %10, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %404, label %387

387:                                              ; preds = %384
  %388 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 0
  %390 = load i8*, i8** %389, align 16
  %391 = load i8, i8* %390, align 1
  %392 = sext i8 %391 to i32
  %393 = icmp eq i32 %392, 94
  br i1 %393, label %394, label %396

394:                                              ; preds = %387
  %395 = load i32, i32* @IMA_INMASK, align 4
  br label %398

396:                                              ; preds = %387
  %397 = load i32, i32* @IMA_MASK, align 4
  br label %398

398:                                              ; preds = %396, %394
  %399 = phi i32 [ %395, %394 ], [ %397, %396 ]
  %400 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %401 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 8
  %403 = or i32 %402, %399
  store i32 %403, i32* %401, align 8
  br label %404

404:                                              ; preds = %398, %384
  br label %837

405:                                              ; preds = %60
  %406 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %407 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %408 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i32 0, i32 0
  %409 = load i8*, i8** %408, align 16
  %410 = call i32 @ima_log_string(%struct.audit_buffer* %406, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* %409)
  %411 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %412 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %411, i32 0, i32 2
  %413 = load i64, i64* %412, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %418

415:                                              ; preds = %405
  %416 = load i32, i32* @EINVAL, align 4
  %417 = sub nsw i32 0, %416
  store i32 %417, i32* %10, align 4
  br label %837

418:                                              ; preds = %405
  %419 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i32 0, i32 0
  %421 = load i8*, i8** %420, align 16
  %422 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %423 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %422, i32 0, i32 2
  %424 = call i32 @kstrtoul(i8* %421, i32 16, i64* %423)
  store i32 %424, i32* %10, align 4
  %425 = load i32, i32* %10, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %433, label %427

427:                                              ; preds = %418
  %428 = load i32, i32* @IMA_FSMAGIC, align 4
  %429 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %430 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 8
  %432 = or i32 %431, %428
  store i32 %432, i32* %430, align 8
  br label %433

433:                                              ; preds = %427, %418
  br label %837

434:                                              ; preds = %60
  %435 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %436 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %436, i32 0, i32 0
  %438 = load i8*, i8** %437, align 16
  %439 = call i32 @ima_log_string(%struct.audit_buffer* %435, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* %438)
  %440 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %441 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %440, i32 0, i32 0
  %442 = load i8*, i8** %441, align 16
  %443 = load i32, i32* @GFP_KERNEL, align 4
  %444 = call i32 @kstrdup(i8* %442, i32 %443)
  %445 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %446 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %445, i32 0, i32 11
  store i32 %444, i32* %446, align 4
  %447 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %448 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %447, i32 0, i32 11
  %449 = load i32, i32* %448, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %454, label %451

451:                                              ; preds = %434
  %452 = load i32, i32* @ENOMEM, align 4
  %453 = sub nsw i32 0, %452
  store i32 %453, i32* %10, align 4
  br label %837

454:                                              ; preds = %434
  store i32 0, i32* %10, align 4
  %455 = load i32, i32* @IMA_FSNAME, align 4
  %456 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %457 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %456, i32 0, i32 1
  %458 = load i32, i32* %457, align 8
  %459 = or i32 %458, %455
  store i32 %459, i32* %457, align 8
  br label %837

460:                                              ; preds = %60
  %461 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %462 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %463 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %462, i32 0, i32 0
  %464 = load i8*, i8** %463, align 16
  %465 = call i32 @ima_log_string(%struct.audit_buffer* %461, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8* %464)
  %466 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %467 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %466, i32 0, i32 10
  %468 = call i32 @uuid_is_null(i32* %467)
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %473, label %470

470:                                              ; preds = %460
  %471 = load i32, i32* @EINVAL, align 4
  %472 = sub nsw i32 0, %471
  store i32 %472, i32* %10, align 4
  br label %837

473:                                              ; preds = %460
  %474 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %475 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %474, i32 0, i32 0
  %476 = load i8*, i8** %475, align 16
  %477 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %478 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %477, i32 0, i32 10
  %479 = call i32 @uuid_parse(i8* %476, i32* %478)
  store i32 %479, i32* %10, align 4
  %480 = load i32, i32* %10, align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %488, label %482

482:                                              ; preds = %473
  %483 = load i32, i32* @IMA_FSUUID, align 4
  %484 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %485 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 8
  %487 = or i32 %486, %483
  store i32 %487, i32* %485, align 8
  br label %488

488:                                              ; preds = %482, %473
  br label %837

489:                                              ; preds = %60, %60
  %490 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %491 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %490, i32 0, i32 9
  store i32* @uid_gt, i32** %491, align 8
  br label %492

492:                                              ; preds = %60, %60, %489
  %493 = load i32, i32* %13, align 4
  %494 = icmp eq i32 %493, 128
  br i1 %494, label %498, label %495

495:                                              ; preds = %492
  %496 = load i32, i32* %13, align 4
  %497 = icmp eq i32 %496, 150
  br i1 %497, label %498, label %501

498:                                              ; preds = %495, %492
  %499 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %500 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %499, i32 0, i32 9
  store i32* @uid_lt, i32** %500, align 8
  br label %501

501:                                              ; preds = %498, %495
  br label %502

502:                                              ; preds = %60, %60, %501
  %503 = load i32, i32* %13, align 4
  %504 = icmp eq i32 %503, 130
  br i1 %504, label %511, label %505

505:                                              ; preds = %502
  %506 = load i32, i32* %13, align 4
  %507 = icmp eq i32 %506, 129
  br i1 %507, label %511, label %508

508:                                              ; preds = %505
  %509 = load i32, i32* %13, align 4
  %510 = icmp eq i32 %509, 128
  br label %511

511:                                              ; preds = %508, %505, %502
  %512 = phi i1 [ true, %505 ], [ true, %502 ], [ %510, %508 ]
  %513 = zext i1 %512 to i32
  store i32 %513, i32* %8, align 4
  %514 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %515 = load i32, i32* %8, align 4
  %516 = icmp ne i32 %515, 0
  %517 = zext i1 %516 to i64
  %518 = select i1 %516, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0)
  %519 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %520 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %519, i32 0, i32 0
  %521 = load i8*, i8** %520, align 16
  %522 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %523 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %522, i32 0, i32 9
  %524 = load i32*, i32** %523, align 8
  %525 = call i32 @ima_log_string_op(%struct.audit_buffer* %514, i8* %518, i8* %521, i32* %524)
  %526 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %527 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %526, i32 0, i32 8
  %528 = load i8*, i8** %527, align 8
  %529 = call i32 @uid_valid(i8* %528)
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %534

531:                                              ; preds = %511
  %532 = load i32, i32* @EINVAL, align 4
  %533 = sub nsw i32 0, %532
  store i32 %533, i32* %10, align 4
  br label %837

534:                                              ; preds = %511
  %535 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %536 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %535, i32 0, i32 0
  %537 = load i8*, i8** %536, align 16
  %538 = call i32 @kstrtoul(i8* %537, i32 10, i64* %14)
  store i32 %538, i32* %10, align 4
  %539 = load i32, i32* %10, align 4
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %573, label %541

541:                                              ; preds = %534
  %542 = call i32 (...) @current_user_ns()
  %543 = load i64, i64* %14, align 8
  %544 = call i8* @make_kuid(i32 %542, i64 %543)
  %545 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %546 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %545, i32 0, i32 8
  store i8* %544, i8** %546, align 8
  %547 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %548 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %547, i32 0, i32 8
  %549 = load i8*, i8** %548, align 8
  %550 = call i32 @uid_valid(i8* %549)
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %556

552:                                              ; preds = %541
  %553 = load i64, i64* %14, align 8
  %554 = load i64, i64* %14, align 8
  %555 = icmp ne i64 %553, %554
  br i1 %555, label %556, label %559

556:                                              ; preds = %552, %541
  %557 = load i32, i32* @EINVAL, align 4
  %558 = sub nsw i32 0, %557
  store i32 %558, i32* %10, align 4
  br label %572

559:                                              ; preds = %552
  %560 = load i32, i32* %8, align 4
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %562, label %564

562:                                              ; preds = %559
  %563 = load i32, i32* @IMA_UID, align 4
  br label %566

564:                                              ; preds = %559
  %565 = load i32, i32* @IMA_EUID, align 4
  br label %566

566:                                              ; preds = %564, %562
  %567 = phi i32 [ %563, %562 ], [ %565, %564 ]
  %568 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %569 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %568, i32 0, i32 1
  %570 = load i32, i32* %569, align 8
  %571 = or i32 %570, %567
  store i32 %571, i32* %569, align 8
  br label %572

572:                                              ; preds = %566, %556
  br label %573

573:                                              ; preds = %572, %534
  br label %837

574:                                              ; preds = %60
  %575 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %576 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %575, i32 0, i32 7
  store i32* @uid_gt, i32** %576, align 8
  br label %577

577:                                              ; preds = %60, %574
  %578 = load i32, i32* %13, align 4
  %579 = icmp eq i32 %578, 147
  br i1 %579, label %580, label %583

580:                                              ; preds = %577
  %581 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %582 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %581, i32 0, i32 7
  store i32* @uid_lt, i32** %582, align 8
  br label %583

583:                                              ; preds = %580, %577
  br label %584

584:                                              ; preds = %60, %583
  %585 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %586 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %587 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %586, i32 0, i32 0
  %588 = load i8*, i8** %587, align 16
  %589 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %590 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %589, i32 0, i32 7
  %591 = load i32*, i32** %590, align 8
  %592 = call i32 @ima_log_string_op(%struct.audit_buffer* %585, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i8* %588, i32* %591)
  %593 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %594 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %593, i32 0, i32 6
  %595 = load i8*, i8** %594, align 8
  %596 = call i32 @uid_valid(i8* %595)
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %598, label %601

598:                                              ; preds = %584
  %599 = load i32, i32* @EINVAL, align 4
  %600 = sub nsw i32 0, %599
  store i32 %600, i32* %10, align 4
  br label %837

601:                                              ; preds = %584
  %602 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %603 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %602, i32 0, i32 0
  %604 = load i8*, i8** %603, align 16
  %605 = call i32 @kstrtoul(i8* %604, i32 10, i64* %14)
  store i32 %605, i32* %10, align 4
  %606 = load i32, i32* %10, align 4
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %633, label %608

608:                                              ; preds = %601
  %609 = call i32 (...) @current_user_ns()
  %610 = load i64, i64* %14, align 8
  %611 = call i8* @make_kuid(i32 %609, i64 %610)
  %612 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %613 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %612, i32 0, i32 6
  store i8* %611, i8** %613, align 8
  %614 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %615 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %614, i32 0, i32 6
  %616 = load i8*, i8** %615, align 8
  %617 = call i32 @uid_valid(i8* %616)
  %618 = icmp ne i32 %617, 0
  br i1 %618, label %619, label %623

619:                                              ; preds = %608
  %620 = load i64, i64* %14, align 8
  %621 = load i64, i64* %14, align 8
  %622 = icmp ne i64 %620, %621
  br i1 %622, label %623, label %626

623:                                              ; preds = %619, %608
  %624 = load i32, i32* @EINVAL, align 4
  %625 = sub nsw i32 0, %624
  store i32 %625, i32* %10, align 4
  br label %632

626:                                              ; preds = %619
  %627 = load i32, i32* @IMA_FOWNER, align 4
  %628 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %629 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %628, i32 0, i32 1
  %630 = load i32, i32* %629, align 8
  %631 = or i32 %630, %627
  store i32 %631, i32* %629, align 8
  br label %632

632:                                              ; preds = %626, %623
  br label %633

633:                                              ; preds = %632, %601
  br label %837

634:                                              ; preds = %60
  %635 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %636 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %637 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %636, i32 0, i32 0
  %638 = load i8*, i8** %637, align 16
  %639 = call i32 @ima_log_string(%struct.audit_buffer* %635, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i8* %638)
  %640 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %641 = load i32, i32* @LSM_OBJ_USER, align 4
  %642 = load i32, i32* @AUDIT_OBJ_USER, align 4
  %643 = call i32 @ima_lsm_rule_init(%struct.ima_rule_entry* %640, %struct.TYPE_4__* %40, i32 %641, i32 %642)
  store i32 %643, i32* %10, align 4
  br label %837

644:                                              ; preds = %60
  %645 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %646 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %647 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %646, i32 0, i32 0
  %648 = load i8*, i8** %647, align 16
  %649 = call i32 @ima_log_string(%struct.audit_buffer* %645, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8* %648)
  %650 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %651 = load i32, i32* @LSM_OBJ_ROLE, align 4
  %652 = load i32, i32* @AUDIT_OBJ_ROLE, align 4
  %653 = call i32 @ima_lsm_rule_init(%struct.ima_rule_entry* %650, %struct.TYPE_4__* %40, i32 %651, i32 %652)
  store i32 %653, i32* %10, align 4
  br label %837

654:                                              ; preds = %60
  %655 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %656 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %657 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %656, i32 0, i32 0
  %658 = load i8*, i8** %657, align 16
  %659 = call i32 @ima_log_string(%struct.audit_buffer* %655, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i8* %658)
  %660 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %661 = load i32, i32* @LSM_OBJ_TYPE, align 4
  %662 = load i32, i32* @AUDIT_OBJ_TYPE, align 4
  %663 = call i32 @ima_lsm_rule_init(%struct.ima_rule_entry* %660, %struct.TYPE_4__* %40, i32 %661, i32 %662)
  store i32 %663, i32* %10, align 4
  br label %837

664:                                              ; preds = %60
  %665 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %666 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %667 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %666, i32 0, i32 0
  %668 = load i8*, i8** %667, align 16
  %669 = call i32 @ima_log_string(%struct.audit_buffer* %665, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i8* %668)
  %670 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %671 = load i32, i32* @LSM_SUBJ_USER, align 4
  %672 = load i32, i32* @AUDIT_SUBJ_USER, align 4
  %673 = call i32 @ima_lsm_rule_init(%struct.ima_rule_entry* %670, %struct.TYPE_4__* %40, i32 %671, i32 %672)
  store i32 %673, i32* %10, align 4
  br label %837

674:                                              ; preds = %60
  %675 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %676 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %677 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %676, i32 0, i32 0
  %678 = load i8*, i8** %677, align 16
  %679 = call i32 @ima_log_string(%struct.audit_buffer* %675, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i8* %678)
  %680 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %681 = load i32, i32* @LSM_SUBJ_ROLE, align 4
  %682 = load i32, i32* @AUDIT_SUBJ_ROLE, align 4
  %683 = call i32 @ima_lsm_rule_init(%struct.ima_rule_entry* %680, %struct.TYPE_4__* %40, i32 %681, i32 %682)
  store i32 %683, i32* %10, align 4
  br label %837

684:                                              ; preds = %60
  %685 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %686 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %687 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %686, i32 0, i32 0
  %688 = load i8*, i8** %687, align 16
  %689 = call i32 @ima_log_string(%struct.audit_buffer* %685, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0), i8* %688)
  %690 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %691 = load i32, i32* @LSM_SUBJ_TYPE, align 4
  %692 = load i32, i32* @AUDIT_SUBJ_TYPE, align 4
  %693 = call i32 @ima_lsm_rule_init(%struct.ima_rule_entry* %690, %struct.TYPE_4__* %40, i32 %691, i32 %692)
  store i32 %693, i32* %10, align 4
  br label %837

694:                                              ; preds = %60
  %695 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %696 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %695, i32 0, i32 0
  %697 = load i64, i64* %696, align 8
  %698 = load i64, i64* @APPRAISE, align 8
  %699 = icmp ne i64 %697, %698
  br i1 %699, label %700, label %703

700:                                              ; preds = %694
  %701 = load i32, i32* @EINVAL, align 4
  %702 = sub nsw i32 0, %701
  store i32 %702, i32* %10, align 4
  br label %837

703:                                              ; preds = %694
  %704 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %705 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %706 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %705, i32 0, i32 0
  %707 = load i8*, i8** %706, align 16
  %708 = call i32 @ima_log_string(%struct.audit_buffer* %704, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0), i8* %707)
  %709 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %710 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %709, i32 0, i32 0
  %711 = load i8*, i8** %710, align 16
  %712 = call i32 @strcmp(i8* %711, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0))
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %714, label %720

714:                                              ; preds = %703
  %715 = load i32, i32* @IMA_DIGSIG_REQUIRED, align 4
  %716 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %717 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %716, i32 0, i32 1
  %718 = load i32, i32* %717, align 8
  %719 = or i32 %718, %715
  store i32 %719, i32* %717, align 8
  br label %744

720:                                              ; preds = %703
  %721 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %722 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %721, i32 0, i32 4
  %723 = load i8*, i8** %722, align 8
  %724 = call i32 @ima_hook_supports_modsig(i8* %723)
  %725 = icmp ne i32 %724, 0
  br i1 %725, label %726, label %740

726:                                              ; preds = %720
  %727 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %728 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %727, i32 0, i32 0
  %729 = load i8*, i8** %728, align 16
  %730 = call i32 @strcmp(i8* %729, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0))
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %732, label %740

732:                                              ; preds = %726
  %733 = load i32, i32* @IMA_DIGSIG_REQUIRED, align 4
  %734 = load i32, i32* @IMA_MODSIG_ALLOWED, align 4
  %735 = or i32 %733, %734
  %736 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %737 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %736, i32 0, i32 1
  %738 = load i32, i32* %737, align 8
  %739 = or i32 %738, %735
  store i32 %739, i32* %737, align 8
  br label %743

740:                                              ; preds = %726, %720
  %741 = load i32, i32* @EINVAL, align 4
  %742 = sub nsw i32 0, %741
  store i32 %742, i32* %10, align 4
  br label %743

743:                                              ; preds = %740, %732
  br label %744

744:                                              ; preds = %743, %714
  br label %837

745:                                              ; preds = %60
  %746 = load i32, i32* @IMA_PERMIT_DIRECTIO, align 4
  %747 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %748 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %747, i32 0, i32 1
  %749 = load i32, i32* %748, align 8
  %750 = or i32 %749, %746
  store i32 %750, i32* %748, align 8
  br label %837

751:                                              ; preds = %60
  %752 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %753 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %752, i32 0, i32 0
  %754 = load i64, i64* %753, align 8
  %755 = load i64, i64* @MEASURE, align 8
  %756 = icmp ne i64 %754, %755
  br i1 %756, label %757, label %760

757:                                              ; preds = %751
  %758 = load i32, i32* @EINVAL, align 4
  %759 = sub nsw i32 0, %758
  store i32 %759, i32* %10, align 4
  br label %837

760:                                              ; preds = %751
  %761 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %762 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %763 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %762, i32 0, i32 0
  %764 = load i8*, i8** %763, align 16
  %765 = call i32 @ima_log_string(%struct.audit_buffer* %761, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i8* %764)
  %766 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %767 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %766, i32 0, i32 0
  %768 = load i8*, i8** %767, align 16
  %769 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %770 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %769, i32 0, i32 5
  %771 = call i32 @kstrtoint(i8* %768, i32 10, i32* %770)
  store i32 %771, i32* %10, align 4
  %772 = load i32, i32* %10, align 4
  %773 = icmp ne i32 %772, 0
  br i1 %773, label %780, label %774

774:                                              ; preds = %760
  %775 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %776 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %775, i32 0, i32 5
  %777 = load i32, i32* %776, align 8
  %778 = call i32 @INVALID_PCR(i32 %777)
  %779 = icmp ne i32 %778, 0
  br i1 %779, label %780, label %783

780:                                              ; preds = %774, %760
  %781 = load i32, i32* @EINVAL, align 4
  %782 = sub nsw i32 0, %781
  store i32 %782, i32* %10, align 4
  br label %789

783:                                              ; preds = %774
  %784 = load i32, i32* @IMA_PCR, align 4
  %785 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %786 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %785, i32 0, i32 1
  %787 = load i32, i32* %786, align 8
  %788 = or i32 %787, %784
  store i32 %788, i32* %786, align 8
  br label %789

789:                                              ; preds = %783, %780
  br label %837

790:                                              ; preds = %60
  %791 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %792 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %793 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %792, i32 0, i32 0
  %794 = load i8*, i8** %793, align 16
  %795 = call i32 @ima_log_string(%struct.audit_buffer* %791, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0), i8* %794)
  %796 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %797 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %796, i32 0, i32 0
  %798 = load i64, i64* %797, align 8
  %799 = load i64, i64* @MEASURE, align 8
  %800 = icmp ne i64 %798, %799
  br i1 %800, label %801, label %804

801:                                              ; preds = %790
  %802 = load i32, i32* @EINVAL, align 4
  %803 = sub nsw i32 0, %802
  store i32 %803, i32* %10, align 4
  br label %837

804:                                              ; preds = %790
  %805 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %806 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %805, i32 0, i32 0
  %807 = load i8*, i8** %806, align 16
  %808 = call %struct.ima_template_desc* @lookup_template_desc(i8* %807)
  store %struct.ima_template_desc* %808, %struct.ima_template_desc** %9, align 8
  %809 = load %struct.ima_template_desc*, %struct.ima_template_desc** %9, align 8
  %810 = icmp ne %struct.ima_template_desc* %809, null
  br i1 %810, label %811, label %816

811:                                              ; preds = %804
  %812 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %813 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %812, i32 0, i32 3
  %814 = load %struct.ima_template_desc*, %struct.ima_template_desc** %813, align 8
  %815 = icmp ne %struct.ima_template_desc* %814, null
  br i1 %815, label %816, label %819

816:                                              ; preds = %811, %804
  %817 = load i32, i32* @EINVAL, align 4
  %818 = sub nsw i32 0, %817
  store i32 %818, i32* %10, align 4
  br label %837

819:                                              ; preds = %811
  %820 = load %struct.ima_template_desc*, %struct.ima_template_desc** %9, align 8
  %821 = getelementptr inbounds %struct.ima_template_desc, %struct.ima_template_desc* %820, i32 0, i32 2
  %822 = load i32, i32* %821, align 4
  %823 = load %struct.ima_template_desc*, %struct.ima_template_desc** %9, align 8
  %824 = getelementptr inbounds %struct.ima_template_desc, %struct.ima_template_desc* %823, i32 0, i32 1
  %825 = load %struct.ima_template_desc*, %struct.ima_template_desc** %9, align 8
  %826 = getelementptr inbounds %struct.ima_template_desc, %struct.ima_template_desc* %825, i32 0, i32 0
  %827 = call i32 @template_desc_init_fields(i32 %822, i32* %824, i32* %826)
  %828 = load %struct.ima_template_desc*, %struct.ima_template_desc** %9, align 8
  %829 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %830 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %829, i32 0, i32 3
  store %struct.ima_template_desc* %828, %struct.ima_template_desc** %830, align 8
  br label %837

831:                                              ; preds = %60
  %832 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %833 = load i8*, i8** %7, align 8
  %834 = call i32 @ima_log_string(%struct.audit_buffer* %832, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), i8* %833)
  %835 = load i32, i32* @EINVAL, align 4
  %836 = sub nsw i32 0, %835
  store i32 %836, i32* %10, align 4
  br label %837

837:                                              ; preds = %60, %831, %819, %816, %801, %789, %757, %745, %744, %700, %684, %674, %664, %654, %644, %634, %633, %598, %573, %531, %488, %470, %454, %451, %433, %415, %404, %321, %166, %151, %136, %121, %106, %91, %76
  store i32 0, i32* %15, align 4
  br label %838

838:                                              ; preds = %837, %59, %43
  %839 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %839)
  %840 = load i32, i32* %15, align 4
  switch i32 %840, label %903 [
    i32 0, label %841
    i32 3, label %842
    i32 2, label %33
  ]

841:                                              ; preds = %838
  br label %33

842:                                              ; preds = %838, %33
  %843 = load i32, i32* %10, align 4
  %844 = icmp ne i32 %843, 0
  br i1 %844, label %854, label %845

845:                                              ; preds = %842
  %846 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %847 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %846, i32 0, i32 0
  %848 = load i64, i64* %847, align 8
  %849 = load i64, i64* @UNKNOWN, align 8
  %850 = icmp eq i64 %848, %849
  br i1 %850, label %851, label %854

851:                                              ; preds = %845
  %852 = load i32, i32* @EINVAL, align 4
  %853 = sub nsw i32 0, %852
  store i32 %853, i32* %10, align 4
  br label %868

854:                                              ; preds = %845, %842
  %855 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %856 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %855, i32 0, i32 0
  %857 = load i64, i64* %856, align 8
  %858 = load i64, i64* @APPRAISE, align 8
  %859 = icmp eq i64 %857, %858
  br i1 %859, label %860, label %867

860:                                              ; preds = %854
  %861 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %862 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %861, i32 0, i32 4
  %863 = load i8*, i8** %862, align 8
  %864 = call i32 @ima_appraise_flag(i8* %863)
  %865 = load i32, i32* @temp_ima_appraise, align 4
  %866 = or i32 %865, %864
  store i32 %866, i32* @temp_ima_appraise, align 4
  br label %867

867:                                              ; preds = %860, %854
  br label %868

868:                                              ; preds = %867, %851
  %869 = load i32, i32* %10, align 4
  %870 = icmp ne i32 %869, 0
  br i1 %870, label %893, label %871

871:                                              ; preds = %868
  %872 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %873 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %872, i32 0, i32 1
  %874 = load i32, i32* %873, align 8
  %875 = load i32, i32* @IMA_MODSIG_ALLOWED, align 4
  %876 = and i32 %874, %875
  %877 = icmp ne i32 %876, 0
  br i1 %877, label %878, label %893

878:                                              ; preds = %871
  %879 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %880 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %879, i32 0, i32 3
  %881 = load %struct.ima_template_desc*, %struct.ima_template_desc** %880, align 8
  %882 = icmp ne %struct.ima_template_desc* %881, null
  br i1 %882, label %883, label %887

883:                                              ; preds = %878
  %884 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %885 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %884, i32 0, i32 3
  %886 = load %struct.ima_template_desc*, %struct.ima_template_desc** %885, align 8
  br label %889

887:                                              ; preds = %878
  %888 = call %struct.ima_template_desc* (...) @ima_template_desc_current()
  br label %889

889:                                              ; preds = %887, %883
  %890 = phi %struct.ima_template_desc* [ %886, %883 ], [ %888, %887 ]
  store %struct.ima_template_desc* %890, %struct.ima_template_desc** %9, align 8
  %891 = load %struct.ima_template_desc*, %struct.ima_template_desc** %9, align 8
  %892 = call i32 @check_template_modsig(%struct.ima_template_desc* %891)
  br label %893

893:                                              ; preds = %889, %871, %868
  %894 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %895 = load i32, i32* %10, align 4
  %896 = icmp ne i32 %895, 0
  %897 = xor i1 %896, true
  %898 = zext i1 %897 to i32
  %899 = call i32 @audit_log_format(%struct.audit_buffer* %894, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i32 %898)
  %900 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %901 = call i32 @audit_log_end(%struct.audit_buffer* %900)
  %902 = load i32, i32* %10, align 4
  ret i32 %902

903:                                              ; preds = %838
  unreachable
}

declare dso_local %struct.audit_buffer* @integrity_audit_log_start(i32, i32, i32) #1

declare dso_local i32 @audit_context(...) #1

declare dso_local i8* @strsep(i8**, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @match_token(i8*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @ima_log_string(%struct.audit_buffer*, i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @uuid_is_null(i32*) #1

declare dso_local i32 @uuid_parse(i8*, i32*) #1

declare dso_local i32 @ima_log_string_op(%struct.audit_buffer*, i8*, i8*, i32*) #1

declare dso_local i32 @uid_valid(i8*) #1

declare dso_local i8* @make_kuid(i32, i64) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @ima_lsm_rule_init(%struct.ima_rule_entry*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ima_hook_supports_modsig(i8*) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @INVALID_PCR(i32) #1

declare dso_local %struct.ima_template_desc* @lookup_template_desc(i8*) #1

declare dso_local i32 @template_desc_init_fields(i32, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @ima_appraise_flag(i8*) #1

declare dso_local %struct.ima_template_desc* @ima_template_desc_current(...) #1

declare dso_local i32 @check_template_modsig(%struct.ima_template_desc*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i32) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
