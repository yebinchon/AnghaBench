; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_policy_admin_capable.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_policy_admin_capable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ns = type { i32 }
%struct.user_namespace = type { i32 }

@CAP_MAC_ADMIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cap_mac_admin? %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"policy locked? %d\0A\00", align 1
@aa_g_lock_policy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @policy_admin_capable(%struct.aa_ns* %0) #0 {
  %2 = alloca %struct.aa_ns*, align 8
  %3 = alloca %struct.user_namespace*, align 8
  %4 = alloca i32, align 4
  store %struct.aa_ns* %0, %struct.aa_ns** %2, align 8
  %5 = call %struct.user_namespace* (...) @current_user_ns()
  store %struct.user_namespace* %5, %struct.user_namespace** %3, align 8
  %6 = load %struct.user_namespace*, %struct.user_namespace** %3, align 8
  %7 = load i32, i32* @CAP_MAC_ADMIN, align 4
  %8 = call i32 @ns_capable(%struct.user_namespace* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @AA_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @aa_g_lock_policy, align 4
  %12 = call i32 @AA_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %14 = call i64 @policy_view_capable(%struct.aa_ns* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* @aa_g_lock_policy, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %19, %16, %1
  %24 = phi i1 [ false, %16 ], [ false, %1 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local %struct.user_namespace* @current_user_ns(...) #1

declare dso_local i32 @ns_capable(%struct.user_namespace*, i32) #1

declare dso_local i32 @AA_DEBUG(i8*, i32) #1

declare dso_local i64 @policy_view_capable(%struct.aa_ns*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
