; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_select_domain.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_select_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_io_buffer = type { %struct.TYPE_6__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_4__ = type { %struct.tomoyo_domain_info* }
%struct.tomoyo_domain_info = type { i64, i32 }
%struct.task_struct = type { i32 }
%struct.TYPE_5__ = type { %struct.tomoyo_domain_info* }

@.str = private unnamed_addr constant [8 x i8] c"select \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"pid=%u\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"global-pid=%u\00", align 1
@init_pid_ns = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"domain=\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Q=%u\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"# select %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"# This is a deleted domain.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_io_buffer*, i8*)* @tomoyo_select_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_select_domain(%struct.tomoyo_io_buffer* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tomoyo_io_buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tomoyo_domain_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.task_struct*, align 8
  store %struct.tomoyo_io_buffer* %0, %struct.tomoyo_io_buffer** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.tomoyo_domain_info* null, %struct.tomoyo_domain_info** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strncmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %112

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 7
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  store i32 1, i32* %8, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %44

24:                                               ; preds = %20, %14
  %25 = call i32 (...) @rcu_read_lock()
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.task_struct* @find_task_by_pid_ns(i32 %29, i32* @init_pid_ns)
  store %struct.task_struct* %30, %struct.task_struct** %9, align 8
  br label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = call %struct.task_struct* @find_task_by_vpid(i32 %32)
  store %struct.task_struct* %33, %struct.task_struct** %9, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %36 = icmp ne %struct.task_struct* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %39 = call %struct.TYPE_5__* @tomoyo_task(%struct.task_struct* %38)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %40, align 8
  store %struct.tomoyo_domain_info* %41, %struct.tomoyo_domain_info** %7, align 8
  br label %42

42:                                               ; preds = %37, %34
  %43 = call i32 (...) @rcu_read_unlock()
  br label %68

44:                                               ; preds = %20
  %45 = load i8*, i8** %5, align 8
  %46 = call i64 @strncmp(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 7
  %51 = call i64 @tomoyo_domain_def(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 7
  %56 = call %struct.tomoyo_domain_info* @tomoyo_find_domain(i8* %55)
  store %struct.tomoyo_domain_info* %56, %struct.tomoyo_domain_info** %7, align 8
  br label %57

57:                                               ; preds = %53, %48
  br label %67

58:                                               ; preds = %44
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @sscanf(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %6)
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  %64 = call %struct.tomoyo_domain_info* @tomoyo_find_domain_by_qid(i32 %63)
  store %struct.tomoyo_domain_info* %64, %struct.tomoyo_domain_info** %7, align 8
  br label %66

65:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %112

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66, %57
  br label %68

68:                                               ; preds = %67, %42
  %69 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %7, align 8
  %70 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %71 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store %struct.tomoyo_domain_info* %69, %struct.tomoyo_domain_info** %72, align 8
  %73 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %74 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %68
  store i32 1, i32* %3, align 4
  br label %112

78:                                               ; preds = %68
  %79 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %80 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %79, i32 0, i32 0
  %81 = call i32 @memset(%struct.TYPE_6__* %80, i32 0, i32 16)
  %82 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %83 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %7, align 8
  %86 = icmp ne %struct.tomoyo_domain_info* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %78
  %88 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %7, align 8
  %89 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %88, i32 0, i32 1
  %90 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %91 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  store i32* %89, i32** %92, align 8
  br label %97

93:                                               ; preds = %78
  %94 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %95 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  br label %97

97:                                               ; preds = %93, %87
  %98 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 (%struct.tomoyo_io_buffer*, i8*, ...) @tomoyo_io_printf(%struct.tomoyo_io_buffer* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %99)
  %101 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %7, align 8
  %102 = icmp ne %struct.tomoyo_domain_info* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %97
  %104 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %7, align 8
  %105 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %110 = call i32 (%struct.tomoyo_io_buffer*, i8*, ...) @tomoyo_io_printf(%struct.tomoyo_io_buffer* %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %103, %97
  store i32 1, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %77, %65, %13
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @find_task_by_pid_ns(i32, i32*) #1

declare dso_local %struct.task_struct* @find_task_by_vpid(i32) #1

declare dso_local %struct.TYPE_5__* @tomoyo_task(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @tomoyo_domain_def(i8*) #1

declare dso_local %struct.tomoyo_domain_info* @tomoyo_find_domain(i8*) #1

declare dso_local %struct.tomoyo_domain_info* @tomoyo_find_domain_by_qid(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @tomoyo_io_printf(%struct.tomoyo_io_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
