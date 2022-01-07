; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf_cpu.c_send_from_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf_cpu.c_send_from_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.sockaddr_in6 = type { i32, i8*, i32 }
%struct.sockaddr = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@PORT = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global i32 0, align 4
@in6addr_loopback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unsupported family %d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to pin to cpu\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to create send socket\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to bind send socket\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to connect send socket\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"failed to send message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @send_from_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_from_cpu(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_storage, align 4
  %8 = alloca %struct.sockaddr_storage, align 4
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  %12 = alloca %struct.sockaddr_in6*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %58 [
    i32 129, label %16
    i32 128, label %39
  ]

16:                                               ; preds = %3
  %17 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %17, %struct.sockaddr_in** %9, align 8
  %18 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 0
  store i32 129, i32* %19, align 8
  %20 = load i32, i32* @INADDR_ANY, align 4
  %21 = call i8* @htonl(i32 %20)
  %22 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  %25 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %25, i32 0, i32 1
  store i8* null, i8** %26, align 8
  %27 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %27, %struct.sockaddr_in** %10, align 8
  %28 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 0
  store i32 129, i32* %29, align 8
  %30 = load i32, i32* @INADDR_LOOPBACK, align 4
  %31 = call i8* @htonl(i32 %30)
  %32 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  %35 = load i32, i32* @PORT, align 4
  %36 = call i8* @htons(i32 %35)
  %37 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  br label %61

39:                                               ; preds = %3
  %40 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %40, %struct.sockaddr_in6** %11, align 8
  %41 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %41, i32 0, i32 0
  store i32 128, i32* %42, align 8
  %43 = load i32, i32* @in6addr_any, align 4
  %44 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %47 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %46, i32 0, i32 1
  store i8* null, i8** %47, align 8
  %48 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %48, %struct.sockaddr_in6** %12, align 8
  %49 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %49, i32 0, i32 0
  store i32 128, i32* %50, align 8
  %51 = load i32, i32* @in6addr_loopback, align 4
  %52 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %53 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @PORT, align 4
  %55 = call i8* @htons(i32 %54)
  %56 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %57 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  br label %61

58:                                               ; preds = %3
  %59 = load i32, i32* %5, align 4
  %60 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %58, %39, %16
  %62 = call i32 @memset(i32* %13, i32 0, i32 4)
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @CPU_SET(i32 %63, i32* %13)
  %65 = call i64 @sched_setaffinity(i32 0, i32 4, i32* %13)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @errno, align 4
  %69 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %61
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @socket(i32 %71, i32 %72, i32 0)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @errno, align 4
  %78 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %70
  %80 = load i32, i32* %14, align 4
  %81 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*
  %82 = call i64 @bind(i32 %80, %struct.sockaddr* %81, i32 4)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* @errno, align 4
  %86 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %79
  %88 = load i32, i32* %14, align 4
  %89 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %90 = call i64 @connect(i32 %88, %struct.sockaddr* %89, i32 4)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* @errno, align 4
  %94 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %87
  %96 = load i32, i32* %14, align 4
  %97 = call i64 @send(i32 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1, i32 0)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* @errno, align 4
  %101 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %95
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @close(i32 %103)
  ret void
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i64 @sched_setaffinity(i32, i32, i32*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

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
