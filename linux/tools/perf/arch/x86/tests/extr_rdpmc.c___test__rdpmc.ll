; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/tests/extr_rdpmc.c___test__rdpmc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/tests/extr_rdpmc.c___test__rdpmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32, i32, i32 }
%struct.sigaction = type { i64, i32, i32 }

@PERF_COUNT_HW_INSTRUCTIONS = common dso_local global i32 0, align 4
@PERF_TYPE_HARDWARE = common dso_local global i32 0, align 4
@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@segfault_handler = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Error: sys_perf_event_open() syscall returned with %d (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@page_size = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Error: mmap() syscall returned with (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%14d: %14Lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__test__rdpmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__test__rdpmc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.perf_event_attr, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sigaction, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store volatile i32 0, i32* %2, align 4
  store i32 1000, i32* %4, align 4
  %17 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 1
  %19 = load i32, i32* @PERF_COUNT_HW_INSTRUCTIONS, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 2
  %21 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  store i32 %21, i32* %20, align 4
  store i32 0, i32* %9, align 4
  %22 = load i32, i32* @STRERR_BUFSIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %26 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 2
  %27 = call i32 @sigfillset(i32* %26)
  %28 = load i32, i32* @segfault_handler, align 4
  %29 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @SIGSEGV, align 4
  %32 = call i32 @sigaction(i32 %31, %struct.sigaction* %10, i32* null)
  %33 = call i32 (...) @perf_event_open_cloexec_flag()
  %34 = call i32 @sys_perf_event_open(%struct.perf_event_attr* %8, i32 0, i32 -1, i32 -1, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %0
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @errno, align 4
  %40 = trunc i64 %23 to i32
  %41 = call i32 @str_error_r(i32 %39, i8* %25, i32 %40)
  %42 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %13, align 4
  br label %103

43:                                               ; preds = %0
  %44 = load i32, i32* @page_size, align 4
  %45 = load i32, i32* @PROT_READ, align 4
  %46 = load i32, i32* @MAP_SHARED, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i8* @mmap(i32* null, i32 %44, i32 %45, i32 %46, i32 %47, i32 0)
  store i8* %48, i8** %7, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = icmp eq i8* %49, inttoptr (i64 -1 to i8*)
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load i32, i32* @errno, align 4
  %53 = trunc i64 %23 to i32
  %54 = call i32 @str_error_r(i32 %52, i8* %25, i32 %53)
  %55 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %96

56:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %88, %56
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 6
  br i1 %59, label %60, label %91

60:                                               ; preds = %57
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @mmap_read_self(i8* %61)
  store i32 %62, i32* %14, align 4
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %70, %60
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load volatile i32, i32* %2, align 4
  %69 = add nsw i32 %68, 1
  store volatile i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %63

73:                                               ; preds = %63
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @mmap_read_self(i8* %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %4, align 4
  %77 = mul nsw i32 %76, 10
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %14, align 4
  %80 = sub nsw i32 %78, %79
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %81, i64 %83)
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %73
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %57

91:                                               ; preds = %57
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* @page_size, align 4
  %94 = call i32 @munmap(i8* %92, i32 %93)
  %95 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %96

96:                                               ; preds = %91, %51
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @close(i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %13, align 4
  br label %103

102:                                              ; preds = %96
  store i32 0, i32* %1, align 4
  store i32 1, i32* %13, align 4
  br label %103

103:                                              ; preds = %102, %101, %37
  %104 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %1, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sigfillset(i32*) #2

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #2

declare dso_local i32 @sys_perf_event_open(%struct.perf_event_attr*, i32, i32, i32, i32) #2

declare dso_local i32 @perf_event_open_cloexec_flag(...) #2

declare dso_local i32 @pr_err(i8*, i32, ...) #2

declare dso_local i32 @str_error_r(i32, i8*, i32) #2

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @mmap_read_self(i8*) #2

declare dso_local i32 @pr_debug(i8*, ...) #2

declare dso_local i32 @munmap(i8*, i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
