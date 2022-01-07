; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_cpuset_migrate_mm.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_cpuset_migrate_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.cpuset_migrate_mm_work = type { i32, i32, i32, %struct.mm_struct* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@cpuset_migrate_mm_workfn = common dso_local global i32 0, align 4
@cpuset_migrate_mm_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i32*, i32*)* @cpuset_migrate_mm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpuset_migrate_mm(%struct.mm_struct* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cpuset_migrate_mm_work*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.cpuset_migrate_mm_work* @kzalloc(i32 24, i32 %8)
  store %struct.cpuset_migrate_mm_work* %9, %struct.cpuset_migrate_mm_work** %7, align 8
  %10 = load %struct.cpuset_migrate_mm_work*, %struct.cpuset_migrate_mm_work** %7, align 8
  %11 = icmp ne %struct.cpuset_migrate_mm_work* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %3
  %13 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %14 = load %struct.cpuset_migrate_mm_work*, %struct.cpuset_migrate_mm_work** %7, align 8
  %15 = getelementptr inbounds %struct.cpuset_migrate_mm_work, %struct.cpuset_migrate_mm_work* %14, i32 0, i32 3
  store %struct.mm_struct* %13, %struct.mm_struct** %15, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cpuset_migrate_mm_work*, %struct.cpuset_migrate_mm_work** %7, align 8
  %19 = getelementptr inbounds %struct.cpuset_migrate_mm_work, %struct.cpuset_migrate_mm_work* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cpuset_migrate_mm_work*, %struct.cpuset_migrate_mm_work** %7, align 8
  %23 = getelementptr inbounds %struct.cpuset_migrate_mm_work, %struct.cpuset_migrate_mm_work* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.cpuset_migrate_mm_work*, %struct.cpuset_migrate_mm_work** %7, align 8
  %25 = getelementptr inbounds %struct.cpuset_migrate_mm_work, %struct.cpuset_migrate_mm_work* %24, i32 0, i32 0
  %26 = load i32, i32* @cpuset_migrate_mm_workfn, align 4
  %27 = call i32 @INIT_WORK(i32* %25, i32 %26)
  %28 = load i32, i32* @cpuset_migrate_mm_wq, align 4
  %29 = load %struct.cpuset_migrate_mm_work*, %struct.cpuset_migrate_mm_work** %7, align 8
  %30 = getelementptr inbounds %struct.cpuset_migrate_mm_work, %struct.cpuset_migrate_mm_work* %29, i32 0, i32 0
  %31 = call i32 @queue_work(i32 %28, i32* %30)
  br label %35

32:                                               ; preds = %3
  %33 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %34 = call i32 @mmput(%struct.mm_struct* %33)
  br label %35

35:                                               ; preds = %32, %12
  ret void
}

declare dso_local %struct.cpuset_migrate_mm_work* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
