; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_tcp_rtt.c_server_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_tcp_rtt.c_server_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@server_started_mtx = common dso_local global i32 0, align 4
@server_started = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to listed on socket\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to accept client\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Unexpected success in second accept\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @server_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @server_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sockaddr_storage, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 4, i32* %5, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @listen(i32 %12, i32 1)
  store i32 %13, i32* %8, align 4
  %14 = call i32 @pthread_mutex_lock(i32* @server_started_mtx)
  %15 = call i32 @pthread_cond_signal(i32* @server_started)
  %16 = call i32 @pthread_mutex_unlock(i32* @server_started_mtx)
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i64 @CHECK_FAIL(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %49

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  %26 = bitcast %struct.sockaddr_storage* %4 to %struct.sockaddr*
  %27 = call i64 @accept(i32 %25, %struct.sockaddr* %26, i32* %5)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i64 @CHECK_FAIL(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %49

36:                                               ; preds = %24
  %37 = load i32, i32* %6, align 4
  %38 = bitcast %struct.sockaddr_storage* %4 to %struct.sockaddr*
  %39 = call i64 @accept(i32 %37, %struct.sockaddr* %38, i32* %5)
  %40 = icmp sge i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @CHECK_FAIL(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = call i32 @perror(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %49

46:                                               ; preds = %36
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @close(i32 %47)
  store i8* null, i8** %2, align 8
  br label %49

49:                                               ; preds = %46, %44, %34, %22
  %50 = load i8*, i8** %2, align 8
  ret i8* %50
}

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @CHECK_FAIL(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
