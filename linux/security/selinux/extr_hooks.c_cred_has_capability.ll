; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_cred_has_capability.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_cred_has_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }
%struct.common_audit_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.av_decision = type { i32 }

@LSM_AUDIT_DATA_CAP = common dso_local global i32 0, align 4
@SECCLASS_CAPABILITY = common dso_local global i32 0, align 4
@SECCLASS_CAP_USERNS = common dso_local global i32 0, align 4
@SECCLASS_CAPABILITY2 = common dso_local global i32 0, align 4
@SECCLASS_CAP2_USERNS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"SELinux:  out of range capability %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@CAP_OPT_NOAUDIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, i32, i32, i32)* @cred_has_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cred_has_capability(%struct.cred* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.common_audit_data, align 4
  %11 = alloca %struct.av_decision, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.cred*, %struct.cred** %6, align 8
  %18 = call i32 @cred_sid(%struct.cred* %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @CAP_TO_MASK(i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* @LSM_AUDIT_DATA_CAP, align 4
  %22 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %10, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %10, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @CAP_TO_INDEX(i32 %26)
  switch i32 %27, label %46 [
    i32 0, label %28
    i32 1, label %37
  ]

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @SECCLASS_CAPABILITY, align 4
  br label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @SECCLASS_CAP_USERNS, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %12, align 4
  br label %52

37:                                               ; preds = %4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @SECCLASS_CAPABILITY2, align 4
  br label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @SECCLASS_CAP2_USERNS, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %12, align 4
  br label %52

46:                                               ; preds = %4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = call i32 (...) @BUG()
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %76

52:                                               ; preds = %44, %35
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @avc_has_perm_noaudit(i32* @selinux_state, i32 %53, i32 %54, i32 %55, i32 %56, i32 0, %struct.av_decision* %11)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @CAP_OPT_NOAUDIT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @avc_audit(i32* @selinux_state, i32 %63, i32 %64, i32 %65, i32 %66, %struct.av_decision* %11, i32 %67, %struct.common_audit_data* %10, i32 0)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* %16, align 4
  store i32 %72, i32* %5, align 4
  br label %76

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %52
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %71, %46
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @cred_sid(%struct.cred*) #1

declare dso_local i32 @CAP_TO_MASK(i32) #1

declare dso_local i32 @CAP_TO_INDEX(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @avc_has_perm_noaudit(i32*, i32, i32, i32, i32, i32, %struct.av_decision*) #1

declare dso_local i32 @avc_audit(i32*, i32, i32, i32, i32, %struct.av_decision*, i32, %struct.common_audit_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
