; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_aa_may_manage_policy.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_aa_may_manage_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.aa_ns = type { i32 }

@AA_MAY_REMOVE_POLICY = common dso_local global i32 0, align 4
@OP_PROF_RM = common dso_local global i8* null, align 8
@AA_MAY_REPLACE_POLICY = common dso_local global i32 0, align 4
@OP_PROF_REPL = common dso_local global i8* null, align 8
@OP_PROF_LOAD = common dso_local global i8* null, align 8
@aa_g_lock_policy = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"policy_locked\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"not policy admin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_may_manage_policy(%struct.aa_label* %0, %struct.aa_ns* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca %struct.aa_ns*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.aa_label* %0, %struct.aa_label** %5, align 8
  store %struct.aa_ns* %1, %struct.aa_ns** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @AA_MAY_REMOVE_POLICY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i8*, i8** @OP_PROF_RM, align 8
  store i8* %14, i8** %8, align 8
  br label %25

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @AA_MAY_REPLACE_POLICY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i8*, i8** @OP_PROF_REPL, align 8
  store i8* %21, i8** %8, align 8
  br label %24

22:                                               ; preds = %15
  %23 = load i8*, i8** @OP_PROF_LOAD, align 8
  store i8* %23, i8** %8, align 8
  br label %24

24:                                               ; preds = %22, %20
  br label %25

25:                                               ; preds = %24, %13
  %26 = load i64, i64* @aa_g_lock_policy, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* @EACCES, align 4
  %32 = sub nsw i32 0, %31
  %33 = call i32 @audit_policy(%struct.aa_label* %29, i8* %30, i32* null, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 %33, i32* %4, align 4
  br label %45

34:                                               ; preds = %25
  %35 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %36 = call i32 @policy_admin_capable(%struct.aa_ns* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* @EACCES, align 4
  %42 = sub nsw i32 0, %41
  %43 = call i32 @audit_policy(%struct.aa_label* %39, i8* %40, i32* null, i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  store i32 %43, i32* %4, align 4
  br label %45

44:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %38, %28
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @audit_policy(%struct.aa_label*, i8*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @policy_admin_capable(%struct.aa_ns*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
