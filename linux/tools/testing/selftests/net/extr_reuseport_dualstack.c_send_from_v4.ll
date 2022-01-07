; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_dualstack.c_send_from_v4.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_dualstack.c_send_from_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i64, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i8* }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i8* null, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@PORT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to create send socket\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to bind send socket\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to connect send socket\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to send message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @send_from_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_from_v4(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 8
  %4 = alloca %struct.sockaddr_in, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i8*, i8** @AF_INET, align 8
  %7 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  store i8* %6, i8** %7, align 8
  %8 = load i32, i32* @INADDR_ANY, align 4
  %9 = call i8* @htonl(i32 %8)
  %10 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load i8*, i8** @AF_INET, align 8
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* @INADDR_LOOPBACK, align 4
  %16 = call i8* @htonl(i32 %15)
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @PORT, align 4
  %20 = call i64 @htons(i32 %19)
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load i8*, i8** @AF_INET, align 8
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @socket(i8* %22, i32 %23, i32 0)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @error(i32 1, i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %1
  %31 = load i32, i32* %5, align 4
  %32 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %33 = call i64 @bind(i32 %31, %struct.sockaddr* %32, i32 24)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @error(i32 1, i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %5, align 4
  %40 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %41 = call i64 @connect(i32 %39, %struct.sockaddr* %40, i32 24)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @errno, align 4
  %45 = call i32 @error(i32 1, i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @send(i32 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 0)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @error(i32 1, i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @close(i32 %54)
  ret void
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @socket(i8*, i32, i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
