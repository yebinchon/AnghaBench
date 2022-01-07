; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_task_dump_owner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_task_dump_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.mm_struct* }
%struct.mm_struct = type { %struct.user_namespace* }
%struct.user_namespace = type { i32 }
%struct.cred = type { i32, i32 }

@PF_KTHREAD = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@SUID_DUMP_USER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @task_dump_owner(%struct.task_struct* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.cred*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mm_struct*, align 8
  %13 = alloca %struct.user_namespace*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PF_KTHREAD, align 4
  %18 = and i32 %16, %17
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %25 = load i32*, i32** %8, align 8
  store i32 %24, i32* %25, align 4
  br label %89

26:                                               ; preds = %4
  %27 = call i32 (...) @rcu_read_lock()
  %28 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %29 = call %struct.cred* @__task_cred(%struct.task_struct* %28)
  store %struct.cred* %29, %struct.cred** %9, align 8
  %30 = load %struct.cred*, %struct.cred** %9, align 8
  %31 = getelementptr inbounds %struct.cred, %struct.cred* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.cred*, %struct.cred** %9, align 8
  %34 = getelementptr inbounds %struct.cred, %struct.cred* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = call i32 (...) @rcu_read_unlock()
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @S_IFDIR, align 4
  %39 = load i32, i32* @S_IRUGO, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @S_IXUGO, align 4
  %42 = or i32 %40, %41
  %43 = icmp ne i32 %37, %42
  br i1 %43, label %44, label %84

44:                                               ; preds = %26
  %45 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %46 = call i32 @task_lock(%struct.task_struct* %45)
  %47 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %48 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %47, i32 0, i32 1
  %49 = load %struct.mm_struct*, %struct.mm_struct** %48, align 8
  store %struct.mm_struct* %49, %struct.mm_struct** %12, align 8
  %50 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %51 = icmp ne %struct.mm_struct* %50, null
  br i1 %51, label %52, label %78

52:                                               ; preds = %44
  %53 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %54 = call i64 @get_dumpable(%struct.mm_struct* %53)
  %55 = load i64, i64* @SUID_DUMP_USER, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %52
  %58 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %59 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %58, i32 0, i32 0
  %60 = load %struct.user_namespace*, %struct.user_namespace** %59, align 8
  store %struct.user_namespace* %60, %struct.user_namespace** %13, align 8
  %61 = load %struct.user_namespace*, %struct.user_namespace** %13, align 8
  %62 = call i32 @make_kuid(%struct.user_namespace* %61, i32 0)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @uid_valid(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %66, %57
  %69 = load %struct.user_namespace*, %struct.user_namespace** %13, align 8
  %70 = call i32 @make_kgid(%struct.user_namespace* %69, i32 0)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @gid_valid(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %74, %68
  br label %77

77:                                               ; preds = %76, %52
  br label %81

78:                                               ; preds = %44
  %79 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %78, %77
  %82 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %83 = call i32 @task_unlock(%struct.task_struct* %82)
  br label %84

84:                                               ; preds = %81, %26
  %85 = load i32, i32* %10, align 4
  %86 = load i32*, i32** %7, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32*, i32** %8, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %84, %21
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i64 @get_dumpable(%struct.mm_struct*) #1

declare dso_local i32 @make_kuid(%struct.user_namespace*, i32) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @make_kgid(%struct.user_namespace*, i32) #1

declare dso_local i32 @gid_valid(i32) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
