; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_sockex1_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_sockex1_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s_kern.o\00", align 1
@BPF_PROG_TYPE_SOCKET_FILTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"my_map\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ATTACH_BPF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"ping -4 -c5 localhost\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IPPROTO_ICMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"TCP %lld UDP %lld ICMP %lld bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.bpf_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @snprintf(i8* %17, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %23 = load i32, i32* @BPF_PROG_TYPE_SOCKET_FILTER, align 4
  %24 = call i64 @bpf_prog_load(i8* %22, i32 %23, %struct.bpf_object** %6, i32* %8)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %71

27:                                               ; preds = %2
  %28 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  %29 = call i32 @bpf_object__find_map_fd_by_name(%struct.bpf_object* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %29, i32* %7, align 4
  %30 = call i32 @open_raw_sock(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @SOL_SOCKET, align 4
  %33 = load i32, i32* @SO_ATTACH_BPF, align 4
  %34 = call i64 @setsockopt(i32 %31, i32 %32, i32 %33, i32* %8, i32 4)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = call i32* @popen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %38, i32** %12, align 8
  %39 = load i32*, i32** %12, align 8
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %67, %27
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 5
  br i1 %42, label %43, label %70

43:                                               ; preds = %40
  %44 = load i32, i32* @IPPROTO_TCP, align 4
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @bpf_map_lookup_elem(i32 %45, i32* %16, i64* %13)
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* @IPPROTO_UDP, align 4
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @bpf_map_lookup_elem(i32 %51, i32* %16, i64* %14)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* @IPPROTO_ICMP, align 4
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @bpf_map_lookup_elem(i32 %57, i32* %16, i64* %15)
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* %15, align 8
  %65 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %62, i64 %63, i64 %64)
  %66 = call i32 @sleep(i32 1)
  br label %67

67:                                               ; preds = %43
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %40

70:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %26
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @bpf_prog_load(i8*, i32, %struct.bpf_object**, i32*) #1

declare dso_local i32 @bpf_object__find_map_fd_by_name(%struct.bpf_object*, i8*) #1

declare dso_local i32 @open_raw_sock(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i64 @bpf_map_lookup_elem(i32, i32*, i64*) #1

declare dso_local i32 @printf(i8*, i64, i64, i64) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
