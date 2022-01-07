; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_perf_buffer__open_cpu_buf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_perf_buffer__open_cpu_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_buf = type { i32, i32, i64, i32*, %struct.perf_buffer* }
%struct.perf_buffer = type { i64, i64 }
%struct.perf_event_attr = type { i32 }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@__NR_perf_event_open = common dso_local global i32 0, align 4
@PERF_FLAG_FD_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"failed to open perf buffer event on cpu #%d: %s\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to mmap perf buffer on cpu #%d: %s\0A\00", align 1
@PERF_EVENT_IOC_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"failed to enable perf buffer event on cpu #%d: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_cpu_buf* (%struct.perf_buffer*, %struct.perf_event_attr*, i32, i32)* @perf_buffer__open_cpu_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_cpu_buf* @perf_buffer__open_cpu_buf(%struct.perf_buffer* %0, %struct.perf_event_attr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.perf_cpu_buf*, align 8
  %6 = alloca %struct.perf_buffer*, align 8
  %7 = alloca %struct.perf_event_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.perf_cpu_buf*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.perf_buffer* %0, %struct.perf_buffer** %6, align 8
  store %struct.perf_event_attr* %1, %struct.perf_event_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @STRERR_BUFSIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = call %struct.perf_cpu_buf* @calloc(i32 1, i32 32)
  store %struct.perf_cpu_buf* %19, %struct.perf_cpu_buf** %10, align 8
  %20 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %10, align 8
  %21 = icmp ne %struct.perf_cpu_buf* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.perf_cpu_buf* @ERR_PTR(i32 %24)
  store %struct.perf_cpu_buf* %25, %struct.perf_cpu_buf** %5, align 8
  store i32 1, i32* %14, align 4
  br label %111

26:                                               ; preds = %4
  %27 = load %struct.perf_buffer*, %struct.perf_buffer** %6, align 8
  %28 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %10, align 8
  %29 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %28, i32 0, i32 4
  store %struct.perf_buffer* %27, %struct.perf_buffer** %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %10, align 8
  %32 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %10, align 8
  %35 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @__NR_perf_event_open, align 4
  %37 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @PERF_FLAG_FD_CLOEXEC, align 4
  %40 = call i64 @syscall(i32 %36, %struct.perf_event_attr* %37, i32 -1, i32 %38, i32 -1, i32 %39)
  %41 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %10, align 8
  %42 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %10, align 8
  %44 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %26
  %48 = load i32, i32* @errno, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %13, align 4
  %52 = trunc i64 %16 to i32
  %53 = call i32 @libbpf_strerror_r(i32 %51, i8* %18, i32 %52)
  %54 = call i32 @pr_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53)
  br label %105

55:                                               ; preds = %26
  %56 = load %struct.perf_buffer*, %struct.perf_buffer** %6, align 8
  %57 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.perf_buffer*, %struct.perf_buffer** %6, align 8
  %60 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = load i32, i32* @PROT_READ, align 4
  %64 = load i32, i32* @PROT_WRITE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @MAP_SHARED, align 4
  %67 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %10, align 8
  %68 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = call i32* @mmap(i32* null, i64 %62, i32 %65, i32 %66, i64 %69, i32 0)
  %71 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %10, align 8
  %72 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %71, i32 0, i32 3
  store i32* %70, i32** %72, align 8
  %73 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %10, align 8
  %74 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32*, i32** @MAP_FAILED, align 8
  %77 = icmp eq i32* %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %55
  %79 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %10, align 8
  %80 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %79, i32 0, i32 3
  store i32* null, i32** %80, align 8
  %81 = load i32, i32* @errno, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %13, align 4
  %85 = trunc i64 %16 to i32
  %86 = call i32 @libbpf_strerror_r(i32 %84, i8* %18, i32 %85)
  %87 = call i32 @pr_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %86)
  br label %105

88:                                               ; preds = %55
  %89 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %10, align 8
  %90 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @PERF_EVENT_IOC_ENABLE, align 4
  %93 = call i64 @ioctl(i64 %91, i32 %92, i32 0)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %88
  %96 = load i32, i32* @errno, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %13, align 4
  %100 = trunc i64 %16 to i32
  %101 = call i32 @libbpf_strerror_r(i32 %99, i8* %18, i32 %100)
  %102 = call i32 @pr_warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %98, i32 %101)
  br label %105

103:                                              ; preds = %88
  %104 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %10, align 8
  store %struct.perf_cpu_buf* %104, %struct.perf_cpu_buf** %5, align 8
  store i32 1, i32* %14, align 4
  br label %111

105:                                              ; preds = %95, %78, %47
  %106 = load %struct.perf_buffer*, %struct.perf_buffer** %6, align 8
  %107 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %10, align 8
  %108 = call i32 @perf_buffer__free_cpu_buf(%struct.perf_buffer* %106, %struct.perf_cpu_buf* %107)
  %109 = load i32, i32* %13, align 4
  %110 = call %struct.perf_cpu_buf* @ERR_PTR(i32 %109)
  store %struct.perf_cpu_buf* %110, %struct.perf_cpu_buf** %5, align 8
  store i32 1, i32* %14, align 4
  br label %111

111:                                              ; preds = %105, %103, %22
  %112 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %5, align 8
  ret %struct.perf_cpu_buf* %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.perf_cpu_buf* @calloc(i32, i32) #2

declare dso_local %struct.perf_cpu_buf* @ERR_PTR(i32) #2

declare dso_local i64 @syscall(i32, %struct.perf_event_attr*, i32, i32, i32, i32) #2

declare dso_local i32 @pr_warning(i8*, i32, i32) #2

declare dso_local i32 @libbpf_strerror_r(i32, i8*, i32) #2

declare dso_local i32* @mmap(i32*, i64, i32, i32, i64, i32) #2

declare dso_local i64 @ioctl(i64, i32, i32) #2

declare dso_local i32 @perf_buffer__free_cpu_buf(%struct.perf_buffer*, %struct.perf_cpu_buf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
