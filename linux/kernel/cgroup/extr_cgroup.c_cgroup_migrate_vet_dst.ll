; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_migrate_vet_dst.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_migrate_vet_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i64, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgroup_migrate_vet_dst(%struct.cgroup* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cgroup*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %3, align 8
  %4 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %5 = call i32 @cgroup_on_dfl(%struct.cgroup* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

8:                                                ; preds = %1
  %9 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %10 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @cgroup_is_valid_domain(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %40

17:                                               ; preds = %8
  %18 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %19 = call i64 @cgroup_is_mixable(%struct.cgroup* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %40

22:                                               ; preds = %17
  %23 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %24 = call i64 @cgroup_can_be_thread_root(%struct.cgroup* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %28 = call i64 @cgroup_is_threaded(%struct.cgroup* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22
  store i32 0, i32* %2, align 4
  br label %40

31:                                               ; preds = %26
  %32 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %33 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %36, %30, %21, %14, %7
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @cgroup_on_dfl(%struct.cgroup*) #1

declare dso_local i32 @cgroup_is_valid_domain(i32) #1

declare dso_local i64 @cgroup_is_mixable(%struct.cgroup*) #1

declare dso_local i64 @cgroup_can_be_thread_root(%struct.cgroup*) #1

declare dso_local i64 @cgroup_is_threaded(%struct.cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
