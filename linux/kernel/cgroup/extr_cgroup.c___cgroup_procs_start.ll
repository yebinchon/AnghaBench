; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c___cgroup_procs_start.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c___cgroup_procs_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.kernfs_open_file* }
%struct.kernfs_open_file = type { %struct.css_task_iter* }
%struct.css_task_iter = type { i32 }
%struct.cgroup = type { i32 }
%struct.TYPE_2__ = type { %struct.cgroup* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i32*, i32)* @__cgroup_procs_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__cgroup_procs_start(%struct.seq_file* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kernfs_open_file*, align 8
  %9 = alloca %struct.cgroup*, align 8
  %10 = alloca %struct.css_task_iter*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %12, align 8
  store %struct.kernfs_open_file* %13, %struct.kernfs_open_file** %8, align 8
  %14 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %15 = call %struct.TYPE_2__* @seq_css(%struct.seq_file* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.cgroup*, %struct.cgroup** %16, align 8
  store %struct.cgroup* %17, %struct.cgroup** %9, align 8
  %18 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %8, align 8
  %19 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %18, i32 0, i32 0
  %20 = load %struct.css_task_iter*, %struct.css_task_iter** %19, align 8
  store %struct.css_task_iter* %20, %struct.css_task_iter** %10, align 8
  %21 = load %struct.css_task_iter*, %struct.css_task_iter** %10, align 8
  %22 = icmp ne %struct.css_task_iter* %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %3
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = call i64 @WARN_ON_ONCE(i32 %25)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i8* @ERR_PTR(i32 %31)
  store i8* %32, i8** %4, align 8
  br label %68

33:                                               ; preds = %23
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.css_task_iter* @kzalloc(i32 4, i32 %34)
  store %struct.css_task_iter* %35, %struct.css_task_iter** %10, align 8
  %36 = load %struct.css_task_iter*, %struct.css_task_iter** %10, align 8
  %37 = icmp ne %struct.css_task_iter* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = call i8* @ERR_PTR(i32 %40)
  store i8* %41, i8** %4, align 8
  br label %68

42:                                               ; preds = %33
  %43 = load %struct.css_task_iter*, %struct.css_task_iter** %10, align 8
  %44 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %8, align 8
  %45 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %44, i32 0, i32 0
  store %struct.css_task_iter* %43, %struct.css_task_iter** %45, align 8
  %46 = load %struct.cgroup*, %struct.cgroup** %9, align 8
  %47 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %46, i32 0, i32 0
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.css_task_iter*, %struct.css_task_iter** %10, align 8
  %50 = call i32 @css_task_iter_start(i32* %47, i32 %48, %struct.css_task_iter* %49)
  br label %65

51:                                               ; preds = %3
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = icmp ne i32 %53, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %51
  %57 = load %struct.css_task_iter*, %struct.css_task_iter** %10, align 8
  %58 = call i32 @css_task_iter_end(%struct.css_task_iter* %57)
  %59 = load %struct.cgroup*, %struct.cgroup** %9, align 8
  %60 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %59, i32 0, i32 0
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.css_task_iter*, %struct.css_task_iter** %10, align 8
  %63 = call i32 @css_task_iter_start(i32* %60, i32 %61, %struct.css_task_iter* %62)
  br label %64

64:                                               ; preds = %56, %51
  br label %65

65:                                               ; preds = %64, %42
  %66 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %67 = call i8* @cgroup_procs_next(%struct.seq_file* %66, i32* null, i32* null)
  store i8* %67, i8** %4, align 8
  br label %68

68:                                               ; preds = %65, %38, %29
  %69 = load i8*, i8** %4, align 8
  ret i8* %69
}

declare dso_local %struct.TYPE_2__* @seq_css(%struct.seq_file*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local %struct.css_task_iter* @kzalloc(i32, i32) #1

declare dso_local i32 @css_task_iter_start(i32*, i32, %struct.css_task_iter*) #1

declare dso_local i32 @css_task_iter_end(%struct.css_task_iter*) #1

declare dso_local i8* @cgroup_procs_next(%struct.seq_file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
