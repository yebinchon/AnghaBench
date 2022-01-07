; ModuleID = '/home/carl/AnghaBench/linux/security/safesetid/extr_lsm.c_safesetid_security_capable.c'
source_filename = "/home/carl/AnghaBench/linux/security/safesetid/extr_lsm.c_safesetid_security_capable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }
%struct.user_namespace = type { i32 }

@CAP_SETUID = common dso_local global i32 0, align 4
@CAP_OPT_INSETID = common dso_local global i32 0, align 4
@INVALID_UID = common dso_local global i32 0, align 4
@SIDPOL_DEFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [117 x i8] c"Operation requires CAP_SETUID, which is not available to UID %u for operations besides approved set*uid transitions\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, %struct.user_namespace*, i32, i32)* @safesetid_security_capable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safesetid_security_capable(%struct.cred* %0, %struct.user_namespace* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cred*, align 8
  %7 = alloca %struct.user_namespace*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %6, align 8
  store %struct.user_namespace* %1, %struct.user_namespace** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @CAP_SETUID, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %37

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @CAP_OPT_INSETID, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %37

20:                                               ; preds = %14
  %21 = load %struct.cred*, %struct.cred** %6, align 8
  %22 = getelementptr inbounds %struct.cred, %struct.cred* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @INVALID_UID, align 4
  %25 = call i64 @setuid_policy_lookup(i32 %23, i32 %24)
  %26 = load i64, i64* @SIDPOL_DEFAULT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %37

29:                                               ; preds = %20
  %30 = load %struct.cred*, %struct.cred** %6, align 8
  %31 = getelementptr inbounds %struct.cred, %struct.cred* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @__kuid_val(i32 %32)
  %34 = call i32 @pr_warn(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %29, %28, %19, %13
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i64 @setuid_policy_lookup(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @__kuid_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
