; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_policy_view_capable.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_policy_view_capable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { i64 }
%struct.aa_ns = type { i64 }

@init_user_ns = common dso_local global %struct.user_namespace zeroinitializer, align 8
@unprivileged_userns_apparmor_policy = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @policy_view_capable(%struct.aa_ns* %0) #0 {
  %2 = alloca %struct.aa_ns*, align 8
  %3 = alloca %struct.user_namespace*, align 8
  %4 = alloca %struct.aa_ns*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aa_ns* %0, %struct.aa_ns** %2, align 8
  %7 = call %struct.user_namespace* (...) @current_user_ns()
  store %struct.user_namespace* %7, %struct.user_namespace** %3, align 8
  %8 = call %struct.aa_ns* (...) @aa_get_current_ns()
  store %struct.aa_ns* %8, %struct.aa_ns** %4, align 8
  %9 = call i32 (...) @current_euid()
  %10 = load %struct.user_namespace*, %struct.user_namespace** %3, align 8
  %11 = call i32 @make_kuid(%struct.user_namespace* %10, i32 0)
  %12 = call i64 @uid_eq(i32 %9, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.user_namespace*, %struct.user_namespace** %3, align 8
  %16 = call i32 @make_kgid(%struct.user_namespace* %15, i32 0)
  %17 = call i64 @in_egroup_p(i32 %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %14, %1
  %20 = phi i1 [ true, %1 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %22 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %23 = icmp ne %struct.aa_ns* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load %struct.aa_ns*, %struct.aa_ns** %4, align 8
  store %struct.aa_ns* %25, %struct.aa_ns** %2, align 8
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load %struct.aa_ns*, %struct.aa_ns** %4, align 8
  %31 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %32 = call i64 @aa_ns_visible(%struct.aa_ns* %30, %struct.aa_ns* %31, i32 1)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load %struct.user_namespace*, %struct.user_namespace** %3, align 8
  %36 = icmp eq %struct.user_namespace* %35, @init_user_ns
  br i1 %36, label %48, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* @unprivileged_userns_apparmor_policy, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load %struct.user_namespace*, %struct.user_namespace** %3, align 8
  %42 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.aa_ns*, %struct.aa_ns** %4, align 8
  %45 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40, %34
  store i32 1, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %40, %37, %29, %26
  %50 = load %struct.aa_ns*, %struct.aa_ns** %4, align 8
  %51 = call i32 @aa_put_ns(%struct.aa_ns* %50)
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local %struct.user_namespace* @current_user_ns(...) #1

declare dso_local %struct.aa_ns* @aa_get_current_ns(...) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i32 @current_euid(...) #1

declare dso_local i32 @make_kuid(%struct.user_namespace*, i32) #1

declare dso_local i64 @in_egroup_p(i32) #1

declare dso_local i32 @make_kgid(%struct.user_namespace*, i32) #1

declare dso_local i64 @aa_ns_visible(%struct.aa_ns*, %struct.aa_ns*, i32) #1

declare dso_local i32 @aa_put_ns(%struct.aa_ns*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
