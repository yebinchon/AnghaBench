; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_perf_event_open_tracepoint.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_perf_event_open_tracepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32, i32, i32 }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"failed to determine tracepoint '%s/%s' perf event ID: %s\0A\00", align 1
@PERF_TYPE_TRACEPOINT = common dso_local global i32 0, align 4
@__NR_perf_event_open = common dso_local global i32 0, align 4
@PERF_FLAG_FD_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"tracepoint '%s/%s' perf_event_open() failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @perf_event_open_tracepoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_event_open_tracepoint(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.perf_event_attr, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = bitcast %struct.perf_event_attr* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 12, i1 false)
  %14 = load i32, i32* @STRERR_BUFSIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @determine_tracepoint_id(i8* %18, i8* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = trunc i64 %15 to i32
  %28 = call i32 @libbpf_strerror_r(i32 %26, i8* %17, i32 %27)
  %29 = call i32 @pr_warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %25, i32 %28)
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %54

31:                                               ; preds = %2
  %32 = load i32, i32* @PERF_TYPE_TRACEPOINT, align 4
  %33 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %6, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %6, i32 0, i32 0
  store i32 12, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %6, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @__NR_perf_event_open, align 4
  %38 = load i32, i32* @PERF_FLAG_FD_CLOEXEC, align 4
  %39 = call i32 @syscall(i32 %37, %struct.perf_event_attr* %6, i32 -1, i32 0, i32 -1, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %31
  %43 = load i32, i32* @errno, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %11, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %11, align 4
  %48 = trunc i64 %15 to i32
  %49 = call i32 @libbpf_strerror_r(i32 %47, i8* %17, i32 %48)
  %50 = call i32 @pr_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %45, i8* %46, i32 %49)
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %54

52:                                               ; preds = %31
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %54

54:                                               ; preds = %52, %42, %23
  %55 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @determine_tracepoint_id(i8*, i8*) #3

declare dso_local i32 @pr_warning(i8*, i8*, i8*, i32) #3

declare dso_local i32 @libbpf_strerror_r(i32, i8*, i32) #3

declare dso_local i32 @syscall(i32, %struct.perf_event_attr*, i32, i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
