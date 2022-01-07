; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_dualstack.c_build_rcv_fd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_dualstack.c_build_rcv_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i8*, i32 }
%struct.sockaddr = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4
@PORT = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unsupported family %d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to create receive socket\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to set SO_REUSEPORT\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to bind receive socket\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to listen on receive port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32)* @build_rcv_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_rcv_fd(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_storage, align 4
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %39 [
    i32 129, label %15
    i32 128, label %28
  ]

15:                                               ; preds = %4
  %16 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %16, %struct.sockaddr_in** %10, align 8
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  store i32 129, i32* %18, align 8
  %19 = load i32, i32* @INADDR_ANY, align 4
  %20 = call i32 @htonl(i32 %19)
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* @PORT, align 4
  %25 = call i8* @htons(i32 %24)
  %26 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  br label %42

28:                                               ; preds = %4
  %29 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %29, %struct.sockaddr_in6** %11, align 8
  %30 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %30, i32 0, i32 0
  store i32 128, i32* %31, align 8
  %32 = load i32, i32* @in6addr_any, align 4
  %33 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @PORT, align 4
  %36 = call i8* @htons(i32 %35)
  %37 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  br label %42

39:                                               ; preds = %4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %28, %15
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %105, %42
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %108

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @socket(i32 %48, i32 %49, i32 0)
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %47
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %47
  store i32 1, i32* %12, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SOL_SOCKET, align 4
  %71 = load i32, i32* @SO_REUSEPORT, align 4
  %72 = call i64 @setsockopt(i32 %69, i32 %70, i32 %71, i32* %12, i32 4)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i32, i32* @errno, align 4
  %76 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %64
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %84 = call i64 @bind(i32 %82, %struct.sockaddr* %83, i32 4)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load i32, i32* @errno, align 4
  %88 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %77
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @SOCK_STREAM, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @listen(i32 %98, i32 10)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i32, i32* @errno, align 4
  %103 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %93, %89
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %43

108:                                              ; preds = %43
  ret void
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
