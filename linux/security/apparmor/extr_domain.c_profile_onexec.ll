; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_profile_onexec.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_profile_onexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.aa_label = type { i32 }
%struct.linux_binprm = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.path_cond = type { i32 }
%struct.aa_perms = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"change_profile onexec\00", align 1
@EACCES = common dso_local global i32 0, align 4
@FLAG_IX_ON_NAME_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"name lookup ix on error\00", align 1
@AA_MAY_ONEXEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"no change_onexec valid for executable\00", align 1
@AA_X_UNSAFE = common dso_local global i32 0, align 4
@DEBUG_ON = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [56 x i8] c"apparmor: scrubbing environment variables for %s label=\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@OP_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*, %struct.aa_label*, i32, %struct.linux_binprm*, i8*, %struct.path_cond*, i32*)* @profile_onexec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @profile_onexec(%struct.aa_profile* %0, %struct.aa_label* %1, i32 %2, %struct.linux_binprm* %3, i8* %4, %struct.path_cond* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.aa_profile*, align 8
  %10 = alloca %struct.aa_label*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.linux_binprm*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.path_cond*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.aa_perms, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %9, align 8
  store %struct.aa_label* %1, %struct.aa_label** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.linux_binprm* %3, %struct.linux_binprm** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.path_cond* %5, %struct.path_cond** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %22 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %16, align 4
  %25 = bitcast %struct.aa_perms* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 8, i1 false)
  store i8* null, i8** %18, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %26 = load i32, i32* @EACCES, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %20, align 4
  %28 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %29 = icmp ne %struct.aa_profile* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @AA_BUG(i32 %31)
  %33 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %34 = icmp ne %struct.aa_label* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @AA_BUG(i32 %36)
  %38 = load %struct.linux_binprm*, %struct.linux_binprm** %12, align 8
  %39 = icmp ne %struct.linux_binprm* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @AA_BUG(i32 %41)
  %43 = load i8*, i8** %13, align 8
  %44 = icmp ne i8* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @AA_BUG(i32 %46)
  %48 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %49 = call i64 @profile_unconfined(%struct.aa_profile* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %152

52:                                               ; preds = %7
  %53 = load %struct.linux_binprm*, %struct.linux_binprm** %12, align 8
  %54 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %58 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %13, align 8
  %61 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %62 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @aa_path_name(i32* %56, i32 %59, i8* %60, i8** %18, i8** %19, i32 %63)
  store i32 %64, i32* %20, align 4
  %65 = load i32, i32* %20, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %52
  %68 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %69 = call i64 @profile_unconfined(%struct.aa_profile* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %73 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @FLAG_IX_ON_NAME_ERROR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71, %67
  %80 = call i32 @AA_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %20, align 4
  br label %81

81:                                               ; preds = %79, %71
  %82 = load %struct.linux_binprm*, %struct.linux_binprm** %12, align 8
  %83 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %18, align 8
  br label %140

85:                                               ; preds = %52
  %86 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %87 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load i8*, i8** %18, align 8
  %92 = load %struct.path_cond*, %struct.path_cond** %14, align 8
  %93 = call i32 @aa_str_perms(i32 %89, i32 %90, i8* %91, %struct.path_cond* %92, %struct.aa_perms* %17)
  store i32 %93, i32* %16, align 4
  %94 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %17, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @AA_MAY_ONEXEC, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %85
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 8
  br label %140

100:                                              ; preds = %85
  %101 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %102 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @aa_dfa_null_transition(i32 %104, i32 %105)
  store i32 %106, i32* %16, align 4
  %107 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %108 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @AA_MAY_ONEXEC, align 4
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @change_profile_perms(%struct.aa_profile* %107, %struct.aa_label* %108, i32 %109, i32 %110, i32 %111, %struct.aa_perms* %17)
  store i32 %112, i32* %20, align 4
  %113 = load i32, i32* %20, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %100
  %116 = load i32, i32* @AA_MAY_ONEXEC, align 4
  %117 = xor i32 %116, -1
  %118 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %17, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, %117
  store i32 %120, i32* %118, align 4
  br label %140

121:                                              ; preds = %100
  %122 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %17, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @AA_X_UNSAFE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %139, label %127

127:                                              ; preds = %121
  %128 = load i64, i64* @DEBUG_ON, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %127
  %131 = load i8*, i8** %18, align 8
  %132 = call i32 (i8*, ...) @dbg_printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* %131)
  %133 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %134 = load i32, i32* @GFP_ATOMIC, align 4
  %135 = call i32 @aa_label_printk(%struct.aa_label* %133, i32 %134)
  %136 = call i32 (i8*, ...) @dbg_printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %137

137:                                              ; preds = %130, %127
  %138 = load i32*, i32** %15, align 8
  store i32 1, i32* %138, align 4
  br label %139

139:                                              ; preds = %137, %121
  br label %140

140:                                              ; preds = %139, %115, %99, %81
  %141 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %142 = load i32, i32* @OP_EXEC, align 4
  %143 = load i32, i32* @AA_MAY_ONEXEC, align 4
  %144 = load i8*, i8** %18, align 8
  %145 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %146 = load %struct.path_cond*, %struct.path_cond** %14, align 8
  %147 = getelementptr inbounds %struct.path_cond, %struct.path_cond* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i8*, i8** %19, align 8
  %150 = load i32, i32* %20, align 4
  %151 = call i32 @aa_audit_file(%struct.aa_profile* %141, %struct.aa_perms* %17, i32 %142, i32 %143, i8* %144, i32* null, %struct.aa_label* %145, i32 %148, i8* %149, i32 %150)
  store i32 %151, i32* %8, align 4
  br label %152

152:                                              ; preds = %140, %51
  %153 = load i32, i32* %8, align 4
  ret i32 %153
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @AA_BUG(i32) #2

declare dso_local i64 @profile_unconfined(%struct.aa_profile*) #2

declare dso_local i32 @aa_path_name(i32*, i32, i8*, i8**, i8**, i32) #2

declare dso_local i32 @AA_DEBUG(i8*) #2

declare dso_local i32 @aa_str_perms(i32, i32, i8*, %struct.path_cond*, %struct.aa_perms*) #2

declare dso_local i32 @aa_dfa_null_transition(i32, i32) #2

declare dso_local i32 @change_profile_perms(%struct.aa_profile*, %struct.aa_label*, i32, i32, i32, %struct.aa_perms*) #2

declare dso_local i32 @dbg_printk(i8*, ...) #2

declare dso_local i32 @aa_label_printk(%struct.aa_label*, i32) #2

declare dso_local i32 @aa_audit_file(%struct.aa_profile*, %struct.aa_perms*, i32, i32, i8*, i32*, %struct.aa_label*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
