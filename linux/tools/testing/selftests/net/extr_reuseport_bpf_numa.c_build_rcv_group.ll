; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf_numa.c_build_rcv_group.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf_numa.c_build_rcv_group.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32, i32)* @build_rcv_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_rcv_group(i32* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_storage, align 4
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
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
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %28, %15
  store i64 0, i64* %12, align 8
  br label %43

43:                                               ; preds = %102, %42
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %105

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @socket(i32 %48, i32 %49, i32 0)
  %51 = load i32*, i32** %5, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 %50, i32* %53, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load i32, i32* @errno, align 4
  %61 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %47
  store i32 1, i32* %13, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SOL_SOCKET, align 4
  %68 = load i32, i32* @SO_REUSEPORT, align 4
  %69 = call i64 @setsockopt(i32 %66, i32 %67, i32 %68, i32* %13, i32 4)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i32, i32* @errno, align 4
  %73 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %62
  %75 = load i32*, i32** %5, align 8
  %76 = load i64, i64* %12, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %80 = call i64 @bind(i32 %78, %struct.sockaddr* %79, i32 4)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i32, i32* @errno, align 4
  %84 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %74
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @SOCK_STREAM, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = load i32*, i32** %5, align 8
  %91 = load i64, i64* %12, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* %6, align 8
  %95 = mul i64 %94, 10
  %96 = call i64 @listen(i32 %93, i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %89
  %99 = load i32, i32* @errno, align 4
  %100 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %89, %85
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %12, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %12, align 8
  br label %43

105:                                              ; preds = %43
  ret void
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
