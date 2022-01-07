; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_aa_change_hat.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_aa_change_hat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }
%struct.aa_task_ctx = type { i64, i32 }
%struct.aa_label = type { i32 }
%struct.aa_profile = type { i32 }
%struct.aa_perms = type { i32 }

@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unconfined can not change_hat\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"no_new_privs - change_hat denied\00", align 1
@AA_CHANGE_TEST = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"failed token match\00", align 1
@AA_MAY_CHANGEHAT = common dso_local global i32 0, align 4
@OP_CHANGE_HAT = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_change_hat(i8** %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cred*, align 8
  %10 = alloca %struct.aa_task_ctx*, align 8
  %11 = alloca %struct.aa_label*, align 8
  %12 = alloca %struct.aa_label*, align 8
  %13 = alloca %struct.aa_label*, align 8
  %14 = alloca %struct.aa_label*, align 8
  %15 = alloca %struct.aa_profile*, align 8
  %16 = alloca %struct.aa_perms, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* @current, align 4
  %20 = call %struct.aa_task_ctx* @task_ctx(i32 %19)
  store %struct.aa_task_ctx* %20, %struct.aa_task_ctx** %10, align 8
  store %struct.aa_label* null, %struct.aa_label** %13, align 8
  store %struct.aa_label* null, %struct.aa_label** %14, align 8
  %21 = bitcast %struct.aa_perms* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 4, i1 false)
  store i8* null, i8** %17, align 8
  store i32 0, i32* %18, align 4
  %22 = call %struct.cred* (...) @get_current_cred()
  store %struct.cred* %22, %struct.cred** %9, align 8
  %23 = load %struct.cred*, %struct.cred** %9, align 8
  %24 = call %struct.aa_label* @aa_get_newest_cred_label(%struct.cred* %23)
  store %struct.aa_label* %24, %struct.aa_label** %11, align 8
  %25 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %10, align 8
  %26 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.aa_label* @aa_get_newest_label(i32 %27)
  store %struct.aa_label* %28, %struct.aa_label** %12, align 8
  %29 = load i32, i32* @current, align 4
  %30 = call i64 @task_no_new_privs(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %4
  %33 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %34 = call i64 @unconfined(%struct.aa_label* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %10, align 8
  %38 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %43 = call i64 @aa_get_label(%struct.aa_label* %42)
  %44 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %10, align 8
  %45 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %41, %36, %32, %4
  %47 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %48 = call i64 @unconfined(%struct.aa_label* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %51 = load i32, i32* @EPERM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %18, align 4
  br label %171

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %115

56:                                               ; preds = %53
  %57 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %58 = load i8**, i8*** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call %struct.aa_label* @change_hat(%struct.aa_label* %57, i8** %58, i32 %59, i32 %60)
  store %struct.aa_label* %61, %struct.aa_label** %13, align 8
  %62 = load %struct.aa_label*, %struct.aa_label** %13, align 8
  %63 = icmp ne %struct.aa_label* %62, null
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @AA_BUG(i32 %65)
  %67 = load %struct.aa_label*, %struct.aa_label** %13, align 8
  %68 = call i64 @IS_ERR(%struct.aa_label* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %56
  %71 = load %struct.aa_label*, %struct.aa_label** %13, align 8
  %72 = call i32 @PTR_ERR(%struct.aa_label* %71)
  store i32 %72, i32* %18, align 4
  store %struct.aa_label* null, %struct.aa_label** %13, align 8
  br label %158

73:                                               ; preds = %56
  %74 = load %struct.aa_label*, %struct.aa_label** %13, align 8
  %75 = call i32 @may_change_ptraced_domain(%struct.aa_label* %74, i8** %17)
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %18, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %171

79:                                               ; preds = %73
  %80 = load i32, i32* @current, align 4
  %81 = call i64 @task_no_new_privs(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %79
  %84 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %85 = call i64 @unconfined(%struct.aa_label* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %83
  %88 = load %struct.aa_label*, %struct.aa_label** %13, align 8
  %89 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %10, align 8
  %90 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @aa_label_is_subset(%struct.aa_label* %88, i64 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %87
  %95 = call i32 @AA_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* @EPERM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %18, align 4
  br label %158

98:                                               ; preds = %87, %83, %79
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @AA_CHANGE_TEST, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %158

104:                                              ; preds = %98
  %105 = load %struct.aa_label*, %struct.aa_label** %13, align 8
  store %struct.aa_label* %105, %struct.aa_label** %14, align 8
  %106 = load %struct.aa_label*, %struct.aa_label** %13, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @aa_set_current_hat(%struct.aa_label* %106, i32 %107)
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* @EACCES, align 4
  %111 = sub nsw i32 0, %110
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  br label %168

114:                                              ; preds = %104
  br label %157

115:                                              ; preds = %53
  %116 = load %struct.aa_label*, %struct.aa_label** %12, align 8
  %117 = icmp ne %struct.aa_label* %116, null
  br i1 %117, label %118, label %156

118:                                              ; preds = %115
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @AA_CHANGE_TEST, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %156, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* @current, align 4
  %125 = call i64 @task_no_new_privs(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %123
  %128 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %129 = call i64 @unconfined(%struct.aa_label* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %142, label %131

131:                                              ; preds = %127
  %132 = load %struct.aa_label*, %struct.aa_label** %12, align 8
  %133 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %10, align 8
  %134 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @aa_label_is_subset(%struct.aa_label* %132, i64 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %131
  %139 = call i32 @AA_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %140 = load i32, i32* @EPERM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %18, align 4
  br label %158

142:                                              ; preds = %131, %127, %123
  %143 = load %struct.aa_label*, %struct.aa_label** %12, align 8
  store %struct.aa_label* %143, %struct.aa_label** %14, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @aa_restore_previous_label(i32 %144)
  store i32 %145, i32* %18, align 4
  %146 = load i32, i32* %18, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %142
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* @EACCES, align 4
  %151 = sub nsw i32 0, %150
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %168

154:                                              ; preds = %148
  br label %171

155:                                              ; preds = %142
  br label %156

156:                                              ; preds = %155, %118, %115
  br label %157

157:                                              ; preds = %156, %114
  br label %158

158:                                              ; preds = %171, %157, %138, %103, %94, %70
  %159 = load %struct.aa_label*, %struct.aa_label** %13, align 8
  %160 = call i32 @aa_put_label(%struct.aa_label* %159)
  %161 = load %struct.aa_label*, %struct.aa_label** %12, align 8
  %162 = call i32 @aa_put_label(%struct.aa_label* %161)
  %163 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %164 = call i32 @aa_put_label(%struct.aa_label* %163)
  %165 = load %struct.cred*, %struct.cred** %9, align 8
  %166 = call i32 @put_cred(%struct.cred* %165)
  %167 = load i32, i32* %18, align 4
  ret i32 %167

168:                                              ; preds = %153, %113
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  %169 = load i32, i32* @AA_MAY_CHANGEHAT, align 4
  %170 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %16, i32 0, i32 0
  store i32 %169, i32* %170, align 4
  br label %171

171:                                              ; preds = %168, %154, %78, %50
  %172 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %173 = load %struct.aa_profile*, %struct.aa_profile** %15, align 8
  %174 = load %struct.aa_profile*, %struct.aa_profile** %15, align 8
  %175 = load i32, i32* @OP_CHANGE_HAT, align 4
  %176 = load i32, i32* @AA_MAY_CHANGEHAT, align 4
  %177 = load %struct.aa_label*, %struct.aa_label** %14, align 8
  %178 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %179 = load i8*, i8** %17, align 8
  %180 = load i32, i32* %18, align 4
  %181 = call i32 @aa_audit_file(%struct.aa_profile* %174, %struct.aa_perms* %16, i32 %175, i32 %176, i32* null, i32* null, %struct.aa_label* %177, i32 %178, i8* %179, i32 %180)
  %182 = call i32 @fn_for_each_in_ns(%struct.aa_label* %172, %struct.aa_profile* %173, i32 %181)
  br label %158
}

declare dso_local %struct.aa_task_ctx* @task_ctx(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.cred* @get_current_cred(...) #1

declare dso_local %struct.aa_label* @aa_get_newest_cred_label(%struct.cred*) #1

declare dso_local %struct.aa_label* @aa_get_newest_label(i32) #1

declare dso_local i64 @task_no_new_privs(i32) #1

declare dso_local i64 @unconfined(%struct.aa_label*) #1

declare dso_local i64 @aa_get_label(%struct.aa_label*) #1

declare dso_local %struct.aa_label* @change_hat(%struct.aa_label*, i8**, i32, i32) #1

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i64 @IS_ERR(%struct.aa_label*) #1

declare dso_local i32 @PTR_ERR(%struct.aa_label*) #1

declare dso_local i32 @may_change_ptraced_domain(%struct.aa_label*, i8**) #1

declare dso_local i32 @aa_label_is_subset(%struct.aa_label*, i64) #1

declare dso_local i32 @AA_DEBUG(i8*) #1

declare dso_local i32 @aa_set_current_hat(%struct.aa_label*, i32) #1

declare dso_local i32 @aa_restore_previous_label(i32) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

declare dso_local i32 @fn_for_each_in_ns(%struct.aa_label*, %struct.aa_profile*, i32) #1

declare dso_local i32 @aa_audit_file(%struct.aa_profile*, %struct.aa_perms*, i32, i32, i32*, i32*, %struct.aa_label*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
