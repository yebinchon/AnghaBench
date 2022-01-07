; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_task_fd_query_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_task_fd_query_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }

@RLIM_INFINITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s_kern.o\00", align 1
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"setrlimit(RLIMIT_MEMLOCK)\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to process /proc/kallsyms\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@bpf_log_buf = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"blk_mq_start_request\00", align 1
@BPF_FD_TYPE_KPROBE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"blk_account_io_completion\00", align 1
@BPF_FD_TYPE_KRETPROBE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"kprobe\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"bpf_check\00", align 1
@__executable_start = external dso_local global i8, align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"uprobe\00", align 1
@BPF_FD_TYPE_UPROBE = common dso_local global i32 0, align 4
@BPF_FD_TYPE_URETPROBE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.rlimit, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0
  store i32 1048576, i32* %10, align 4
  %11 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  %12 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @snprintf(i8* %13, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %19 = call i64 @setrlimit(i32 %18, %struct.rlimit* %6)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %109

23:                                               ; preds = %2
  %24 = call i64 (...) @load_kallsyms()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %109

28:                                               ; preds = %23
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %30 = call i64 @load_bpf_file(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i8*, i8** @bpf_log_buf, align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  store i32 1, i32* %3, align 4
  br label %109

35:                                               ; preds = %28
  %36 = load i32, i32* @BPF_FD_TYPE_KPROBE, align 4
  %37 = call i32 @test_debug_fs_kprobe(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = call i32 @CHECK_AND_RET(i32 %37)
  %39 = load i32, i32* @BPF_FD_TYPE_KRETPROBE, align 4
  %40 = call i32 @test_debug_fs_kprobe(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %39)
  %41 = call i32 @CHECK_AND_RET(i32 %40)
  %42 = load i32, i32* @BPF_FD_TYPE_KPROBE, align 4
  %43 = load i32, i32* @BPF_FD_TYPE_KRETPROBE, align 4
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %45 = call i32 @test_nondebug_fs_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 %42, i32 %43, i8* %44, i32 256)
  %46 = call i32 @CHECK_AND_RET(i32 %45)
  %47 = load i32, i32* @BPF_FD_TYPE_KPROBE, align 4
  %48 = load i32, i32* @BPF_FD_TYPE_KRETPROBE, align 4
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %50 = call i32 @test_nondebug_fs_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 5, i32 0, i32 0, i32 %47, i32 %48, i8* %49, i32 256)
  %51 = call i32 @CHECK_AND_RET(i32 %50)
  %52 = load i32, i32* @BPF_FD_TYPE_KPROBE, align 4
  %53 = load i32, i32* @BPF_FD_TYPE_KRETPROBE, align 4
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %55 = call i32 @test_nondebug_fs_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 0, i32 1, i32 %52, i32 %53, i8* %54, i32 256)
  %56 = call i32 @CHECK_AND_RET(i32 %55)
  %57 = call i32 @ksym_get_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %58 = load i32, i32* @BPF_FD_TYPE_KPROBE, align 4
  %59 = load i32, i32* @BPF_FD_TYPE_KRETPROBE, align 4
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %61 = call i32 @test_nondebug_fs_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* null, i32 0, i32 %57, i32 0, i32 %58, i32 %59, i8* %60, i32 256)
  %62 = call i32 @CHECK_AND_RET(i32 %61)
  %63 = call i32 @ksym_get_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %64 = load i32, i32* @BPF_FD_TYPE_KPROBE, align 4
  %65 = load i32, i32* @BPF_FD_TYPE_KRETPROBE, align 4
  %66 = call i32 @test_nondebug_fs_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* null, i32 0, i32 %63, i32 0, i32 %64, i32 %65, i8* null, i32 0)
  %67 = call i32 @CHECK_AND_RET(i32 %66)
  %68 = call i32 @ksym_get_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %69 = load i32, i32* @BPF_FD_TYPE_KPROBE, align 4
  %70 = load i32, i32* @BPF_FD_TYPE_KRETPROBE, align 4
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %72 = call i32 @test_nondebug_fs_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* null, i32 0, i32 %68, i32 1, i32 %69, i32 %70, i8* %71, i32 256)
  %73 = call i32 @CHECK_AND_RET(i32 %72)
  %74 = call i32 @ksym_get_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %75 = load i32, i32* @BPF_FD_TYPE_KPROBE, align 4
  %76 = load i32, i32* @BPF_FD_TYPE_KRETPROBE, align 4
  %77 = call i32 @test_nondebug_fs_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* null, i32 0, i32 %74, i32 1, i32 %75, i32 %76, i8* null, i32 0)
  %78 = call i32 @CHECK_AND_RET(i32 %77)
  store i32 sub nsw (i32 ptrtoint (i32 (i32, i8**)* @main to i32), i32 ptrtoint (i8* @__executable_start to i32)), i32* %9, align 4
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @BPF_FD_TYPE_UPROBE, align 4
  %84 = load i32, i32* @BPF_FD_TYPE_URETPROBE, align 4
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %86 = call i32 @test_nondebug_fs_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %81, i32 %82, i32 0, i32 0, i32 %83, i32 %84, i8* %85, i32 256)
  %87 = call i32 @CHECK_AND_RET(i32 %86)
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @BPF_FD_TYPE_UPROBE, align 4
  %93 = load i32, i32* @BPF_FD_TYPE_URETPROBE, align 4
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %95 = call i32 @test_nondebug_fs_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %90, i32 %91, i32 0, i32 1, i32 %92, i32 %93, i8* %94, i32 256)
  %96 = call i32 @CHECK_AND_RET(i32 %95)
  %97 = load i8**, i8*** %5, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @test_debug_fs_uprobe(i8* %99, i32 %100, i32 0)
  %102 = call i32 @CHECK_AND_RET(i32 %101)
  %103 = load i8**, i8*** %5, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @test_debug_fs_uprobe(i8* %105, i32 %106, i32 1)
  %108 = call i32 @CHECK_AND_RET(i32 %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %35, %32, %26, %21
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @load_kallsyms(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @load_bpf_file(i8*) #1

declare dso_local i32 @CHECK_AND_RET(i32) #1

declare dso_local i32 @test_debug_fs_kprobe(i32, i8*, i32) #1

declare dso_local i32 @test_nondebug_fs_probe(i8*, i8*, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ksym_get_addr(i8*) #1

declare dso_local i32 @test_debug_fs_uprobe(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
