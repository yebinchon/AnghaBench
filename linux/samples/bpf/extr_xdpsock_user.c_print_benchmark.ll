; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_print_benchmark.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_print_benchmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"INVALID\00", align 1
@opt_bench = common dso_local global i64 0, align 8
@BENCH_RXDROP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"rxdrop\00", align 1
@BENCH_TXONLY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"txonly\00", align 1
@BENCH_L2FWD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"l2fwd\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s:%d %s \00", align 1
@opt_if = common dso_local global i8* null, align 8
@opt_queue = common dso_local global i32 0, align 4
@opt_xdp_flags = common dso_local global i32 0, align 4
@XDP_FLAGS_SKB_MODE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"xdp-skb \00", align 1
@XDP_FLAGS_DRV_MODE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"xdp-drv \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@opt_poll = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"poll() \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"running...\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_benchmark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_benchmark(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load i64, i64* @opt_bench, align 8
  %5 = load i64, i64* @BENCH_RXDROP, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %20

8:                                                ; preds = %1
  %9 = load i64, i64* @opt_bench, align 8
  %10 = load i64, i64* @BENCH_TXONLY, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %19

13:                                               ; preds = %8
  %14 = load i64, i64* @opt_bench, align 8
  %15 = load i64, i64* @BENCH_L2FWD, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %18

18:                                               ; preds = %17, %13
  br label %19

19:                                               ; preds = %18, %12
  br label %20

20:                                               ; preds = %19, %7
  %21 = load i8*, i8** @opt_if, align 8
  %22 = load i32, i32* @opt_queue, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %21, i32 %22, i8* %23)
  %25 = load i32, i32* @opt_xdp_flags, align 4
  %26 = load i32, i32* @XDP_FLAGS_SKB_MODE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %41

31:                                               ; preds = %20
  %32 = load i32, i32* @opt_xdp_flags, align 4
  %33 = load i32, i32* @XDP_FLAGS_DRV_MODE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %40

38:                                               ; preds = %31
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %36
  br label %41

41:                                               ; preds = %40, %29
  %42 = load i64, i64* @opt_poll, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, i32* %2, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %51 = load i32, i32* @stdout, align 4
  %52 = call i32 @fflush(i32 %51)
  br label %53

53:                                               ; preds = %49, %46
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
