; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_timechart__io_record.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_timechart__io_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"record\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-R\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"syscalls:sys_enter_read\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"syscalls:sys_enter_pread64\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"syscalls:sys_enter_readv\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"syscalls:sys_enter_preadv\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"syscalls:sys_enter_write\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"syscalls:sys_enter_pwrite64\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"syscalls:sys_enter_writev\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"syscalls:sys_enter_pwritev\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"syscalls:sys_enter_sync\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"syscalls:sys_enter_sync_file_range\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"syscalls:sys_enter_fsync\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"syscalls:sys_enter_msync\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"syscalls:sys_exit_read\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"syscalls:sys_exit_pread64\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"syscalls:sys_exit_readv\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"syscalls:sys_exit_preadv\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"syscalls:sys_exit_write\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"syscalls:sys_exit_pwrite64\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"syscalls:sys_exit_writev\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"syscalls:sys_exit_pwritev\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"syscalls:sys_exit_sync\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"syscalls:sys_exit_sync_file_range\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"syscalls:sys_exit_fsync\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"syscalls:sys_exit_msync\00", align 1
@__const.timechart__io_record.disk_events = private unnamed_addr constant [24 x i8*] [i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0)], align 16
@.str.29 = private unnamed_addr constant [28 x i8] c"syscalls:sys_enter_recvfrom\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"syscalls:sys_enter_recvmmsg\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"syscalls:sys_enter_recvmsg\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"syscalls:sys_enter_sendto\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"syscalls:sys_enter_sendmsg\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"syscalls:sys_enter_sendmmsg\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"syscalls:sys_exit_recvfrom\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"syscalls:sys_exit_recvmmsg\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"syscalls:sys_exit_recvmsg\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"syscalls:sys_exit_sendto\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"syscalls:sys_exit_sendmsg\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"syscalls:sys_exit_sendmmsg\00", align 1
@__const.timechart__io_record.net_events = private unnamed_addr constant [12 x i8*] [i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i32 0, i32 0)], align 16
@.str.41 = private unnamed_addr constant [31 x i8] c"syscalls:sys_enter_epoll_pwait\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"syscalls:sys_enter_epoll_wait\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"syscalls:sys_enter_poll\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"syscalls:sys_enter_ppoll\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"syscalls:sys_enter_pselect6\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"syscalls:sys_enter_select\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"syscalls:sys_exit_epoll_pwait\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"syscalls:sys_exit_epoll_wait\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"syscalls:sys_exit_poll\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"syscalls:sys_exit_ppoll\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"syscalls:sys_exit_pselect6\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"syscalls:sys_exit_select\00", align 1
@__const.timechart__io_record.poll_events = private unnamed_addr constant [12 x i8*] [i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.52, i32 0, i32 0)], align 16
@ENOMEM = common dso_local global i32 0, align 4
@.str.53 = private unnamed_addr constant [17 x i8] c"common_pid != %d\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"--filter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @timechart__io_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timechart__io_record(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [5 x i8*], align 16
  %12 = alloca i32, align 4
  %13 = alloca [24 x i8*], align 16
  %14 = alloca i32, align 4
  %15 = alloca [12 x i8*], align 16
  %16 = alloca i32, align 4
  %17 = alloca [12 x i8*], align 16
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %10, align 8
  %19 = bitcast [5 x i8*]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 40, i1 false)
  %20 = bitcast i8* %19 to [5 x i8*]*
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8** %21, align 16
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %22, align 8
  %23 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8** %23, align 16
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8** %24, align 8
  %25 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %25, align 16
  %26 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 0
  %27 = call i32 @ARRAY_SIZE(i8** %26)
  store i32 %27, i32* %12, align 4
  %28 = bitcast [24 x i8*]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 bitcast ([24 x i8*]* @__const.timechart__io_record.disk_events to i8*), i64 192, i1 false)
  %29 = getelementptr inbounds [24 x i8*], [24 x i8*]* %13, i64 0, i64 0
  %30 = call i32 @ARRAY_SIZE(i8** %29)
  store i32 %30, i32* %14, align 4
  %31 = bitcast [12 x i8*]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %31, i8* align 16 bitcast ([12 x i8*]* @__const.timechart__io_record.net_events to i8*), i64 96, i1 false)
  %32 = getelementptr inbounds [12 x i8*], [12 x i8*]* %15, i64 0, i64 0
  %33 = call i32 @ARRAY_SIZE(i8** %32)
  store i32 %33, i32* %16, align 4
  %34 = bitcast [12 x i8*]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %34, i8* align 16 bitcast ([12 x i8*]* @__const.timechart__io_record.poll_events to i8*), i64 96, i1 false)
  %35 = getelementptr inbounds [12 x i8*], [12 x i8*]* %17, i64 0, i64 0
  %36 = call i32 @ARRAY_SIZE(i8** %35)
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %14, align 4
  %39 = mul i32 %38, 4
  %40 = add i32 %37, %39
  %41 = load i32, i32* %16, align 4
  %42 = mul i32 %41, 4
  %43 = add i32 %40, %42
  %44 = load i32, i32* %18, align 4
  %45 = mul i32 %44, 4
  %46 = add i32 %43, %45
  %47 = load i32, i32* %4, align 4
  %48 = add i32 %46, %47
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add i32 %49, 1
  %51 = call i8** @calloc(i32 %50, i32 8)
  store i8** %51, i8*** %8, align 8
  %52 = load i8**, i8*** %8, align 8
  %53 = icmp eq i8** %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %2
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %202

57:                                               ; preds = %2
  %58 = call i32 (...) @getpid()
  %59 = call i64 @asprintf(i8** %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0), i32 %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i8**, i8*** %8, align 8
  %63 = call i32 @free(i8** %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %202

66:                                               ; preds = %57
  %67 = load i8**, i8*** %8, align 8
  store i8** %67, i8*** %9, align 8
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %80, %66
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i8* @strdup(i8* %76)
  %78 = load i8**, i8*** %9, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i32 1
  store i8** %79, i8*** %9, align 8
  store i8* %77, i8** %78, align 8
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %7, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %68

83:                                               ; preds = %68
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %113, %83
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %116

88:                                               ; preds = %84
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [24 x i8*], [24 x i8*]* %13, i64 0, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @is_valid_tracepoint(i8* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %6, align 4
  %97 = sub i32 %96, 4
  store i32 %97, i32* %6, align 4
  br label %113

98:                                               ; preds = %88
  %99 = load i8**, i8*** %9, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i32 1
  store i8** %100, i8*** %9, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i8** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds [24 x i8*], [24 x i8*]* %13, i64 0, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i8* @strdup(i8* %104)
  %106 = load i8**, i8*** %9, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i32 1
  store i8** %107, i8*** %9, align 8
  store i8* %105, i8** %106, align 8
  %108 = load i8**, i8*** %9, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i32 1
  store i8** %109, i8*** %9, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0), i8** %108, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = load i8**, i8*** %9, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i32 1
  store i8** %112, i8*** %9, align 8
  store i8* %110, i8** %111, align 8
  br label %113

113:                                              ; preds = %98, %95
  %114 = load i32, i32* %7, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %84

116:                                              ; preds = %84
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %146, %116
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %16, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %149

121:                                              ; preds = %117
  %122 = load i32, i32* %7, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds [12 x i8*], [12 x i8*]* %15, i64 0, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @is_valid_tracepoint(i8* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %121
  %129 = load i32, i32* %6, align 4
  %130 = sub i32 %129, 4
  store i32 %130, i32* %6, align 4
  br label %146

131:                                              ; preds = %121
  %132 = load i8**, i8*** %9, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i32 1
  store i8** %133, i8*** %9, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i8** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds [12 x i8*], [12 x i8*]* %15, i64 0, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = call i8* @strdup(i8* %137)
  %139 = load i8**, i8*** %9, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i32 1
  store i8** %140, i8*** %9, align 8
  store i8* %138, i8** %139, align 8
  %141 = load i8**, i8*** %9, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i32 1
  store i8** %142, i8*** %9, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0), i8** %141, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = load i8**, i8*** %9, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i32 1
  store i8** %145, i8*** %9, align 8
  store i8* %143, i8** %144, align 8
  br label %146

146:                                              ; preds = %131, %128
  %147 = load i32, i32* %7, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %117

149:                                              ; preds = %117
  store i32 0, i32* %7, align 4
  br label %150

150:                                              ; preds = %179, %149
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %18, align 4
  %153 = icmp ult i32 %151, %152
  br i1 %153, label %154, label %182

154:                                              ; preds = %150
  %155 = load i32, i32* %7, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds [12 x i8*], [12 x i8*]* %17, i64 0, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @is_valid_tracepoint(i8* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %154
  %162 = load i32, i32* %6, align 4
  %163 = sub i32 %162, 4
  store i32 %163, i32* %6, align 4
  br label %179

164:                                              ; preds = %154
  %165 = load i8**, i8*** %9, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i32 1
  store i8** %166, i8*** %9, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i8** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds [12 x i8*], [12 x i8*]* %17, i64 0, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = call i8* @strdup(i8* %170)
  %172 = load i8**, i8*** %9, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i32 1
  store i8** %173, i8*** %9, align 8
  store i8* %171, i8** %172, align 8
  %174 = load i8**, i8*** %9, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i32 1
  store i8** %175, i8*** %9, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0), i8** %174, align 8
  %176 = load i8*, i8** %10, align 8
  %177 = load i8**, i8*** %9, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i32 1
  store i8** %178, i8*** %9, align 8
  store i8* %176, i8** %177, align 8
  br label %179

179:                                              ; preds = %164, %161
  %180 = load i32, i32* %7, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %7, align 4
  br label %150

182:                                              ; preds = %150
  store i32 0, i32* %7, align 4
  br label %183

183:                                              ; preds = %195, %182
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* %4, align 4
  %186 = icmp ult i32 %184, %185
  br i1 %186, label %187, label %198

187:                                              ; preds = %183
  %188 = load i8**, i8*** %5, align 8
  %189 = load i32, i32* %7, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i8*, i8** %188, i64 %190
  %192 = load i8*, i8** %191, align 8
  %193 = load i8**, i8*** %9, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i32 1
  store i8** %194, i8*** %9, align 8
  store i8* %192, i8** %193, align 8
  br label %195

195:                                              ; preds = %187
  %196 = load i32, i32* %7, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %7, align 4
  br label %183

198:                                              ; preds = %183
  %199 = load i32, i32* %6, align 4
  %200 = load i8**, i8*** %8, align 8
  %201 = call i32 @cmd_record(i32 %199, i8** %200)
  store i32 %201, i32* %3, align 4
  br label %202

202:                                              ; preds = %198, %61, %54
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8** @calloc(i32, i32) #2

declare dso_local i64 @asprintf(i8**, i8*, i32) #2

declare dso_local i32 @getpid(...) #2

declare dso_local i32 @free(i8**) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @is_valid_tracepoint(i8*) #2

declare dso_local i32 @cmd_record(i32, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
