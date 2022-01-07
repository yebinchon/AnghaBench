; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_init_fs_context.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_init_fs_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.fs_context = type { i32, i32, i32*, i32*, i32* }
%struct.cgroup_fs_context = type { %struct.TYPE_5__*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@use_task_css_set_links = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@cgroup2_fs_type = common dso_local global i32 0, align 4
@cgroup_fs_context_ops = common dso_local global i32 0, align 4
@cgroup1_fs_context_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @cgroup_init_fs_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_init_fs_context(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.cgroup_fs_context*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.cgroup_fs_context* @kzalloc(i32 16, i32 %5)
  store %struct.cgroup_fs_context* %6, %struct.cgroup_fs_context** %4, align 8
  %7 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %4, align 8
  %8 = icmp ne %struct.cgroup_fs_context* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %58

12:                                               ; preds = %1
  %13 = load i32, i32* @use_task_css_set_links, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = call i32 (...) @cgroup_enable_task_cg_lists()
  br label %17

17:                                               ; preds = %15, %12
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %4, align 8
  %24 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %23, i32 0, i32 0
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %24, align 8
  %25 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %4, align 8
  %26 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = call i32 @get_cgroup_ns(%struct.TYPE_5__* %27)
  %29 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %4, align 8
  %30 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %29, i32 0, i32 1
  %31 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %32 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %31, i32 0, i32 4
  store i32* %30, i32** %32, align 8
  %33 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %34 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, @cgroup2_fs_type
  br i1 %36, label %37, label %40

37:                                               ; preds = %17
  %38 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %39 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %38, i32 0, i32 2
  store i32* @cgroup_fs_context_ops, i32** %39, align 8
  br label %43

40:                                               ; preds = %17
  %41 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %42 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %41, i32 0, i32 2
  store i32* @cgroup1_fs_context_ops, i32** %42, align 8
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %45 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @put_user_ns(i32 %46)
  %48 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %4, align 8
  %49 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @get_user_ns(i32 %52)
  %54 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %55 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %57 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %43, %9
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.cgroup_fs_context* @kzalloc(i32, i32) #1

declare dso_local i32 @cgroup_enable_task_cg_lists(...) #1

declare dso_local i32 @get_cgroup_ns(%struct.TYPE_5__*) #1

declare dso_local i32 @put_user_ns(i32) #1

declare dso_local i32 @get_user_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
