; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_pids.c_pids_try_charge.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_pids.c_pids_try_charge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pids_cgroup = type { i64, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pids_cgroup*, i32)* @pids_try_charge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pids_try_charge(%struct.pids_cgroup* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pids_cgroup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pids_cgroup*, align 8
  %7 = alloca %struct.pids_cgroup*, align 8
  %8 = alloca i64, align 8
  store %struct.pids_cgroup* %0, %struct.pids_cgroup** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pids_cgroup*, %struct.pids_cgroup** %4, align 8
  store %struct.pids_cgroup* %9, %struct.pids_cgroup** %6, align 8
  br label %10

10:                                               ; preds = %26, %2
  %11 = load %struct.pids_cgroup*, %struct.pids_cgroup** %6, align 8
  %12 = call %struct.pids_cgroup* @parent_pids(%struct.pids_cgroup* %11)
  %13 = icmp ne %struct.pids_cgroup* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.pids_cgroup*, %struct.pids_cgroup** %6, align 8
  %17 = getelementptr inbounds %struct.pids_cgroup, %struct.pids_cgroup* %16, i32 0, i32 1
  %18 = call i64 @atomic64_add_return(i32 %15, i32* %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.pids_cgroup*, %struct.pids_cgroup** %6, align 8
  %21 = getelementptr inbounds %struct.pids_cgroup, %struct.pids_cgroup* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %30

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.pids_cgroup*, %struct.pids_cgroup** %6, align 8
  %28 = call %struct.pids_cgroup* @parent_pids(%struct.pids_cgroup* %27)
  store %struct.pids_cgroup* %28, %struct.pids_cgroup** %6, align 8
  br label %10

29:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %49

30:                                               ; preds = %24
  %31 = load %struct.pids_cgroup*, %struct.pids_cgroup** %4, align 8
  store %struct.pids_cgroup* %31, %struct.pids_cgroup** %7, align 8
  br label %32

32:                                               ; preds = %40, %30
  %33 = load %struct.pids_cgroup*, %struct.pids_cgroup** %7, align 8
  %34 = load %struct.pids_cgroup*, %struct.pids_cgroup** %6, align 8
  %35 = icmp ne %struct.pids_cgroup* %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.pids_cgroup*, %struct.pids_cgroup** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @pids_cancel(%struct.pids_cgroup* %37, i32 %38)
  br label %40

40:                                               ; preds = %36
  %41 = load %struct.pids_cgroup*, %struct.pids_cgroup** %7, align 8
  %42 = call %struct.pids_cgroup* @parent_pids(%struct.pids_cgroup* %41)
  store %struct.pids_cgroup* %42, %struct.pids_cgroup** %7, align 8
  br label %32

43:                                               ; preds = %32
  %44 = load %struct.pids_cgroup*, %struct.pids_cgroup** %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @pids_cancel(%struct.pids_cgroup* %44, i32 %45)
  %47 = load i32, i32* @EAGAIN, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %43, %29
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.pids_cgroup* @parent_pids(%struct.pids_cgroup*) #1

declare dso_local i64 @atomic64_add_return(i32, i32*) #1

declare dso_local i32 @pids_cancel(%struct.pids_cgroup*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
