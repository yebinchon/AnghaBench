; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_sched_partition_write.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_sched_partition_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { i32 }
%struct.cpuset = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1
@PRS_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"member\00", align 1
@PRS_DISABLED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@cpuset_rwsem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kernfs_open_file*, i8*, i64, i32)* @sched_partition_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sched_partition_write(%struct.kernfs_open_file* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kernfs_open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cpuset*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %14 = call i32 @of_css(%struct.kernfs_open_file* %13)
  %15 = call %struct.cpuset* @css_cs(i32 %14)
  store %struct.cpuset* %15, %struct.cpuset** %10, align 8
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %12, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = call i8* @strstrip(i8* %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @PRS_ENABLED, align 4
  store i32 %24, i32* %11, align 4
  br label %35

25:                                               ; preds = %4
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @PRS_DISABLED, align 4
  store i32 %30, i32* %11, align 4
  br label %34

31:                                               ; preds = %25
  %32 = load i64, i64* @EINVAL, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %5, align 8
  br label %63

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %23
  %36 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %37 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %36, i32 0, i32 0
  %38 = call i32 @css_get(i32* %37)
  %39 = call i32 (...) @get_online_cpus()
  %40 = call i32 @percpu_down_write(i32* @cpuset_rwsem)
  %41 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %42 = call i32 @is_cpuset_online(%struct.cpuset* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  br label %49

45:                                               ; preds = %35
  %46 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @update_prstate(%struct.cpuset* %46, i32 %47)
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %45, %44
  %50 = call i32 @percpu_up_write(i32* @cpuset_rwsem)
  %51 = call i32 (...) @put_online_cpus()
  %52 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %53 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %52, i32 0, i32 0
  %54 = call i32 @css_put(i32* %53)
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = sext i32 %55 to i64
  br label %61

59:                                               ; preds = %49
  %60 = load i64, i64* %8, align 8
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i64 [ %58, %57 ], [ %60, %59 ]
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %61, %31
  %64 = load i64, i64* %5, align 8
  ret i64 %64
}

declare dso_local %struct.cpuset* @css_cs(i32) #1

declare dso_local i32 @of_css(%struct.kernfs_open_file*) #1

declare dso_local i8* @strstrip(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @css_get(i32*) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @percpu_down_write(i32*) #1

declare dso_local i32 @is_cpuset_online(%struct.cpuset*) #1

declare dso_local i32 @update_prstate(%struct.cpuset*, i32) #1

declare dso_local i32 @percpu_up_write(i32*) #1

declare dso_local i32 @put_online_cpus(...) #1

declare dso_local i32 @css_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
