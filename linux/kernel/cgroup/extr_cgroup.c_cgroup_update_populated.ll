; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_update_populated.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_update_populated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32, i32, i32, i32 }

@css_set_lock = common dso_local global i32 0, align 4
@notify_populated = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup*, i32)* @cgroup_update_populated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgroup_update_populated(%struct.cgroup* %0, i32 %1) #0 {
  %3 = alloca %struct.cgroup*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.cgroup* null, %struct.cgroup** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 1, i32 -1
  store i32 %11, i32* %6, align 4
  %12 = call i32 @lockdep_assert_held(i32* @css_set_lock)
  br label %13

13:                                               ; preds = %61, %2
  %14 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %15 = call i32 @cgroup_is_populated(%struct.cgroup* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %17 = icmp ne %struct.cgroup* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %21 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %41

24:                                               ; preds = %13
  %25 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %26 = call i64 @cgroup_is_threaded(%struct.cgroup* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %31 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %40

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %37 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %28
  br label %41

41:                                               ; preds = %40, %18
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %44 = call i32 @cgroup_is_populated(%struct.cgroup* %43)
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %64

47:                                               ; preds = %41
  %48 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %49 = call i32 @cgroup1_check_for_release(%struct.cgroup* %48)
  %50 = load i32, i32* @notify_populated, align 4
  %51 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %52 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %53 = call i32 @cgroup_is_populated(%struct.cgroup* %52)
  %54 = call i32 @TRACE_CGROUP_PATH(i32 %50, %struct.cgroup* %51, i32 %53)
  %55 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %56 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %55, i32 0, i32 3
  %57 = call i32 @cgroup_file_notify(i32* %56)
  %58 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  store %struct.cgroup* %58, %struct.cgroup** %5, align 8
  %59 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %60 = call %struct.cgroup* @cgroup_parent(%struct.cgroup* %59)
  store %struct.cgroup* %60, %struct.cgroup** %3, align 8
  br label %61

61:                                               ; preds = %47
  %62 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %63 = icmp ne %struct.cgroup* %62, null
  br i1 %63, label %13, label %64

64:                                               ; preds = %61, %46
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @cgroup_is_populated(%struct.cgroup*) #1

declare dso_local i64 @cgroup_is_threaded(%struct.cgroup*) #1

declare dso_local i32 @cgroup1_check_for_release(%struct.cgroup*) #1

declare dso_local i32 @TRACE_CGROUP_PATH(i32, %struct.cgroup*, i32) #1

declare dso_local i32 @cgroup_file_notify(i32*) #1

declare dso_local %struct.cgroup* @cgroup_parent(%struct.cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
