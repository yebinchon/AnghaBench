; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_apply_cgroup_root_flags.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_apply_cgroup_root_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@init_cgroup_ns = common dso_local global i32 0, align 4
@CGRP_ROOT_NS_DELEGATE = common dso_local global i32 0, align 4
@cgrp_dfl_root = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@CGRP_ROOT_MEMORY_LOCAL_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @apply_cgroup_root_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_cgroup_root_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, @init_cgroup_ns
  br i1 %8, label %9, label %38

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @CGRP_ROOT_NS_DELEGATE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load i32, i32* @CGRP_ROOT_NS_DELEGATE, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgrp_dfl_root, i32 0, i32 0), align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgrp_dfl_root, i32 0, i32 0), align 4
  br label %23

18:                                               ; preds = %9
  %19 = load i32, i32* @CGRP_ROOT_NS_DELEGATE, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgrp_dfl_root, i32 0, i32 0), align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgrp_dfl_root, i32 0, i32 0), align 4
  br label %23

23:                                               ; preds = %18, %14
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @CGRP_ROOT_MEMORY_LOCAL_EVENTS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @CGRP_ROOT_MEMORY_LOCAL_EVENTS, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgrp_dfl_root, i32 0, i32 0), align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgrp_dfl_root, i32 0, i32 0), align 4
  br label %37

32:                                               ; preds = %23
  %33 = load i32, i32* @CGRP_ROOT_MEMORY_LOCAL_EVENTS, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgrp_dfl_root, i32 0, i32 0), align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgrp_dfl_root, i32 0, i32 0), align 4
  br label %37

37:                                               ; preds = %32, %28
  br label %38

38:                                               ; preds = %37, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
