; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup2_parse_param.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup2_parse_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32 }
%struct.fs_parameter = type { i32 }
%struct.cgroup_fs_context = type { i32 }
%struct.fs_parse_result = type { i32 }

@cgroup2_fs_parameters = common dso_local global i32 0, align 4
@CGRP_ROOT_NS_DELEGATE = common dso_local global i32 0, align 4
@CGRP_ROOT_MEMORY_LOCAL_EVENTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*, %struct.fs_parameter*)* @cgroup2_parse_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup2_parse_param(%struct.fs_context* %0, %struct.fs_parameter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fs_context*, align 8
  %5 = alloca %struct.fs_parameter*, align 8
  %6 = alloca %struct.cgroup_fs_context*, align 8
  %7 = alloca %struct.fs_parse_result, align 4
  %8 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %4, align 8
  store %struct.fs_parameter* %1, %struct.fs_parameter** %5, align 8
  %9 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %10 = call %struct.cgroup_fs_context* @cgroup_fc2context(%struct.fs_context* %9)
  store %struct.cgroup_fs_context* %10, %struct.cgroup_fs_context** %6, align 8
  %11 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %12 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %13 = call i32 @fs_parse(%struct.fs_context* %11, i32* @cgroup2_fs_parameters, %struct.fs_parameter* %12, %struct.fs_parse_result* %7)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %35

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %32 [
    i32 128, label %20
    i32 129, label %26
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @CGRP_ROOT_NS_DELEGATE, align 4
  %22 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %6, align 8
  %23 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  store i32 0, i32* %3, align 4
  br label %35

26:                                               ; preds = %18
  %27 = load i32, i32* @CGRP_ROOT_MEMORY_LOCAL_EVENTS, align 4
  %28 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %6, align 8
  %29 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  store i32 0, i32* %3, align 4
  br label %35

32:                                               ; preds = %18
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %26, %20, %16
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.cgroup_fs_context* @cgroup_fc2context(%struct.fs_context*) #1

declare dso_local i32 @fs_parse(%struct.fs_context*, i32*, %struct.fs_parameter*, %struct.fs_parse_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
