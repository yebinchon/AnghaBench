; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_mmap-thread-lookup.c_thread_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_mmap-thread-lookup.c_thread_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_data = type { i32, i8* }

@page_size = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"mmap failed\00", align 1
@SYS_gettid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"tid = %d, map = %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread_data*)* @thread_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_init(%struct.thread_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread_data*, align 8
  %4 = alloca i8*, align 8
  store %struct.thread_data* %0, %struct.thread_data** %3, align 8
  %5 = load i32, i32* @page_size, align 4
  %6 = load i32, i32* @PROT_READ, align 4
  %7 = load i32, i32* @PROT_WRITE, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @PROT_EXEC, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MAP_SHARED, align 4
  %12 = load i32, i32* @MAP_ANONYMOUS, align 4
  %13 = or i32 %11, %12
  %14 = call i8* @mmap(i32* null, i32 %5, i32 %10, i32 %13, i32 -1, i32 0)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** @MAP_FAILED, align 8
  %17 = icmp eq i8* %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %33

20:                                               ; preds = %1
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.thread_data*, %struct.thread_data** %3, align 8
  %23 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @SYS_gettid, align 4
  %25 = call i32 @syscall(i32 %24)
  %26 = load %struct.thread_data*, %struct.thread_data** %3, align 8
  %27 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.thread_data*, %struct.thread_data** %3, align 8
  %29 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %30, i8* %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %20, %18
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @syscall(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
