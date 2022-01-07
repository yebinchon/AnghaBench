; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_bpf_verif_scale.c_test_bpf_verif_scale.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_bpf_verif_scale.c_test_bpf_verif_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.scale_test_def = type { i8*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"loop3.o\00", align 1
@BPF_PROG_TYPE_RAW_TRACEPOINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"test_verif_scale1.o\00", align 1
@BPF_PROG_TYPE_SCHED_CLS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"test_verif_scale2.o\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"test_verif_scale3.o\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"pyperf50.o\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"pyperf100.o\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"pyperf180.o\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"pyperf600.o\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"pyperf600_nounroll.o\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"loop1.o\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"loop2.o\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"loop4.o\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"loop5.o\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"strobemeta.o\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"strobemeta_nounroll1.o\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"strobemeta_nounroll2.o\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"test_sysctl_loop1.o\00", align 1
@BPF_PROG_TYPE_CGROUP_SYSCTL = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [20 x i8] c"test_sysctl_loop2.o\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"test_xdp_loop.o\00", align 1
@BPF_PROG_TYPE_XDP = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [17 x i8] c"test_seg6_loop.o\00", align 1
@BPF_PROG_TYPE_LWT_SEG6LOCAL = common dso_local global i32 0, align 4
@env = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@libbpf_debug_print = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_bpf_verif_scale() #0 {
  %1 = alloca [20 x %struct.scale_test_def], align 16
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.scale_test_def*, align 8
  %6 = getelementptr inbounds [20 x %struct.scale_test_def], [20 x %struct.scale_test_def]* %1, i64 0, i64 0
  %7 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7, align 16
  %8 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %6, i32 0, i32 1
  %9 = load i32, i32* @BPF_PROG_TYPE_RAW_TRACEPOINT, align 4
  store i32 %9, i32* %8, align 8
  %10 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %6, i32 0, i32 2
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %6, i32 0, i32 3
  store i32 0, i32* %11, align 16
  %12 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %6, i32 0, i32 4
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %6, i32 0, i32 5
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %6, i64 1
  %15 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 16
  %16 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %14, i32 0, i32 1
  %17 = load i32, i32* @BPF_PROG_TYPE_SCHED_CLS, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %14, i32 0, i32 2
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %14, i32 0, i32 3
  store i32 0, i32* %19, align 16
  %20 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %14, i32 0, i32 4
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %14, i32 0, i32 5
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %14, i64 1
  %23 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %23, align 16
  %24 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %22, i32 0, i32 1
  %25 = load i32, i32* @BPF_PROG_TYPE_SCHED_CLS, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %22, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %22, i32 0, i32 3
  store i32 0, i32* %27, align 16
  %28 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %22, i32 0, i32 4
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %22, i32 0, i32 5
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %22, i64 1
  %31 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %31, align 16
  %32 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %30, i32 0, i32 1
  %33 = load i32, i32* @BPF_PROG_TYPE_SCHED_CLS, align 4
  store i32 %33, i32* %32, align 8
  %34 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %30, i32 0, i32 2
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %30, i32 0, i32 3
  store i32 0, i32* %35, align 16
  %36 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %30, i32 0, i32 4
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %30, i32 0, i32 5
  store i32 0, i32* %37, align 8
  %38 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %30, i64 1
  %39 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %39, align 16
  %40 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %38, i32 0, i32 1
  %41 = load i32, i32* @BPF_PROG_TYPE_RAW_TRACEPOINT, align 4
  store i32 %41, i32* %40, align 8
  %42 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %38, i32 0, i32 2
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %38, i32 0, i32 3
  store i32 0, i32* %43, align 16
  %44 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %38, i32 0, i32 4
  store i32 0, i32* %44, align 4
  %45 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %38, i32 0, i32 5
  store i32 0, i32* %45, align 8
  %46 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %38, i64 1
  %47 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %47, align 16
  %48 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %46, i32 0, i32 1
  %49 = load i32, i32* @BPF_PROG_TYPE_RAW_TRACEPOINT, align 4
  store i32 %49, i32* %48, align 8
  %50 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %46, i32 0, i32 2
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %46, i32 0, i32 3
  store i32 0, i32* %51, align 16
  %52 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %46, i32 0, i32 4
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %46, i32 0, i32 5
  store i32 0, i32* %53, align 8
  %54 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %46, i64 1
  %55 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %55, align 16
  %56 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %54, i32 0, i32 1
  %57 = load i32, i32* @BPF_PROG_TYPE_RAW_TRACEPOINT, align 4
  store i32 %57, i32* %56, align 8
  %58 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %54, i32 0, i32 2
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %54, i32 0, i32 3
  store i32 0, i32* %59, align 16
  %60 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %54, i32 0, i32 4
  store i32 0, i32* %60, align 4
  %61 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %54, i32 0, i32 5
  store i32 0, i32* %61, align 8
  %62 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %54, i64 1
  %63 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %63, align 16
  %64 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %62, i32 0, i32 1
  %65 = load i32, i32* @BPF_PROG_TYPE_RAW_TRACEPOINT, align 4
  store i32 %65, i32* %64, align 8
  %66 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %62, i32 0, i32 2
  store i32 0, i32* %66, align 4
  %67 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %62, i32 0, i32 3
  store i32 0, i32* %67, align 16
  %68 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %62, i32 0, i32 4
  store i32 0, i32* %68, align 4
  %69 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %62, i32 0, i32 5
  store i32 0, i32* %69, align 8
  %70 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %62, i64 1
  %71 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %70, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8** %71, align 16
  %72 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %70, i32 0, i32 1
  %73 = load i32, i32* @BPF_PROG_TYPE_RAW_TRACEPOINT, align 4
  store i32 %73, i32* %72, align 8
  %74 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %70, i32 0, i32 2
  store i32 0, i32* %74, align 4
  %75 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %70, i32 0, i32 3
  store i32 0, i32* %75, align 16
  %76 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %70, i32 0, i32 4
  store i32 0, i32* %76, align 4
  %77 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %70, i32 0, i32 5
  store i32 0, i32* %77, align 8
  %78 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %70, i64 1
  %79 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %78, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %79, align 16
  %80 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %78, i32 0, i32 1
  %81 = load i32, i32* @BPF_PROG_TYPE_RAW_TRACEPOINT, align 4
  store i32 %81, i32* %80, align 8
  %82 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %78, i32 0, i32 2
  store i32 0, i32* %82, align 4
  %83 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %78, i32 0, i32 3
  store i32 0, i32* %83, align 16
  %84 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %78, i32 0, i32 4
  store i32 0, i32* %84, align 4
  %85 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %78, i32 0, i32 5
  store i32 0, i32* %85, align 8
  %86 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %78, i64 1
  %87 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %86, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %87, align 16
  %88 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %86, i32 0, i32 1
  %89 = load i32, i32* @BPF_PROG_TYPE_RAW_TRACEPOINT, align 4
  store i32 %89, i32* %88, align 8
  %90 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %86, i32 0, i32 2
  store i32 0, i32* %90, align 4
  %91 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %86, i32 0, i32 3
  store i32 0, i32* %91, align 16
  %92 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %86, i32 0, i32 4
  store i32 0, i32* %92, align 4
  %93 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %86, i32 0, i32 5
  store i32 0, i32* %93, align 8
  %94 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %86, i64 1
  %95 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %94, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %95, align 16
  %96 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %94, i32 0, i32 1
  %97 = load i32, i32* @BPF_PROG_TYPE_SCHED_CLS, align 4
  store i32 %97, i32* %96, align 8
  %98 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %94, i32 0, i32 2
  store i32 0, i32* %98, align 4
  %99 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %94, i32 0, i32 3
  store i32 0, i32* %99, align 16
  %100 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %94, i32 0, i32 4
  store i32 0, i32* %100, align 4
  %101 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %94, i32 0, i32 5
  store i32 0, i32* %101, align 8
  %102 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %94, i64 1
  %103 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %102, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %103, align 16
  %104 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %102, i32 0, i32 1
  %105 = load i32, i32* @BPF_PROG_TYPE_SCHED_CLS, align 4
  store i32 %105, i32* %104, align 8
  %106 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %102, i32 0, i32 2
  store i32 0, i32* %106, align 4
  %107 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %102, i32 0, i32 3
  store i32 0, i32* %107, align 16
  %108 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %102, i32 0, i32 4
  store i32 0, i32* %108, align 4
  %109 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %102, i32 0, i32 5
  store i32 0, i32* %109, align 8
  %110 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %102, i64 1
  %111 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %110, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8** %111, align 16
  %112 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %110, i32 0, i32 1
  %113 = load i32, i32* @BPF_PROG_TYPE_RAW_TRACEPOINT, align 4
  store i32 %113, i32* %112, align 8
  %114 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %110, i32 0, i32 2
  store i32 0, i32* %114, align 4
  %115 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %110, i32 0, i32 3
  store i32 0, i32* %115, align 16
  %116 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %110, i32 0, i32 4
  store i32 0, i32* %116, align 4
  %117 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %110, i32 0, i32 5
  store i32 0, i32* %117, align 8
  %118 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %110, i64 1
  %119 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %118, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8** %119, align 16
  %120 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %118, i32 0, i32 1
  %121 = load i32, i32* @BPF_PROG_TYPE_RAW_TRACEPOINT, align 4
  store i32 %121, i32* %120, align 8
  %122 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %118, i32 0, i32 2
  store i32 0, i32* %122, align 4
  %123 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %118, i32 0, i32 3
  store i32 0, i32* %123, align 16
  %124 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %118, i32 0, i32 4
  store i32 0, i32* %124, align 4
  %125 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %118, i32 0, i32 5
  store i32 0, i32* %125, align 8
  %126 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %118, i64 1
  %127 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %126, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8** %127, align 16
  %128 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %126, i32 0, i32 1
  %129 = load i32, i32* @BPF_PROG_TYPE_RAW_TRACEPOINT, align 4
  store i32 %129, i32* %128, align 8
  %130 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %126, i32 0, i32 2
  store i32 0, i32* %130, align 4
  %131 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %126, i32 0, i32 3
  store i32 0, i32* %131, align 16
  %132 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %126, i32 0, i32 4
  store i32 0, i32* %132, align 4
  %133 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %126, i32 0, i32 5
  store i32 0, i32* %133, align 8
  %134 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %126, i64 1
  %135 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %134, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8** %135, align 16
  %136 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %134, i32 0, i32 1
  %137 = load i32, i32* @BPF_PROG_TYPE_CGROUP_SYSCTL, align 4
  store i32 %137, i32* %136, align 8
  %138 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %134, i32 0, i32 2
  store i32 0, i32* %138, align 4
  %139 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %134, i32 0, i32 3
  store i32 0, i32* %139, align 16
  %140 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %134, i32 0, i32 4
  store i32 0, i32* %140, align 4
  %141 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %134, i32 0, i32 5
  store i32 0, i32* %141, align 8
  %142 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %134, i64 1
  %143 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %142, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i8** %143, align 16
  %144 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %142, i32 0, i32 1
  %145 = load i32, i32* @BPF_PROG_TYPE_CGROUP_SYSCTL, align 4
  store i32 %145, i32* %144, align 8
  %146 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %142, i32 0, i32 2
  store i32 0, i32* %146, align 4
  %147 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %142, i32 0, i32 3
  store i32 0, i32* %147, align 16
  %148 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %142, i32 0, i32 4
  store i32 0, i32* %148, align 4
  %149 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %142, i32 0, i32 5
  store i32 0, i32* %149, align 8
  %150 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %142, i64 1
  %151 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %150, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8** %151, align 16
  %152 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %150, i32 0, i32 1
  %153 = load i32, i32* @BPF_PROG_TYPE_XDP, align 4
  store i32 %153, i32* %152, align 8
  %154 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %150, i32 0, i32 2
  store i32 0, i32* %154, align 4
  %155 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %150, i32 0, i32 3
  store i32 0, i32* %155, align 16
  %156 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %150, i32 0, i32 4
  store i32 0, i32* %156, align 4
  %157 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %150, i32 0, i32 5
  store i32 0, i32* %157, align 8
  %158 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %150, i64 1
  %159 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %158, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8** %159, align 16
  %160 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %158, i32 0, i32 1
  %161 = load i32, i32* @BPF_PROG_TYPE_LWT_SEG6LOCAL, align 4
  store i32 %161, i32* %160, align 8
  %162 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %158, i32 0, i32 2
  store i32 0, i32* %162, align 4
  %163 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %158, i32 0, i32 3
  store i32 0, i32* %163, align 16
  %164 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %158, i32 0, i32 4
  store i32 0, i32* %164, align 4
  %165 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %158, i32 0, i32 5
  store i32 0, i32* %165, align 8
  store i32* null, i32** %2, align 8
  %166 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @env, i32 0, i32 0), align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %0
  %169 = call i32 (...) @test__force_log()
  %170 = load i32*, i32** @libbpf_debug_print, align 8
  %171 = call i32* @libbpf_set_print(i32* %170)
  store i32* %171, i32** %2, align 8
  br label %172

172:                                              ; preds = %168, %0
  store i32 0, i32* %4, align 4
  br label %173

173:                                              ; preds = %208, %172
  %174 = load i32, i32* %4, align 4
  %175 = getelementptr inbounds [20 x %struct.scale_test_def], [20 x %struct.scale_test_def]* %1, i64 0, i64 0
  %176 = call i32 @ARRAY_SIZE(%struct.scale_test_def* %175)
  %177 = icmp slt i32 %174, %176
  br i1 %177, label %178, label %211

178:                                              ; preds = %173
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [20 x %struct.scale_test_def], [20 x %struct.scale_test_def]* %1, i64 0, i64 %180
  store %struct.scale_test_def* %181, %struct.scale_test_def** %5, align 8
  %182 = load %struct.scale_test_def*, %struct.scale_test_def** %5, align 8
  %183 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @test__start_subtest(i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %178
  br label %208

188:                                              ; preds = %178
  %189 = load %struct.scale_test_def*, %struct.scale_test_def** %5, align 8
  %190 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.scale_test_def*, %struct.scale_test_def** %5, align 8
  %193 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @check_load(i32 %191, i32 %194)
  store i32 %195, i32* %3, align 4
  %196 = load i32, i32* %3, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %188
  %199 = load %struct.scale_test_def*, %struct.scale_test_def** %5, align 8
  %200 = getelementptr inbounds %struct.scale_test_def, %struct.scale_test_def* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  br label %204

204:                                              ; preds = %198, %188
  %205 = phi i1 [ false, %188 ], [ %203, %198 ]
  %206 = zext i1 %205 to i32
  %207 = call i32 @CHECK_FAIL(i32 %206)
  br label %208

208:                                              ; preds = %204, %187
  %209 = load i32, i32* %4, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %4, align 4
  br label %173

211:                                              ; preds = %173
  %212 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @env, i32 0, i32 0), align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load i32*, i32** %2, align 8
  %216 = call i32* @libbpf_set_print(i32* %215)
  br label %217

217:                                              ; preds = %214, %211
  ret void
}

declare dso_local i32 @test__force_log(...) #1

declare dso_local i32* @libbpf_set_print(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.scale_test_def*) #1

declare dso_local i32 @test__start_subtest(i32) #1

declare dso_local i32 @check_load(i32, i32) #1

declare dso_local i32 @CHECK_FAIL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
