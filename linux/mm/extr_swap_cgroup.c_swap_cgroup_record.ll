; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap_cgroup.c_swap_cgroup_record.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap_cgroup.c_swap_cgroup_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_cgroup_ctrl = type { i32 }
%struct.swap_cgroup = type { i16 }

@SC_PER_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @swap_cgroup_record(i32 %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct.swap_cgroup_ctrl*, align 8
  %8 = alloca %struct.swap_cgroup*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @swp_offset(i32 %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add i32 %15, %16
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.swap_cgroup* @lookup_swap_cgroup(i32 %18, %struct.swap_cgroup_ctrl** %7)
  store %struct.swap_cgroup* %19, %struct.swap_cgroup** %8, align 8
  %20 = load %struct.swap_cgroup_ctrl*, %struct.swap_cgroup_ctrl** %7, align 8
  %21 = getelementptr inbounds %struct.swap_cgroup_ctrl, %struct.swap_cgroup_ctrl* %20, i32 0, i32 0
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.swap_cgroup*, %struct.swap_cgroup** %8, align 8
  %25 = getelementptr inbounds %struct.swap_cgroup, %struct.swap_cgroup* %24, i32 0, i32 0
  %26 = load i16, i16* %25, align 2
  store i16 %26, i16* %9, align 2
  br label %27

27:                                               ; preds = %58, %3
  %28 = load %struct.swap_cgroup*, %struct.swap_cgroup** %8, align 8
  %29 = getelementptr inbounds %struct.swap_cgroup, %struct.swap_cgroup* %28, i32 0, i32 0
  %30 = load i16, i16* %29, align 2
  %31 = zext i16 %30 to i32
  %32 = load i16, i16* %9, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp ne i32 %31, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @VM_BUG_ON(i32 %35)
  %37 = load i16, i16* %5, align 2
  %38 = load %struct.swap_cgroup*, %struct.swap_cgroup** %8, align 8
  %39 = getelementptr inbounds %struct.swap_cgroup, %struct.swap_cgroup* %38, i32 0, i32 0
  store i16 %37, i16* %39, align 2
  %40 = load i32, i32* %11, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %27
  br label %59

46:                                               ; preds = %27
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @SC_PER_PAGE, align 4
  %49 = urem i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.swap_cgroup*, %struct.swap_cgroup** %8, align 8
  %53 = getelementptr inbounds %struct.swap_cgroup, %struct.swap_cgroup* %52, i32 1
  store %struct.swap_cgroup* %53, %struct.swap_cgroup** %8, align 8
  br label %58

54:                                               ; preds = %46
  %55 = load %struct.swap_cgroup_ctrl*, %struct.swap_cgroup_ctrl** %7, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call %struct.swap_cgroup* @__lookup_swap_cgroup(%struct.swap_cgroup_ctrl* %55, i32 %56)
  store %struct.swap_cgroup* %57, %struct.swap_cgroup** %8, align 8
  br label %58

58:                                               ; preds = %54, %51
  br label %27

59:                                               ; preds = %45
  %60 = load %struct.swap_cgroup_ctrl*, %struct.swap_cgroup_ctrl** %7, align 8
  %61 = getelementptr inbounds %struct.swap_cgroup_ctrl, %struct.swap_cgroup_ctrl* %60, i32 0, i32 0
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i16, i16* %9, align 2
  ret i16 %64
}

declare dso_local i32 @swp_offset(i32) #1

declare dso_local %struct.swap_cgroup* @lookup_swap_cgroup(i32, %struct.swap_cgroup_ctrl**) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local %struct.swap_cgroup* @__lookup_swap_cgroup(%struct.swap_cgroup_ctrl*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
