; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_tcp_rtt.c_run_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_tcp_rtt.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_load_attr = type { i8*, i32, i32 }
%struct.bpf_object = type { i32 }
%struct.bpf_map = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"./tcp_rtt.o\00", align 1
@BPF_CGROUP_SOCK_OPS = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_SOCK_OPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to load BPF object\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to attach BPF program\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"syn-ack\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"first payload byte\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_test(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_prog_load_attr, align 8
  %7 = alloca %struct.bpf_object*, align 8
  %8 = alloca %struct.bpf_map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %6, i32 0, i32 1
  %15 = load i32, i32* @BPF_CGROUP_SOCK_OPS, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %6, i32 0, i32 2
  %17 = load i32, i32* @BPF_PROG_TYPE_SOCK_OPS, align 4
  store i32 %17, i32* %16, align 4
  %18 = call i32 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr* %6, %struct.bpf_object** %7, i32* %10)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %71

23:                                               ; preds = %2
  %24 = load %struct.bpf_object*, %struct.bpf_object** %7, align 8
  %25 = call %struct.bpf_map* @bpf_map__next(i32* null, %struct.bpf_object* %24)
  store %struct.bpf_map* %25, %struct.bpf_map** %8, align 8
  %26 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %27 = call i32 @bpf_map__fd(%struct.bpf_map* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @BPF_CGROUP_SOCK_OPS, align 4
  %31 = call i32 @bpf_prog_attach(i32 %28, i32 %29, i32 %30, i32 0)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %67

36:                                               ; preds = %23
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @connect_to_server(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 -1, i32* %12, align 4
  br label %67

42:                                               ; preds = %36
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @verify_sk(i32 %43, i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 0, i32 1, i32 0, i32 0)
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @send_byte(i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @wait_for_ack(i32 %52, i32 100)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  store i32 -1, i32* %12, align 4
  br label %64

56:                                               ; preds = %42
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @verify_sk(i32 %57, i32 %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 2, i32 0, i32 2, i32 0, i32 0)
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %56, %55
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @close(i32 %65)
  br label %67

67:                                               ; preds = %64, %41, %34
  %68 = load %struct.bpf_object*, %struct.bpf_object** %7, align 8
  %69 = call i32 @bpf_object__close(%struct.bpf_object* %68)
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %21
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr*, %struct.bpf_object**, i32*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local %struct.bpf_map* @bpf_map__next(i32*, %struct.bpf_object*) #1

declare dso_local i32 @bpf_map__fd(%struct.bpf_map*) #1

declare dso_local i32 @bpf_prog_attach(i32, i32, i32, i32) #1

declare dso_local i32 @connect_to_server(i32) #1

declare dso_local i64 @verify_sk(i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @send_byte(i32) #1

declare dso_local i64 @wait_for_ack(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @bpf_object__close(%struct.bpf_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
