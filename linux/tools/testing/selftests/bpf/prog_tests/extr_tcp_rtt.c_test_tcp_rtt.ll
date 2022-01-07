; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_tcp_rtt.c_test_tcp_rtt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_tcp_rtt.c_test_tcp_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"/tcp_rtt\00", align 1
@server_thread = common dso_local global i32 0, align 4
@server_started_mtx = common dso_local global i32 0, align 4
@server_started = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_tcp_rtt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @test__join_cgroup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i64 @CHECK_FAIL(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %40

11:                                               ; preds = %0
  %12 = call i32 (...) @start_server()
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp slt i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @CHECK_FAIL(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %37

19:                                               ; preds = %11
  %20 = load i32, i32* @server_thread, align 4
  %21 = bitcast i32* %1 to i8*
  %22 = call i32 @pthread_create(i32* %3, i32* null, i32 %20, i8* %21)
  %23 = call i64 @CHECK_FAIL(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %34

26:                                               ; preds = %19
  %27 = call i32 @pthread_mutex_lock(i32* @server_started_mtx)
  %28 = call i32 @pthread_cond_wait(i32* @server_started, i32* @server_started_mtx)
  %29 = call i32 @pthread_mutex_unlock(i32* @server_started_mtx)
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @run_test(i32 %30, i32 %31)
  %33 = call i64 @CHECK_FAIL(i32 %32)
  br label %34

34:                                               ; preds = %26, %25
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @close(i32 %35)
  br label %37

37:                                               ; preds = %34, %18
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @close(i32 %38)
  br label %40

40:                                               ; preds = %37, %10
  ret void
}

declare dso_local i32 @test__join_cgroup(i8*) #1

declare dso_local i64 @CHECK_FAIL(i32) #1

declare dso_local i32 @start_server(...) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @run_test(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
