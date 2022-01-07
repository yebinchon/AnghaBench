; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_add_dfl_cftypes.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_add_dfl_cftypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys = type { i32 }
%struct.cftype = type { i8*, i32 }

@__CFTYPE_ONLY_ON_DFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgroup_add_dfl_cftypes(%struct.cgroup_subsys* %0, %struct.cftype* %1) #0 {
  %3 = alloca %struct.cgroup_subsys*, align 8
  %4 = alloca %struct.cftype*, align 8
  %5 = alloca %struct.cftype*, align 8
  store %struct.cgroup_subsys* %0, %struct.cgroup_subsys** %3, align 8
  store %struct.cftype* %1, %struct.cftype** %4, align 8
  %6 = load %struct.cftype*, %struct.cftype** %4, align 8
  store %struct.cftype* %6, %struct.cftype** %5, align 8
  br label %7

7:                                                ; preds = %26, %2
  %8 = load %struct.cftype*, %struct.cftype** %5, align 8
  %9 = icmp ne %struct.cftype* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load %struct.cftype*, %struct.cftype** %5, align 8
  %12 = getelementptr inbounds %struct.cftype, %struct.cftype* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %10, %7
  %19 = phi i1 [ false, %7 ], [ %17, %10 ]
  br i1 %19, label %20, label %29

20:                                               ; preds = %18
  %21 = load i32, i32* @__CFTYPE_ONLY_ON_DFL, align 4
  %22 = load %struct.cftype*, %struct.cftype** %5, align 8
  %23 = getelementptr inbounds %struct.cftype, %struct.cftype* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %20
  %27 = load %struct.cftype*, %struct.cftype** %5, align 8
  %28 = getelementptr inbounds %struct.cftype, %struct.cftype* %27, i32 1
  store %struct.cftype* %28, %struct.cftype** %5, align 8
  br label %7

29:                                               ; preds = %18
  %30 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %3, align 8
  %31 = load %struct.cftype*, %struct.cftype** %4, align 8
  %32 = call i32 @cgroup_add_cftypes(%struct.cgroup_subsys* %30, %struct.cftype* %31)
  ret i32 %32
}

declare dso_local i32 @cgroup_add_cftypes(%struct.cgroup_subsys*, %struct.cftype*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
