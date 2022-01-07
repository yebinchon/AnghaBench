; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf_cpu.c_receive_on_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf_cpu.c_receive_on_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epoll_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"epoll_wait failed\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"failed to accept\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"failed to recv\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"failed to find socket\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"send cpu %d, receive socket %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"cpu id/receive socket mismatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @receive_on_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_on_cpu(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.epoll_event, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [8 x i8], align 1
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @epoll_wait(i32 %15, %struct.epoll_event* %11, i32 1, i32 -1)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @error(i32 1, i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %5
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @SOCK_STREAM, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @accept(i32 %29, i32* null, i32* null)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @error(i32 1, i32 %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i32, i32* %13, align 4
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %39 = call i32 @recv(i32 %37, i8* %38, i32 8, i32 0)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @close(i32 %40)
  br label %48

42:                                               ; preds = %22
  %43 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %47 = call i32 @recv(i32 %45, i8* %46, i32 8, i32 0)
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %42, %36
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 @error(i32 1, i32 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %48
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %71, %54
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %62, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %74

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %55

74:                                               ; preds = %69, %55
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %74
  %81 = load i32, i32* @stderr, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %80
  ret void
}

declare dso_local i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
