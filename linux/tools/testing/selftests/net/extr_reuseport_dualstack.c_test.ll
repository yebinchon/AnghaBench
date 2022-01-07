; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_dualstack.c_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_dualstack.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epoll_event = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to create epoll\00", align 1
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLL_CTL_ADD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to register sock epoll\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_DOMAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to read socket domain\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"expected to receive on v4 socket but got v6 (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.epoll_event, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = call i32 @epoll_create(i32 1)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %3
  %20 = load i32, i32* @EPOLLIN, align 4
  %21 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %7, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %47, %19
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %7, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @EPOLL_CTL_ADD, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @epoll_ctl(i32 %34, i32 %35, i32 %40, %struct.epoll_event* %7)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %26
  %44 = load i32, i32* @errno, align 4
  %45 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %26
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %22

50:                                               ; preds = %22
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @send_from_v4(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @receive_once(i32 %53, i32 %54)
  store i32 %55, i32* %10, align 4
  store i32 4, i32* %12, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @SOL_SOCKET, align 4
  %58 = load i32, i32* @SO_DOMAIN, align 4
  %59 = call i64 @getsockopt(i32 %56, i32 %57, i32 %58, i32* %11, i32* %12)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %50
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @AF_INET, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %68, %64
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @close(i32 %72)
  ret void
}

declare dso_local i32 @epoll_create(i32) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

declare dso_local i64 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #1

declare dso_local i32 @send_from_v4(i32) #1

declare dso_local i32 @receive_once(i32, i32) #1

declare dso_local i64 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
