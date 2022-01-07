; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_addr_any.c_receive_once.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_addr_any.c_receive_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epoll_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"epoll_wait failed\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_DCCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"failed to accept\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"failed to recv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @receive_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_once(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.epoll_event, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 1
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @epoll_wait(i32 %9, %struct.epoll_event* %5, i32 1, i32 3)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 @error(i32 1, i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SOCK_STREAM, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SOCK_DCCP, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %5, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @accept(i32 %27, i32* null, i32* null)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @error(i32 1, i32 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %24
  %35 = load i32, i32* %7, align 4
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %37 = call i32 @recv(i32 %35, i8* %36, i32 8, i32 0)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @close(i32 %38)
  br label %46

40:                                               ; preds = %20
  %41 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %5, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %45 = call i32 @recv(i32 %43, i8* %44, i32 8, i32 0)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %40, %34
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 @error(i32 1, i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %46
  %53 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %5, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  ret i32 %55
}

declare dso_local i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
