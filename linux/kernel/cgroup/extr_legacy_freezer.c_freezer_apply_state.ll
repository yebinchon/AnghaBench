; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_legacy_freezer.c_freezer_apply_state.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_legacy_freezer.c_freezer_apply_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.freezer = type { i32 }

@freezer_mutex = common dso_local global i32 0, align 4
@CGROUP_FREEZER_ONLINE = common dso_local global i32 0, align 4
@CGROUP_FREEZING = common dso_local global i32 0, align 4
@system_freezing_cnt = common dso_local global i32 0, align 4
@CGROUP_FROZEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.freezer*, i32, i32)* @freezer_apply_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freezer_apply_state(%struct.freezer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.freezer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.freezer* %0, %struct.freezer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 @lockdep_assert_held(i32* @freezer_mutex)
  %9 = load %struct.freezer*, %struct.freezer** %4, align 8
  %10 = getelementptr inbounds %struct.freezer, %struct.freezer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CGROUP_FREEZER_ONLINE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %69

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load %struct.freezer*, %struct.freezer** %4, align 8
  %21 = getelementptr inbounds %struct.freezer, %struct.freezer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CGROUP_FREEZING, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = call i32 @atomic_inc(i32* @system_freezing_cnt)
  br label %28

28:                                               ; preds = %26, %19
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.freezer*, %struct.freezer** %4, align 8
  %31 = getelementptr inbounds %struct.freezer, %struct.freezer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.freezer*, %struct.freezer** %4, align 8
  %35 = call i32 @freeze_cgroup(%struct.freezer* %34)
  br label %69

36:                                               ; preds = %16
  %37 = load %struct.freezer*, %struct.freezer** %4, align 8
  %38 = getelementptr inbounds %struct.freezer, %struct.freezer* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CGROUP_FREEZING, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.freezer*, %struct.freezer** %4, align 8
  %45 = getelementptr inbounds %struct.freezer, %struct.freezer* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.freezer*, %struct.freezer** %4, align 8
  %49 = getelementptr inbounds %struct.freezer, %struct.freezer* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CGROUP_FREEZING, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %36
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @atomic_dec(i32* @system_freezing_cnt)
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i32, i32* @CGROUP_FROZEN, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.freezer*, %struct.freezer** %4, align 8
  %63 = getelementptr inbounds %struct.freezer, %struct.freezer* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.freezer*, %struct.freezer** %4, align 8
  %67 = call i32 @unfreeze_cgroup(%struct.freezer* %66)
  br label %68

68:                                               ; preds = %59, %36
  br label %69

69:                                               ; preds = %15, %68, %28
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @freeze_cgroup(%struct.freezer*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @unfreeze_cgroup(%struct.freezer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
