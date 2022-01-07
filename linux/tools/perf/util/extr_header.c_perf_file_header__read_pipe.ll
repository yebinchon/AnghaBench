; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_perf_file_header__read_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_perf_file_header__read_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_pipe_file_header = type { i32, i32 }
%struct.perf_header = type { i64 }
%struct.feat_fd = type { %struct.perf_header*, i32 }

@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"endian/magic failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_pipe_file_header*, %struct.perf_header*, i32, i32)* @perf_file_header__read_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_file_header__read_pipe(%struct.perf_pipe_file_header* %0, %struct.perf_header* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_pipe_file_header*, align 8
  %7 = alloca %struct.perf_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.feat_fd, align 8
  %11 = alloca i64, align 8
  store %struct.perf_pipe_file_header* %0, %struct.perf_pipe_file_header** %6, align 8
  store %struct.perf_header* %1, %struct.perf_header** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = getelementptr inbounds %struct.feat_fd, %struct.feat_fd* %10, i32 0, i32 0
  %13 = load %struct.perf_header*, %struct.perf_header** %7, align 8
  store %struct.perf_header* %13, %struct.perf_header** %12, align 8
  %14 = getelementptr inbounds %struct.feat_fd, %struct.feat_fd* %10, i32 0, i32 1
  %15 = load i32, i32* @STDOUT_FILENO, align 4
  store i32 %15, i32* %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.perf_pipe_file_header*, %struct.perf_pipe_file_header** %6, align 8
  %18 = call i64 @readn(i32 %16, %struct.perf_pipe_file_header* %17, i32 8)
  store i64 %18, i64* %11, align 8
  %19 = load i64, i64* %11, align 8
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %55

22:                                               ; preds = %4
  %23 = load %struct.perf_pipe_file_header*, %struct.perf_pipe_file_header** %6, align 8
  %24 = getelementptr inbounds %struct.perf_pipe_file_header, %struct.perf_pipe_file_header* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.perf_pipe_file_header*, %struct.perf_pipe_file_header** %6, align 8
  %27 = getelementptr inbounds %struct.perf_pipe_file_header, %struct.perf_pipe_file_header* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.perf_header*, %struct.perf_header** %7, align 8
  %30 = call i64 @check_magic_endian(i32 %25, i32 %28, i32 1, %struct.perf_header* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %55

34:                                               ; preds = %22
  %35 = load %struct.perf_header*, %struct.perf_header** %7, align 8
  %36 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.perf_pipe_file_header*, %struct.perf_pipe_file_header** %6, align 8
  %41 = getelementptr inbounds %struct.perf_pipe_file_header, %struct.perf_pipe_file_header* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bswap_64(i32 %42)
  %44 = load %struct.perf_pipe_file_header*, %struct.perf_pipe_file_header** %6, align 8
  %45 = getelementptr inbounds %struct.perf_pipe_file_header, %struct.perf_pipe_file_header* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %39, %34
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.perf_pipe_file_header*, %struct.perf_pipe_file_header** %6, align 8
  %51 = call i64 @do_write(%struct.feat_fd* %10, %struct.perf_pipe_file_header* %50, i32 8)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 -1, i32* %5, align 4
  br label %55

54:                                               ; preds = %49, %46
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %53, %32, %21
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @readn(i32, %struct.perf_pipe_file_header*, i32) #1

declare dso_local i64 @check_magic_endian(i32, i32, i32, %struct.perf_header*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @bswap_64(i32) #1

declare dso_local i64 @do_write(%struct.feat_fd*, %struct.perf_pipe_file_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
