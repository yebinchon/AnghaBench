; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap_cgroup.c_swap_cgroup_cmpxchg.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap_cgroup.c_swap_cgroup_cmpxchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_cgroup_ctrl = type { i32 }
%struct.swap_cgroup = type { i16 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @swap_cgroup_cmpxchg(i32 %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.swap_cgroup_ctrl*, align 8
  %8 = alloca %struct.swap_cgroup*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.swap_cgroup* @lookup_swap_cgroup(i32 %11, %struct.swap_cgroup_ctrl** %7)
  store %struct.swap_cgroup* %12, %struct.swap_cgroup** %8, align 8
  %13 = load %struct.swap_cgroup_ctrl*, %struct.swap_cgroup_ctrl** %7, align 8
  %14 = getelementptr inbounds %struct.swap_cgroup_ctrl, %struct.swap_cgroup_ctrl* %13, i32 0, i32 0
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.swap_cgroup*, %struct.swap_cgroup** %8, align 8
  %18 = getelementptr inbounds %struct.swap_cgroup, %struct.swap_cgroup* %17, i32 0, i32 0
  %19 = load i16, i16* %18, align 2
  store i16 %19, i16* %10, align 2
  %20 = load i16, i16* %10, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* %5, align 2
  %23 = zext i16 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i16, i16* %6, align 2
  %27 = load %struct.swap_cgroup*, %struct.swap_cgroup** %8, align 8
  %28 = getelementptr inbounds %struct.swap_cgroup, %struct.swap_cgroup* %27, i32 0, i32 0
  store i16 %26, i16* %28, align 2
  br label %30

29:                                               ; preds = %3
  store i16 0, i16* %10, align 2
  br label %30

30:                                               ; preds = %29, %25
  %31 = load %struct.swap_cgroup_ctrl*, %struct.swap_cgroup_ctrl** %7, align 8
  %32 = getelementptr inbounds %struct.swap_cgroup_ctrl, %struct.swap_cgroup_ctrl* %31, i32 0, i32 0
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i16, i16* %10, align 2
  ret i16 %35
}

declare dso_local %struct.swap_cgroup* @lookup_swap_cgroup(i32, %struct.swap_cgroup_ctrl**) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
