; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_nsproxy.c_unshare_nsproxy_namespaces.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_nsproxy.c_unshare_nsproxy_namespaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.fs_struct* }
%struct.fs_struct = type { i32 }
%struct.nsproxy = type { i32 }
%struct.cred = type { %struct.user_namespace* }
%struct.user_namespace = type { i32 }

@CLONE_NEWNS = common dso_local global i64 0, align 8
@CLONE_NEWUTS = common dso_local global i64 0, align 8
@CLONE_NEWIPC = common dso_local global i64 0, align 8
@CLONE_NEWNET = common dso_local global i64 0, align 8
@CLONE_NEWPID = common dso_local global i64 0, align 8
@CLONE_NEWCGROUP = common dso_local global i64 0, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unshare_nsproxy_namespaces(i64 %0, %struct.nsproxy** %1, %struct.cred* %2, %struct.fs_struct* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.nsproxy**, align 8
  %8 = alloca %struct.cred*, align 8
  %9 = alloca %struct.fs_struct*, align 8
  %10 = alloca %struct.user_namespace*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store %struct.nsproxy** %1, %struct.nsproxy*** %7, align 8
  store %struct.cred* %2, %struct.cred** %8, align 8
  store %struct.fs_struct* %3, %struct.fs_struct** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @CLONE_NEWNS, align 8
  %14 = load i64, i64* @CLONE_NEWUTS, align 8
  %15 = or i64 %13, %14
  %16 = load i64, i64* @CLONE_NEWIPC, align 8
  %17 = or i64 %15, %16
  %18 = load i64, i64* @CLONE_NEWNET, align 8
  %19 = or i64 %17, %18
  %20 = load i64, i64* @CLONE_NEWPID, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* @CLONE_NEWCGROUP, align 8
  %23 = or i64 %21, %22
  %24 = and i64 %12, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %72

27:                                               ; preds = %4
  %28 = load %struct.cred*, %struct.cred** %8, align 8
  %29 = icmp ne %struct.cred* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.cred*, %struct.cred** %8, align 8
  %32 = getelementptr inbounds %struct.cred, %struct.cred* %31, i32 0, i32 0
  %33 = load %struct.user_namespace*, %struct.user_namespace** %32, align 8
  br label %36

34:                                               ; preds = %27
  %35 = call %struct.user_namespace* (...) @current_user_ns()
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi %struct.user_namespace* [ %33, %30 ], [ %35, %34 ]
  store %struct.user_namespace* %37, %struct.user_namespace** %10, align 8
  %38 = load %struct.user_namespace*, %struct.user_namespace** %10, align 8
  %39 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %40 = call i32 @ns_capable(%struct.user_namespace* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @EPERM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %72

45:                                               ; preds = %36
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %48 = load %struct.user_namespace*, %struct.user_namespace** %10, align 8
  %49 = load %struct.fs_struct*, %struct.fs_struct** %9, align 8
  %50 = icmp ne %struct.fs_struct* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load %struct.fs_struct*, %struct.fs_struct** %9, align 8
  br label %57

53:                                               ; preds = %45
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load %struct.fs_struct*, %struct.fs_struct** %55, align 8
  br label %57

57:                                               ; preds = %53, %51
  %58 = phi %struct.fs_struct* [ %52, %51 ], [ %56, %53 ]
  %59 = call %struct.nsproxy* @create_new_namespaces(i64 %46, %struct.TYPE_3__* %47, %struct.user_namespace* %48, %struct.fs_struct* %58)
  %60 = load %struct.nsproxy**, %struct.nsproxy*** %7, align 8
  store %struct.nsproxy* %59, %struct.nsproxy** %60, align 8
  %61 = load %struct.nsproxy**, %struct.nsproxy*** %7, align 8
  %62 = load %struct.nsproxy*, %struct.nsproxy** %61, align 8
  %63 = call i64 @IS_ERR(%struct.nsproxy* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load %struct.nsproxy**, %struct.nsproxy*** %7, align 8
  %67 = load %struct.nsproxy*, %struct.nsproxy** %66, align 8
  %68 = call i32 @PTR_ERR(%struct.nsproxy* %67)
  store i32 %68, i32* %11, align 4
  br label %70

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %65
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %42, %26
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.user_namespace* @current_user_ns(...) #1

declare dso_local i32 @ns_capable(%struct.user_namespace*, i32) #1

declare dso_local %struct.nsproxy* @create_new_namespaces(i64, %struct.TYPE_3__*, %struct.user_namespace*, %struct.fs_struct*) #1

declare dso_local i64 @IS_ERR(%struct.nsproxy*) #1

declare dso_local i32 @PTR_ERR(%struct.nsproxy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
