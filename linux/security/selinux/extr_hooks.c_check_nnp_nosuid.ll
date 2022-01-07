; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_check_nnp_nosuid.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_check_nnp_nosuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.task_security_struct = type { i64 }

@LSM_UNSAFE_NO_NEW_PRIVS = common dso_local global i32 0, align 4
@PROCESS2__NNP_TRANSITION = common dso_local global i32 0, align 4
@PROCESS2__NOSUID_TRANSITION = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_PROCESS2 = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linux_binprm*, %struct.task_security_struct*, %struct.task_security_struct*)* @check_nnp_nosuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_nnp_nosuid(%struct.linux_binprm* %0, %struct.task_security_struct* %1, %struct.task_security_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.linux_binprm*, align 8
  %6 = alloca %struct.task_security_struct*, align 8
  %7 = alloca %struct.task_security_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %5, align 8
  store %struct.task_security_struct* %1, %struct.task_security_struct** %6, align 8
  store %struct.task_security_struct* %2, %struct.task_security_struct** %7, align 8
  %12 = load %struct.linux_binprm*, %struct.linux_binprm** %5, align 8
  %13 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @LSM_UNSAFE_NO_NEW_PRIVS, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.linux_binprm*, %struct.linux_binprm** %5, align 8
  %18 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mnt_may_suid(i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %93

33:                                               ; preds = %29, %3
  %34 = load %struct.task_security_struct*, %struct.task_security_struct** %7, align 8
  %35 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.task_security_struct*, %struct.task_security_struct** %6, align 8
  %38 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %93

42:                                               ; preds = %33
  %43 = call i64 (...) @selinux_policycap_nnp_nosuid_transition()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* @PROCESS2__NNP_TRANSITION, align 4
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* @PROCESS2__NOSUID_TRANSITION, align 4
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %55, %52
  %60 = load %struct.task_security_struct*, %struct.task_security_struct** %6, align 8
  %61 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.task_security_struct*, %struct.task_security_struct** %7, align 8
  %64 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @SECCLASS_PROCESS2, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @avc_has_perm(i32* @selinux_state, i64 %62, i64 %65, i32 %66, i32 %67, i32* null)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %93

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %42
  %74 = load %struct.task_security_struct*, %struct.task_security_struct** %6, align 8
  %75 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.task_security_struct*, %struct.task_security_struct** %7, align 8
  %78 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @security_bounded_transition(i32* @selinux_state, i64 %76, i64 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %93

84:                                               ; preds = %73
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* @EPERM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @EACCES, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %90, %87, %83, %71, %41, %32
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @mnt_may_suid(i32) #1

declare dso_local i64 @selinux_policycap_nnp_nosuid_transition(...) #1

declare dso_local i32 @avc_has_perm(i32*, i64, i64, i32, i32, i32*) #1

declare dso_local i32 @security_bounded_transition(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
