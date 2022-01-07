; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c___cmd_timechart.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c___cmd_timechart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timechart = type { double, double, i32, i32 }
%struct.evsel_str_handler = type { i8*, i32 }
%struct.perf_data = type { i32, i32, i32 }
%struct.perf_session = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"power:cpu_idle\00", align 1
@process_sample_cpu_idle = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"power:cpu_frequency\00", align 1
@process_sample_cpu_frequency = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"sched:sched_wakeup\00", align 1
@process_sample_sched_wakeup = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"sched:sched_switch\00", align 1
@process_sample_sched_switch = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"syscalls:sys_enter_read\00", align 1
@process_enter_read = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"syscalls:sys_enter_pread64\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"syscalls:sys_enter_readv\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"syscalls:sys_enter_preadv\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"syscalls:sys_enter_write\00", align 1
@process_enter_write = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"syscalls:sys_enter_pwrite64\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"syscalls:sys_enter_writev\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"syscalls:sys_enter_pwritev\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"syscalls:sys_enter_sync\00", align 1
@process_enter_sync = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"syscalls:sys_enter_sync_file_range\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"syscalls:sys_enter_fsync\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"syscalls:sys_enter_msync\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"syscalls:sys_enter_recvfrom\00", align 1
@process_enter_rx = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [28 x i8] c"syscalls:sys_enter_recvmmsg\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"syscalls:sys_enter_recvmsg\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"syscalls:sys_enter_sendto\00", align 1
@process_enter_tx = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [27 x i8] c"syscalls:sys_enter_sendmsg\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"syscalls:sys_enter_sendmmsg\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"syscalls:sys_enter_epoll_pwait\00", align 1
@process_enter_poll = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [30 x i8] c"syscalls:sys_enter_epoll_wait\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"syscalls:sys_enter_poll\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"syscalls:sys_enter_ppoll\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"syscalls:sys_enter_pselect6\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"syscalls:sys_enter_select\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"syscalls:sys_exit_read\00", align 1
@process_exit_read = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [26 x i8] c"syscalls:sys_exit_pread64\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"syscalls:sys_exit_readv\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"syscalls:sys_exit_preadv\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"syscalls:sys_exit_write\00", align 1
@process_exit_write = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [27 x i8] c"syscalls:sys_exit_pwrite64\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"syscalls:sys_exit_writev\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"syscalls:sys_exit_pwritev\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"syscalls:sys_exit_sync\00", align 1
@process_exit_sync = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [34 x i8] c"syscalls:sys_exit_sync_file_range\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"syscalls:sys_exit_fsync\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"syscalls:sys_exit_msync\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"syscalls:sys_exit_recvfrom\00", align 1
@process_exit_rx = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [27 x i8] c"syscalls:sys_exit_recvmmsg\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"syscalls:sys_exit_recvmsg\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"syscalls:sys_exit_sendto\00", align 1
@process_exit_tx = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [26 x i8] c"syscalls:sys_exit_sendmsg\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"syscalls:sys_exit_sendmmsg\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"syscalls:sys_exit_epoll_pwait\00", align 1
@process_exit_poll = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [29 x i8] c"syscalls:sys_exit_epoll_wait\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"syscalls:sys_exit_poll\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"syscalls:sys_exit_ppoll\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"syscalls:sys_exit_pselect6\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"syscalls:sys_exit_select\00", align 1
@PERF_DATA_MODE_READ = common dso_local global i32 0, align 4
@input_name = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@process_header = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [17 x i8] c"timechart record\00", align 1
@.str.53 = private unnamed_addr constant [49 x i8] c"Initializing session tracepoint handlers failed\0A\00", align 1
@.str.54 = private unnamed_addr constant [39 x i8] c"Written %2.1f seconds of trace to %s.\0A\00", align 1
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@process_sample_power_end = common dso_local global i32 0, align 4
@process_sample_power_frequency = common dso_local global i32 0, align 4
@process_sample_power_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timechart*, i8*)* @__cmd_timechart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cmd_timechart(%struct.timechart* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timechart*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [52 x %struct.evsel_str_handler], align 16
  %7 = alloca %struct.perf_data, align 4
  %8 = alloca %struct.perf_session*, align 8
  %9 = alloca i32, align 4
  store %struct.timechart* %0, %struct.timechart** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = getelementptr inbounds [52 x %struct.evsel_str_handler], [52 x %struct.evsel_str_handler]* %6, i64 0, i64 0
  %11 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %11, align 16
  %12 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %10, i32 0, i32 1
  %13 = load i32, i32* @process_sample_cpu_idle, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %10, i64 1
  %15 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 16
  %16 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %14, i32 0, i32 1
  %17 = load i32, i32* @process_sample_cpu_frequency, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %14, i64 1
  %19 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 16
  %20 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %18, i32 0, i32 1
  %21 = load i32, i32* @process_sample_sched_wakeup, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %18, i64 1
  %23 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %23, align 16
  %24 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %22, i32 0, i32 1
  %25 = load i32, i32* @process_sample_sched_switch, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %22, i64 1
  %27 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8** %27, align 16
  %28 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %26, i32 0, i32 1
  %29 = load i32, i32* @process_enter_read, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %26, i64 1
  %31 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8** %31, align 16
  %32 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %30, i32 0, i32 1
  %33 = load i32, i32* @process_enter_read, align 4
  store i32 %33, i32* %32, align 8
  %34 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %30, i64 1
  %35 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8** %35, align 16
  %36 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %34, i32 0, i32 1
  %37 = load i32, i32* @process_enter_read, align 4
  store i32 %37, i32* %36, align 8
  %38 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %34, i64 1
  %39 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8** %39, align 16
  %40 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %38, i32 0, i32 1
  %41 = load i32, i32* @process_enter_read, align 4
  store i32 %41, i32* %40, align 8
  %42 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %38, i64 1
  %43 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %42, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8** %43, align 16
  %44 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %42, i32 0, i32 1
  %45 = load i32, i32* @process_enter_write, align 4
  store i32 %45, i32* %44, align 8
  %46 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %42, i64 1
  %47 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8** %47, align 16
  %48 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %46, i32 0, i32 1
  %49 = load i32, i32* @process_enter_write, align 4
  store i32 %49, i32* %48, align 8
  %50 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %46, i64 1
  %51 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %50, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8** %51, align 16
  %52 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %50, i32 0, i32 1
  %53 = load i32, i32* @process_enter_write, align 4
  store i32 %53, i32* %52, align 8
  %54 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %50, i64 1
  %55 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i8** %55, align 16
  %56 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %54, i32 0, i32 1
  %57 = load i32, i32* @process_enter_write, align 4
  store i32 %57, i32* %56, align 8
  %58 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %54, i64 1
  %59 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %58, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8** %59, align 16
  %60 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %58, i32 0, i32 1
  %61 = load i32, i32* @process_enter_sync, align 4
  store i32 %61, i32* %60, align 8
  %62 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %58, i64 1
  %63 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i8** %63, align 16
  %64 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %62, i32 0, i32 1
  %65 = load i32, i32* @process_enter_sync, align 4
  store i32 %65, i32* %64, align 8
  %66 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %62, i64 1
  %67 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %66, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8** %67, align 16
  %68 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %66, i32 0, i32 1
  %69 = load i32, i32* @process_enter_sync, align 4
  store i32 %69, i32* %68, align 8
  %70 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %66, i64 1
  %71 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %70, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i8** %71, align 16
  %72 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %70, i32 0, i32 1
  %73 = load i32, i32* @process_enter_sync, align 4
  store i32 %73, i32* %72, align 8
  %74 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %70, i64 1
  %75 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %74, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i8** %75, align 16
  %76 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %74, i32 0, i32 1
  %77 = load i32, i32* @process_enter_rx, align 4
  store i32 %77, i32* %76, align 8
  %78 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %74, i64 1
  %79 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %78, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i8** %79, align 16
  %80 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %78, i32 0, i32 1
  %81 = load i32, i32* @process_enter_rx, align 4
  store i32 %81, i32* %80, align 8
  %82 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %78, i64 1
  %83 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %82, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i8** %83, align 16
  %84 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %82, i32 0, i32 1
  %85 = load i32, i32* @process_enter_rx, align 4
  store i32 %85, i32* %84, align 8
  %86 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %82, i64 1
  %87 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %86, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i8** %87, align 16
  %88 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %86, i32 0, i32 1
  %89 = load i32, i32* @process_enter_tx, align 4
  store i32 %89, i32* %88, align 8
  %90 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %86, i64 1
  %91 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %90, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i8** %91, align 16
  %92 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %90, i32 0, i32 1
  %93 = load i32, i32* @process_enter_tx, align 4
  store i32 %93, i32* %92, align 8
  %94 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %90, i64 1
  %95 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %94, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i8** %95, align 16
  %96 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %94, i32 0, i32 1
  %97 = load i32, i32* @process_enter_tx, align 4
  store i32 %97, i32* %96, align 8
  %98 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %94, i64 1
  %99 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %98, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), i8** %99, align 16
  %100 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %98, i32 0, i32 1
  %101 = load i32, i32* @process_enter_poll, align 4
  store i32 %101, i32* %100, align 8
  %102 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %98, i64 1
  %103 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %102, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0), i8** %103, align 16
  %104 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %102, i32 0, i32 1
  %105 = load i32, i32* @process_enter_poll, align 4
  store i32 %105, i32* %104, align 8
  %106 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %102, i64 1
  %107 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %106, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i8** %107, align 16
  %108 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %106, i32 0, i32 1
  %109 = load i32, i32* @process_enter_poll, align 4
  store i32 %109, i32* %108, align 8
  %110 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %106, i64 1
  %111 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %110, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i8** %111, align 16
  %112 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %110, i32 0, i32 1
  %113 = load i32, i32* @process_enter_poll, align 4
  store i32 %113, i32* %112, align 8
  %114 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %110, i64 1
  %115 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %114, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0), i8** %115, align 16
  %116 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %114, i32 0, i32 1
  %117 = load i32, i32* @process_enter_poll, align 4
  store i32 %117, i32* %116, align 8
  %118 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %114, i64 1
  %119 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %118, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0), i8** %119, align 16
  %120 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %118, i32 0, i32 1
  %121 = load i32, i32* @process_enter_poll, align 4
  store i32 %121, i32* %120, align 8
  %122 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %118, i64 1
  %123 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %122, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i8** %123, align 16
  %124 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %122, i32 0, i32 1
  %125 = load i32, i32* @process_exit_read, align 4
  store i32 %125, i32* %124, align 8
  %126 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %122, i64 1
  %127 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %126, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0), i8** %127, align 16
  %128 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %126, i32 0, i32 1
  %129 = load i32, i32* @process_exit_read, align 4
  store i32 %129, i32* %128, align 8
  %130 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %126, i64 1
  %131 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %130, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i8** %131, align 16
  %132 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %130, i32 0, i32 1
  %133 = load i32, i32* @process_exit_read, align 4
  store i32 %133, i32* %132, align 8
  %134 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %130, i64 1
  %135 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %134, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i64 0, i64 0), i8** %135, align 16
  %136 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %134, i32 0, i32 1
  %137 = load i32, i32* @process_exit_read, align 4
  store i32 %137, i32* %136, align 8
  %138 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %134, i64 1
  %139 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %138, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0), i8** %139, align 16
  %140 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %138, i32 0, i32 1
  %141 = load i32, i32* @process_exit_write, align 4
  store i32 %141, i32* %140, align 8
  %142 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %138, i64 1
  %143 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %142, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i64 0, i64 0), i8** %143, align 16
  %144 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %142, i32 0, i32 1
  %145 = load i32, i32* @process_exit_write, align 4
  store i32 %145, i32* %144, align 8
  %146 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %142, i64 1
  %147 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %146, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i8** %147, align 16
  %148 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %146, i32 0, i32 1
  %149 = load i32, i32* @process_exit_write, align 4
  store i32 %149, i32* %148, align 8
  %150 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %146, i64 1
  %151 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %150, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i64 0, i64 0), i8** %151, align 16
  %152 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %150, i32 0, i32 1
  %153 = load i32, i32* @process_exit_write, align 4
  store i32 %153, i32* %152, align 8
  %154 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %150, i64 1
  %155 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %154, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i8** %155, align 16
  %156 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %154, i32 0, i32 1
  %157 = load i32, i32* @process_exit_sync, align 4
  store i32 %157, i32* %156, align 8
  %158 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %154, i64 1
  %159 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %158, i32 0, i32 0
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i64 0, i64 0), i8** %159, align 16
  %160 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %158, i32 0, i32 1
  %161 = load i32, i32* @process_exit_sync, align 4
  store i32 %161, i32* %160, align 8
  %162 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %158, i64 1
  %163 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %162, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i64 0, i64 0), i8** %163, align 16
  %164 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %162, i32 0, i32 1
  %165 = load i32, i32* @process_exit_sync, align 4
  store i32 %165, i32* %164, align 8
  %166 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %162, i64 1
  %167 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %166, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), i8** %167, align 16
  %168 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %166, i32 0, i32 1
  %169 = load i32, i32* @process_exit_sync, align 4
  store i32 %169, i32* %168, align 8
  %170 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %166, i64 1
  %171 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %170, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i64 0, i64 0), i8** %171, align 16
  %172 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %170, i32 0, i32 1
  %173 = load i32, i32* @process_exit_rx, align 4
  store i32 %173, i32* %172, align 8
  %174 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %170, i64 1
  %175 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %174, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i64 0, i64 0), i8** %175, align 16
  %176 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %174, i32 0, i32 1
  %177 = load i32, i32* @process_exit_rx, align 4
  store i32 %177, i32* %176, align 8
  %178 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %174, i64 1
  %179 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %178, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i64 0, i64 0), i8** %179, align 16
  %180 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %178, i32 0, i32 1
  %181 = load i32, i32* @process_exit_rx, align 4
  store i32 %181, i32* %180, align 8
  %182 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %178, i64 1
  %183 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %182, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i64 0, i64 0), i8** %183, align 16
  %184 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %182, i32 0, i32 1
  %185 = load i32, i32* @process_exit_tx, align 4
  store i32 %185, i32* %184, align 8
  %186 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %182, i64 1
  %187 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %186, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.44, i64 0, i64 0), i8** %187, align 16
  %188 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %186, i32 0, i32 1
  %189 = load i32, i32* @process_exit_tx, align 4
  store i32 %189, i32* %188, align 8
  %190 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %186, i64 1
  %191 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %190, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0), i8** %191, align 16
  %192 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %190, i32 0, i32 1
  %193 = load i32, i32* @process_exit_tx, align 4
  store i32 %193, i32* %192, align 8
  %194 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %190, i64 1
  %195 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %194, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.46, i64 0, i64 0), i8** %195, align 16
  %196 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %194, i32 0, i32 1
  %197 = load i32, i32* @process_exit_poll, align 4
  store i32 %197, i32* %196, align 8
  %198 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %194, i64 1
  %199 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %198, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i64 0, i64 0), i8** %199, align 16
  %200 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %198, i32 0, i32 1
  %201 = load i32, i32* @process_exit_poll, align 4
  store i32 %201, i32* %200, align 8
  %202 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %198, i64 1
  %203 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %202, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i64 0, i64 0), i8** %203, align 16
  %204 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %202, i32 0, i32 1
  %205 = load i32, i32* @process_exit_poll, align 4
  store i32 %205, i32* %204, align 8
  %206 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %202, i64 1
  %207 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %206, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i64 0, i64 0), i8** %207, align 16
  %208 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %206, i32 0, i32 1
  %209 = load i32, i32* @process_exit_poll, align 4
  store i32 %209, i32* %208, align 8
  %210 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %206, i64 1
  %211 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %210, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i8** %211, align 16
  %212 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %210, i32 0, i32 1
  %213 = load i32, i32* @process_exit_poll, align 4
  store i32 %213, i32* %212, align 8
  %214 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %210, i64 1
  %215 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %214, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i64 0, i64 0), i8** %215, align 16
  %216 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %214, i32 0, i32 1
  %217 = load i32, i32* @process_exit_poll, align 4
  store i32 %217, i32* %216, align 8
  %218 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %7, i32 0, i32 0
  %219 = load %struct.timechart*, %struct.timechart** %4, align 8
  %220 = getelementptr inbounds %struct.timechart, %struct.timechart* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %218, align 4
  %222 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %7, i32 0, i32 1
  %223 = load i32, i32* @PERF_DATA_MODE_READ, align 4
  store i32 %223, i32* %222, align 4
  %224 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %7, i32 0, i32 2
  %225 = load i32, i32* @input_name, align 4
  store i32 %225, i32* %224, align 4
  %226 = load %struct.timechart*, %struct.timechart** %4, align 8
  %227 = getelementptr inbounds %struct.timechart, %struct.timechart* %226, i32 0, i32 2
  %228 = call %struct.perf_session* @perf_session__new(%struct.perf_data* %7, i32 0, i32* %227)
  store %struct.perf_session* %228, %struct.perf_session** %8, align 8
  %229 = load i32, i32* @EINVAL, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %9, align 4
  %231 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %232 = call i64 @IS_ERR(%struct.perf_session* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %2
  %235 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %236 = call i32 @PTR_ERR(%struct.perf_session* %235)
  store i32 %236, i32* %3, align 4
  br label %292

237:                                              ; preds = %2
  %238 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %239 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 0
  %241 = call i32 @symbol__init(i32* %240)
  %242 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %243 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %242, i32 0, i32 1
  %244 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %245 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @perf_data__fd(i32 %246)
  %248 = load %struct.timechart*, %struct.timechart** %4, align 8
  %249 = load i32, i32* @process_header, align 4
  %250 = call i32 @perf_header__process_sections(%struct.TYPE_2__* %243, i32 %247, %struct.timechart* %248, i32 %249)
  %251 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %252 = call i32 @perf_session__has_traces(%struct.perf_session* %251, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i64 0, i64 0))
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %237
  br label %288

255:                                              ; preds = %237
  %256 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %257 = getelementptr inbounds [52 x %struct.evsel_str_handler], [52 x %struct.evsel_str_handler]* %6, i64 0, i64 0
  %258 = call i64 @perf_session__set_tracepoints_handlers(%struct.perf_session* %256, %struct.evsel_str_handler* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %255
  %261 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.53, i64 0, i64 0))
  br label %288

262:                                              ; preds = %255
  %263 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %264 = call i32 @perf_session__process_events(%struct.perf_session* %263)
  store i32 %264, i32* %9, align 4
  %265 = load i32, i32* %9, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %262
  br label %288

268:                                              ; preds = %262
  %269 = load %struct.timechart*, %struct.timechart** %4, align 8
  %270 = call i32 @end_sample_processing(%struct.timechart* %269)
  %271 = load %struct.timechart*, %struct.timechart** %4, align 8
  %272 = call i32 @sort_pids(%struct.timechart* %271)
  %273 = load %struct.timechart*, %struct.timechart** %4, align 8
  %274 = load i8*, i8** %5, align 8
  %275 = call i32 @write_svg_file(%struct.timechart* %273, i8* %274)
  %276 = load %struct.timechart*, %struct.timechart** %4, align 8
  %277 = getelementptr inbounds %struct.timechart, %struct.timechart* %276, i32 0, i32 0
  %278 = load double, double* %277, align 8
  %279 = load %struct.timechart*, %struct.timechart** %4, align 8
  %280 = getelementptr inbounds %struct.timechart, %struct.timechart* %279, i32 0, i32 1
  %281 = load double, double* %280, align 8
  %282 = fsub double %278, %281
  %283 = load i64, i64* @NSEC_PER_SEC, align 8
  %284 = sitofp i64 %283 to double
  %285 = fdiv double %282, %284
  %286 = load i8*, i8** %5, align 8
  %287 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.54, i64 0, i64 0), double %285, i8* %286)
  br label %288

288:                                              ; preds = %268, %267, %260, %254
  %289 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %290 = call i32 @perf_session__delete(%struct.perf_session* %289)
  %291 = load i32, i32* %9, align 4
  store i32 %291, i32* %3, align 4
  br label %292

292:                                              ; preds = %288, %234
  %293 = load i32, i32* %3, align 4
  ret i32 %293
}

declare dso_local %struct.perf_session* @perf_session__new(%struct.perf_data*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.perf_session*) #1

declare dso_local i32 @PTR_ERR(%struct.perf_session*) #1

declare dso_local i32 @symbol__init(i32*) #1

declare dso_local i32 @perf_header__process_sections(%struct.TYPE_2__*, i32, %struct.timechart*, i32) #1

declare dso_local i32 @perf_data__fd(i32) #1

declare dso_local i32 @perf_session__has_traces(%struct.perf_session*, i8*) #1

declare dso_local i64 @perf_session__set_tracepoints_handlers(%struct.perf_session*, %struct.evsel_str_handler*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @perf_session__process_events(%struct.perf_session*) #1

declare dso_local i32 @end_sample_processing(%struct.timechart*) #1

declare dso_local i32 @sort_pids(%struct.timechart*) #1

declare dso_local i32 @write_svg_file(%struct.timechart*, i8*) #1

declare dso_local i32 @pr_info(i8*, double, i8*) #1

declare dso_local i32 @perf_session__delete(%struct.perf_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
