; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_read_pid.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_read_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_io_buffer = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.task_struct = type { i32 }
%struct.tomoyo_domain_info = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.tomoyo_domain_info* }

@.str = private unnamed_addr constant [12 x i8] c"global-pid \00", align 1
@init_pid_ns = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%u %u \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tomoyo_io_buffer*)* @tomoyo_read_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tomoyo_read_pid(%struct.tomoyo_io_buffer* %0) #0 {
  %2 = alloca %struct.tomoyo_io_buffer*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.tomoyo_domain_info*, align 8
  store %struct.tomoyo_io_buffer* %0, %struct.tomoyo_io_buffer** %2, align 8
  %8 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %9 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.tomoyo_domain_info* null, %struct.tomoyo_domain_info** %7, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %15 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  br label %79

17:                                               ; preds = %1
  %18 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %19 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %25 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %17
  br label %79

30:                                               ; preds = %23
  %31 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %32 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = call i64 @tomoyo_str_starts(i8** %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i8*, i8** %3, align 8
  %39 = call i64 @kstrtouint(i8* %38, i32 10, i32* %5)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %79

42:                                               ; preds = %37
  %43 = call i32 (...) @rcu_read_lock()
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = call %struct.task_struct* @find_task_by_pid_ns(i32 %47, i32* @init_pid_ns)
  store %struct.task_struct* %48, %struct.task_struct** %6, align 8
  br label %52

49:                                               ; preds = %42
  %50 = load i32, i32* %5, align 4
  %51 = call %struct.task_struct* @find_task_by_vpid(i32 %50)
  store %struct.task_struct* %51, %struct.task_struct** %6, align 8
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %54 = icmp ne %struct.task_struct* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %57 = call %struct.TYPE_6__* @tomoyo_task(%struct.task_struct* %56)
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %58, align 8
  store %struct.tomoyo_domain_info* %59, %struct.tomoyo_domain_info** %7, align 8
  br label %60

60:                                               ; preds = %55, %52
  %61 = call i32 (...) @rcu_read_unlock()
  %62 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %7, align 8
  %63 = icmp ne %struct.tomoyo_domain_info* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  br label %79

65:                                               ; preds = %60
  %66 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %7, align 8
  %69 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @tomoyo_io_printf(%struct.tomoyo_io_buffer* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %73 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %7, align 8
  %74 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @tomoyo_set_string(%struct.tomoyo_io_buffer* %72, i32 %77)
  br label %79

79:                                               ; preds = %65, %64, %41, %29, %13
  ret void
}

declare dso_local i64 @tomoyo_str_starts(i8**, i8*) #1

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @find_task_by_pid_ns(i32, i32*) #1

declare dso_local %struct.task_struct* @find_task_by_vpid(i32) #1

declare dso_local %struct.TYPE_6__* @tomoyo_task(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @tomoyo_io_printf(%struct.tomoyo_io_buffer*, i8*, i32, i32) #1

declare dso_local i32 @tomoyo_set_string(%struct.tomoyo_io_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
