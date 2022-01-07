; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_taskstats.c_taskstats_exit.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_taskstats.c_taskstats_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.listener_list = type { i32 }
%struct.taskstats = type { i32 }
%struct.sk_buff = type { i32 }

@family_registered = common dso_local global i32 0, align 4
@listener_array = common dso_local global i32 0, align 4
@TASKSTATS_CMD_NEW = common dso_local global i32 0, align 4
@TASKSTATS_TYPE_PID = common dso_local global i32 0, align 4
@init_pid_ns = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@TASKSTATS_TYPE_TGID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @taskstats_exit(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.listener_list*, align 8
  %7 = alloca %struct.taskstats*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @family_registered, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %86

14:                                               ; preds = %2
  %15 = call i64 (...) @taskstats_packet_size()
  store i64 %15, i64* %9, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = call i32 @taskstats_tgid_alloc(%struct.task_struct* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = load i64, i64* %9, align 8
  %26 = mul i64 2, %25
  store i64 %26, i64* %9, align 8
  %27 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %28 = call i32 @fill_tgid_exit(%struct.task_struct* %27)
  br label %29

29:                                               ; preds = %24, %14
  %30 = call %struct.listener_list* @raw_cpu_ptr(i32* @listener_array)
  store %struct.listener_list* %30, %struct.listener_list** %6, align 8
  %31 = load %struct.listener_list*, %struct.listener_list** %6, align 8
  %32 = getelementptr inbounds %struct.listener_list, %struct.listener_list* %31, i32 0, i32 0
  %33 = call i64 @list_empty(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %86

36:                                               ; preds = %29
  %37 = load i32, i32* @TASKSTATS_CMD_NEW, align 4
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @prepare_reply(i32* null, i32 %37, %struct.sk_buff** %8, i64 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %86

43:                                               ; preds = %36
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = load i32, i32* @TASKSTATS_TYPE_PID, align 4
  %46 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %47 = call i32 @task_pid_nr_ns(%struct.task_struct* %46, i32* @init_pid_ns)
  %48 = call %struct.taskstats* @mk_reply(%struct.sk_buff* %44, i32 %45, i32 %47)
  store %struct.taskstats* %48, %struct.taskstats** %7, align 8
  %49 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %50 = icmp ne %struct.taskstats* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  br label %83

52:                                               ; preds = %43
  %53 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %54 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %55 = call i32 @fill_stats(i32* @init_user_ns, i32* @init_pid_ns, %struct.task_struct* %53, %struct.taskstats* %54)
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58, %52
  br label %79

62:                                               ; preds = %58
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = load i32, i32* @TASKSTATS_TYPE_TGID, align 4
  %65 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %66 = call i32 @task_tgid_nr_ns(%struct.task_struct* %65, i32* @init_pid_ns)
  %67 = call %struct.taskstats* @mk_reply(%struct.sk_buff* %63, i32 %64, i32 %66)
  store %struct.taskstats* %67, %struct.taskstats** %7, align 8
  %68 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %69 = icmp ne %struct.taskstats* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  br label %83

71:                                               ; preds = %62
  %72 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %73 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %74 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @memcpy(%struct.taskstats* %72, i32 %77, i32 4)
  br label %79

79:                                               ; preds = %71, %61
  %80 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %81 = load %struct.listener_list*, %struct.listener_list** %6, align 8
  %82 = call i32 @send_cpu_listeners(%struct.sk_buff* %80, %struct.listener_list* %81)
  br label %86

83:                                               ; preds = %70, %51
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = call i32 @nlmsg_free(%struct.sk_buff* %84)
  br label %86

86:                                               ; preds = %83, %79, %42, %35, %13
  ret void
}

declare dso_local i64 @taskstats_packet_size(...) #1

declare dso_local i32 @taskstats_tgid_alloc(%struct.task_struct*) #1

declare dso_local i32 @fill_tgid_exit(%struct.task_struct*) #1

declare dso_local %struct.listener_list* @raw_cpu_ptr(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @prepare_reply(i32*, i32, %struct.sk_buff**, i64) #1

declare dso_local %struct.taskstats* @mk_reply(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @task_pid_nr_ns(%struct.task_struct*, i32*) #1

declare dso_local i32 @fill_stats(i32*, i32*, %struct.task_struct*, %struct.taskstats*) #1

declare dso_local i32 @task_tgid_nr_ns(%struct.task_struct*, i32*) #1

declare dso_local i32 @memcpy(%struct.taskstats*, i32, i32) #1

declare dso_local i32 @send_cpu_listeners(%struct.sk_buff*, %struct.listener_list*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
