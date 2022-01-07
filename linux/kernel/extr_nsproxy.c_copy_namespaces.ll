; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_nsproxy.c_copy_namespaces.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_nsproxy.c_copy_namespaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { i32 }
%struct.task_struct = type { %struct.nsproxy*, i32 }
%struct.nsproxy = type { i32 }

@CLONE_NEWNS = common dso_local global i64 0, align 8
@CLONE_NEWUTS = common dso_local global i64 0, align 8
@CLONE_NEWIPC = common dso_local global i64 0, align 8
@CLONE_NEWPID = common dso_local global i64 0, align 8
@CLONE_NEWNET = common dso_local global i64 0, align 8
@CLONE_NEWCGROUP = common dso_local global i64 0, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CLONE_SYSVSEM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@user_ns = common dso_local global %struct.user_namespace* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_namespaces(i64 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.nsproxy*, align 8
  %7 = alloca %struct.user_namespace*, align 8
  %8 = alloca %struct.nsproxy*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  %11 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  store %struct.nsproxy* %11, %struct.nsproxy** %6, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %13 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %14 = ptrtoint %struct.user_namespace* %13 to i32
  %15 = call %struct.user_namespace* @task_cred_xxx(%struct.task_struct* %12, i32 %14)
  store %struct.user_namespace* %15, %struct.user_namespace** %7, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @CLONE_NEWNS, align 8
  %18 = load i64, i64* @CLONE_NEWUTS, align 8
  %19 = or i64 %17, %18
  %20 = load i64, i64* @CLONE_NEWIPC, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* @CLONE_NEWPID, align 8
  %23 = or i64 %21, %22
  %24 = load i64, i64* @CLONE_NEWNET, align 8
  %25 = or i64 %23, %24
  %26 = load i64, i64* @CLONE_NEWCGROUP, align 8
  %27 = or i64 %25, %26
  %28 = and i64 %16, %27
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load %struct.nsproxy*, %struct.nsproxy** %6, align 8
  %36 = call i32 @get_nsproxy(%struct.nsproxy* %35)
  store i32 0, i32* %3, align 4
  br label %76

37:                                               ; preds = %2
  %38 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %39 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %40 = call i32 @ns_capable(%struct.user_namespace* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @EPERM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %76

45:                                               ; preds = %37
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @CLONE_NEWIPC, align 8
  %48 = load i64, i64* @CLONE_SYSVSEM, align 8
  %49 = or i64 %47, %48
  %50 = and i64 %46, %49
  %51 = load i64, i64* @CLONE_NEWIPC, align 8
  %52 = load i64, i64* @CLONE_SYSVSEM, align 8
  %53 = or i64 %51, %52
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %76

58:                                               ; preds = %45
  %59 = load i64, i64* %4, align 8
  %60 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %61 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %62 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %63 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.nsproxy* @create_new_namespaces(i64 %59, %struct.task_struct* %60, %struct.user_namespace* %61, i32 %64)
  store %struct.nsproxy* %65, %struct.nsproxy** %8, align 8
  %66 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %67 = call i64 @IS_ERR(%struct.nsproxy* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %71 = call i32 @PTR_ERR(%struct.nsproxy* %70)
  store i32 %71, i32* %3, align 4
  br label %76

72:                                               ; preds = %58
  %73 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  %74 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %75 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %74, i32 0, i32 0
  store %struct.nsproxy* %73, %struct.nsproxy** %75, align 8
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %69, %55, %42, %34
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.user_namespace* @task_cred_xxx(%struct.task_struct*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @get_nsproxy(%struct.nsproxy*) #1

declare dso_local i32 @ns_capable(%struct.user_namespace*, i32) #1

declare dso_local %struct.nsproxy* @create_new_namespaces(i64, %struct.task_struct*, %struct.user_namespace*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nsproxy*) #1

declare dso_local i32 @PTR_ERR(%struct.nsproxy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
