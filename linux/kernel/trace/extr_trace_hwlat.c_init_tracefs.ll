; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_hwlat.c_init_tracefs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_hwlat.c_init_tracefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.dentry = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"hwlat_detector\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@hwlat_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@window_fops = common dso_local global i32 0, align 4
@hwlat_sample_window = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@width_fops = common dso_local global i32 0, align 4
@hwlat_sample_width = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_tracefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_tracefs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = call %struct.dentry* (...) @tracing_init_dentry()
  store %struct.dentry* %4, %struct.dentry** %2, align 8
  %5 = load %struct.dentry*, %struct.dentry** %2, align 8
  %6 = call i64 @IS_ERR(%struct.dentry* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %1, align 4
  br label %37

11:                                               ; preds = %0
  %12 = load %struct.dentry*, %struct.dentry** %2, align 8
  %13 = call %struct.dentry* @tracefs_create_dir(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.dentry* %12)
  store %struct.dentry* %13, %struct.dentry** %3, align 8
  %14 = load %struct.dentry*, %struct.dentry** %3, align 8
  %15 = icmp ne %struct.dentry* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %1, align 4
  br label %37

19:                                               ; preds = %11
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = call i8* @tracefs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 416, %struct.dentry* %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwlat_data, i32 0, i32 1), i32* @window_fops)
  store i8* %21, i8** @hwlat_sample_window, align 8
  %22 = load i8*, i8** @hwlat_sample_window, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %32

25:                                               ; preds = %19
  %26 = load %struct.dentry*, %struct.dentry** %3, align 8
  %27 = call i8* @tracefs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 420, %struct.dentry* %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwlat_data, i32 0, i32 0), i32* @width_fops)
  store i8* %27, i8** @hwlat_sample_width, align 8
  %28 = load i8*, i8** @hwlat_sample_width, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %32

31:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  br label %37

32:                                               ; preds = %30, %24
  %33 = load %struct.dentry*, %struct.dentry** %3, align 8
  %34 = call i32 @tracefs_remove_recursive(%struct.dentry* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %32, %31, %16, %8
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local %struct.dentry* @tracing_init_dentry(...) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local %struct.dentry* @tracefs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i8* @tracefs_create_file(i8*, i32, %struct.dentry*, i32*, i32*) #1

declare dso_local i32 @tracefs_remove_recursive(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
