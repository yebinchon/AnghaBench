; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_test_cgrp2_attach.c_attach_filter.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_test_cgrp2_attach.c_attach_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BPF_MAP_TYPE_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to create map: '%s'\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Output from kernel verifier:\0A%s\0A-------\0A\00", align 1
@bpf_log_buf = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to load prog: '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to attach prog to cgroup: '%s'\0A\00", align 1
@MAP_KEY_PACKETS = common dso_local global i32 0, align 4
@MAP_KEY_BYTES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"cgroup received %lld packets, %lld bytes\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @attach_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_filter(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @BPF_MAP_TYPE_ARRAY, align 4
  %15 = call i32 @bpf_create_map(i32 %14, i32 4, i32 8, i32 256, i32 0)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* @errno, align 4
  %20 = call i8* @strerror(i32 %19)
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %22, i32* %4, align 4
  br label %66

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @prog_load(i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i8*, i8** @bpf_log_buf, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load i32, i32* @errno, align 4
  %33 = call i8* @strerror(i32 %32)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %35, i32* %4, align 4
  br label %66

36:                                               ; preds = %23
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @bpf_prog_attach(i32 %37, i32 %38, i32 %39, i32 0)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i32, i32* @errno, align 4
  %45 = call i8* @strerror(i32 %44)
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %47, i32* %4, align 4
  br label %66

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %49
  %50 = load i32, i32* @MAP_KEY_PACKETS, align 4
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @bpf_map_lookup_elem(i32 %51, i32* %11, i64* %12)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* @MAP_KEY_BYTES, align 4
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @bpf_map_lookup_elem(i32 %57, i32* %11, i64* %13)
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %13, align 8
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %62, i64 %63)
  %65 = call i32 @sleep(i32 1)
  br label %49

66:                                               ; preds = %43, %31, %18
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @bpf_create_map(i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @prog_load(i32, i32) #1

declare dso_local i32 @bpf_prog_attach(i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @bpf_map_lookup_elem(i32, i32*, i64*) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
