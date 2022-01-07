; ModuleID = '/home/carl/AnghaBench/linux/security/extr_device_cgroup.c_verify_new_ex.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_device_cgroup.c_verify_new_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_cgroup = type { i64, i32 }
%struct.dev_exception_item = type { i32, i32, i32, i32 }

@devcgroup_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"device_cgroup:verify_new_ex called without proper synchronization\00", align 1
@DEVCG_DEFAULT_ALLOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dev_cgroup*, %struct.dev_exception_item*, i32)* @verify_new_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_new_ex(%struct.dev_cgroup* %0, %struct.dev_exception_item* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dev_cgroup*, align 8
  %6 = alloca %struct.dev_exception_item*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dev_cgroup* %0, %struct.dev_cgroup** %5, align 8
  store %struct.dev_exception_item* %1, %struct.dev_exception_item** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = call i32 (...) @rcu_read_lock_held()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = call i32 @lockdep_is_held(i32* @devcgroup_mutex)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i1 [ false, %3 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @RCU_LOCKDEP_WARN(i32 %17, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.dev_cgroup*, %struct.dev_cgroup** %5, align 8
  %20 = getelementptr inbounds %struct.dev_cgroup, %struct.dev_cgroup* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DEVCG_DEFAULT_ALLOW, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = load i64, i64* @DEVCG_DEFAULT_ALLOW, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %70

30:                                               ; preds = %24
  %31 = load %struct.dev_cgroup*, %struct.dev_cgroup** %5, align 8
  %32 = getelementptr inbounds %struct.dev_cgroup, %struct.dev_cgroup* %31, i32 0, i32 1
  %33 = load %struct.dev_exception_item*, %struct.dev_exception_item** %6, align 8
  %34 = getelementptr inbounds %struct.dev_exception_item, %struct.dev_exception_item* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dev_exception_item*, %struct.dev_exception_item** %6, align 8
  %37 = getelementptr inbounds %struct.dev_exception_item, %struct.dev_exception_item* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dev_exception_item*, %struct.dev_exception_item** %6, align 8
  %40 = getelementptr inbounds %struct.dev_exception_item, %struct.dev_exception_item* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dev_exception_item*, %struct.dev_exception_item** %6, align 8
  %43 = getelementptr inbounds %struct.dev_exception_item, %struct.dev_exception_item* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @match_exception_partial(i32* %32, i32 %35, i32 %38, i32 %41, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %70

49:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %70

50:                                               ; preds = %15
  %51 = load %struct.dev_cgroup*, %struct.dev_cgroup** %5, align 8
  %52 = getelementptr inbounds %struct.dev_cgroup, %struct.dev_cgroup* %51, i32 0, i32 1
  %53 = load %struct.dev_exception_item*, %struct.dev_exception_item** %6, align 8
  %54 = getelementptr inbounds %struct.dev_exception_item, %struct.dev_exception_item* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dev_exception_item*, %struct.dev_exception_item** %6, align 8
  %57 = getelementptr inbounds %struct.dev_exception_item, %struct.dev_exception_item* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dev_exception_item*, %struct.dev_exception_item** %6, align 8
  %60 = getelementptr inbounds %struct.dev_exception_item, %struct.dev_exception_item* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dev_exception_item*, %struct.dev_exception_item** %6, align 8
  %63 = getelementptr inbounds %struct.dev_exception_item, %struct.dev_exception_item* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @match_exception(i32* %52, i32 %55, i32 %58, i32 %61, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %70

69:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %68, %49, %48, %29
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @RCU_LOCKDEP_WARN(i32, i8*) #1

declare dso_local i32 @rcu_read_lock_held(...) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @match_exception_partial(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @match_exception(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
