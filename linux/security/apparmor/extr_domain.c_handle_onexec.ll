; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_handle_onexec.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_handle_onexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.linux_binprm = type { i32 }
%struct.path_cond = type { i32 }
%struct.aa_profile = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@nullperms = common dso_local global i32 0, align 4
@OP_CHANGE_ONEXEC = common dso_local global i32 0, align 4
@AA_MAY_ONEXEC = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to build target label\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aa_label* (%struct.aa_label*, %struct.aa_label*, i32, %struct.linux_binprm*, i8*, %struct.path_cond*, i32*)* @handle_onexec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aa_label* @handle_onexec(%struct.aa_label* %0, %struct.aa_label* %1, i32 %2, %struct.linux_binprm* %3, i8* %4, %struct.path_cond* %5, i32* %6) #0 {
  %8 = alloca %struct.aa_label*, align 8
  %9 = alloca %struct.aa_label*, align 8
  %10 = alloca %struct.aa_label*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.linux_binprm*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.path_cond*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.aa_profile*, align 8
  %17 = alloca %struct.aa_label*, align 8
  %18 = alloca i32, align 4
  store %struct.aa_label* %0, %struct.aa_label** %9, align 8
  store %struct.aa_label* %1, %struct.aa_label** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.linux_binprm* %3, %struct.linux_binprm** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.path_cond* %5, %struct.path_cond** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %20 = icmp ne %struct.aa_label* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @AA_BUG(i32 %22)
  %24 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %25 = icmp ne %struct.aa_label* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @AA_BUG(i32 %27)
  %29 = load %struct.linux_binprm*, %struct.linux_binprm** %12, align 8
  %30 = icmp ne %struct.linux_binprm* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @AA_BUG(i32 %32)
  %34 = load i8*, i8** %13, align 8
  %35 = icmp ne i8* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @AA_BUG(i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %71, label %41

41:                                               ; preds = %7
  %42 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %43 = load %struct.aa_profile*, %struct.aa_profile** %16, align 8
  %44 = load %struct.aa_profile*, %struct.aa_profile** %16, align 8
  %45 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.linux_binprm*, %struct.linux_binprm** %12, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = load %struct.path_cond*, %struct.path_cond** %14, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = call i32 @profile_onexec(%struct.aa_profile* %44, %struct.aa_label* %45, i32 %46, %struct.linux_binprm* %47, i8* %48, %struct.path_cond* %49, i32* %50)
  %52 = call i32 @fn_for_each_in_ns(%struct.aa_label* %42, %struct.aa_profile* %43, i32 %51)
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %18, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = load i32, i32* %18, align 4
  %57 = call %struct.aa_label* @ERR_PTR(i32 %56)
  store %struct.aa_label* %57, %struct.aa_label** %8, align 8
  br label %126

58:                                               ; preds = %41
  %59 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %60 = load %struct.aa_profile*, %struct.aa_profile** %16, align 8
  %61 = load i32, i32* @GFP_ATOMIC, align 4
  %62 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %63 = call i32 @aa_get_newest_label(%struct.aa_label* %62)
  %64 = load %struct.aa_profile*, %struct.aa_profile** %16, align 8
  %65 = load %struct.linux_binprm*, %struct.linux_binprm** %12, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = load %struct.path_cond*, %struct.path_cond** %14, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = call i32 @profile_transition(%struct.aa_profile* %64, %struct.linux_binprm* %65, i8* %66, %struct.path_cond* %67, i32* %68)
  %70 = call %struct.aa_label* @fn_label_build_in_ns(%struct.aa_label* %59, %struct.aa_profile* %60, i32 %61, i32 %63, i32 %69)
  store %struct.aa_label* %70, %struct.aa_label** %17, align 8
  br label %104

71:                                               ; preds = %7
  %72 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %73 = load %struct.aa_profile*, %struct.aa_profile** %16, align 8
  %74 = load %struct.aa_profile*, %struct.aa_profile** %16, align 8
  %75 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.linux_binprm*, %struct.linux_binprm** %12, align 8
  %78 = load i8*, i8** %13, align 8
  %79 = load %struct.path_cond*, %struct.path_cond** %14, align 8
  %80 = load i32*, i32** %15, align 8
  %81 = call i32 @profile_onexec(%struct.aa_profile* %74, %struct.aa_label* %75, i32 %76, %struct.linux_binprm* %77, i8* %78, %struct.path_cond* %79, i32* %80)
  %82 = call i32 @fn_for_each_in_ns(%struct.aa_label* %72, %struct.aa_profile* %73, i32 %81)
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %18, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %71
  %86 = load i32, i32* %18, align 4
  %87 = call %struct.aa_label* @ERR_PTR(i32 %86)
  store %struct.aa_label* %87, %struct.aa_label** %8, align 8
  br label %126

88:                                               ; preds = %71
  %89 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %90 = load %struct.aa_profile*, %struct.aa_profile** %16, align 8
  %91 = load i32, i32* @GFP_ATOMIC, align 4
  %92 = load %struct.aa_profile*, %struct.aa_profile** %16, align 8
  %93 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %92, i32 0, i32 0
  %94 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %95 = load i32, i32* @GFP_ATOMIC, align 4
  %96 = call i32 @aa_label_merge(i32* %93, %struct.aa_label* %94, i32 %95)
  %97 = load %struct.aa_profile*, %struct.aa_profile** %16, align 8
  %98 = load %struct.linux_binprm*, %struct.linux_binprm** %12, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = load %struct.path_cond*, %struct.path_cond** %14, align 8
  %101 = load i32*, i32** %15, align 8
  %102 = call i32 @profile_transition(%struct.aa_profile* %97, %struct.linux_binprm* %98, i8* %99, %struct.path_cond* %100, i32* %101)
  %103 = call %struct.aa_label* @fn_label_build_in_ns(%struct.aa_label* %89, %struct.aa_profile* %90, i32 %91, i32 %96, i32 %102)
  store %struct.aa_label* %103, %struct.aa_label** %17, align 8
  br label %104

104:                                              ; preds = %88, %58
  %105 = load %struct.aa_label*, %struct.aa_label** %17, align 8
  %106 = icmp ne %struct.aa_label* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load %struct.aa_label*, %struct.aa_label** %17, align 8
  store %struct.aa_label* %108, %struct.aa_label** %8, align 8
  br label %126

109:                                              ; preds = %104
  %110 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %111 = load %struct.aa_profile*, %struct.aa_profile** %16, align 8
  %112 = load %struct.aa_profile*, %struct.aa_profile** %16, align 8
  %113 = load i32, i32* @OP_CHANGE_ONEXEC, align 4
  %114 = load i32, i32* @AA_MAY_ONEXEC, align 4
  %115 = load %struct.linux_binprm*, %struct.linux_binprm** %12, align 8
  %116 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %119 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = sub nsw i32 0, %120
  %122 = call i32 @aa_audit_file(%struct.aa_profile* %112, i32* @nullperms, i32 %113, i32 %114, i32 %117, i32* null, %struct.aa_label* %118, i32 %119, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %121)
  %123 = call i32 @fn_for_each_in_ns(%struct.aa_label* %110, %struct.aa_profile* %111, i32 %122)
  store i32 %123, i32* %18, align 4
  %124 = load i32, i32* %18, align 4
  %125 = call %struct.aa_label* @ERR_PTR(i32 %124)
  store %struct.aa_label* %125, %struct.aa_label** %8, align 8
  br label %126

126:                                              ; preds = %109, %107, %85, %55
  %127 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  ret %struct.aa_label* %127
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @fn_for_each_in_ns(%struct.aa_label*, %struct.aa_profile*, i32) #1

declare dso_local i32 @profile_onexec(%struct.aa_profile*, %struct.aa_label*, i32, %struct.linux_binprm*, i8*, %struct.path_cond*, i32*) #1

declare dso_local %struct.aa_label* @ERR_PTR(i32) #1

declare dso_local %struct.aa_label* @fn_label_build_in_ns(%struct.aa_label*, %struct.aa_profile*, i32, i32, i32) #1

declare dso_local i32 @aa_get_newest_label(%struct.aa_label*) #1

declare dso_local i32 @profile_transition(%struct.aa_profile*, %struct.linux_binprm*, i8*, %struct.path_cond*, i32*) #1

declare dso_local i32 @aa_label_merge(i32*, %struct.aa_label*, i32) #1

declare dso_local i32 @aa_audit_file(%struct.aa_profile*, i32*, i32, i32, i32, i32*, %struct.aa_label*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
