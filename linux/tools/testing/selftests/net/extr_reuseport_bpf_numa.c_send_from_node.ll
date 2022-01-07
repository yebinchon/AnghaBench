; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf_numa.c_send_from_node.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf_numa.c_send_from_node.c"
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
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to pin to node\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to create send socket\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to bind send socket\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to connect send socket\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"failed to send message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @send_from_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_from_node(i32 %0, i32 %1, i32 %2) #0 {
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
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %57 [
    i32 129, label %15
    i32 128, label %38
  ]

15:                                               ; preds = %3
  %16 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %16, %struct.sockaddr_in** %9, align 8
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  store i32 129, i32* %18, align 8
  %19 = load i32, i32* @INADDR_ANY, align 4
  %20 = call i8* @htonl(i32 %19)
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i8* %20, i8** %23, align 8
  %24 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %24, i32 0, i32 1
  store i8* null, i8** %25, align 8
  %26 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %26, %struct.sockaddr_in** %10, align 8
  %27 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 0
  store i32 129, i32* %28, align 8
  %29 = load i32, i32* @INADDR_LOOPBACK, align 4
  %30 = call i8* @htonl(i32 %29)
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  %34 = load i32, i32* @PORT, align 4
  %35 = call i8* @htons(i32 %34)
  %36 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  br label %60

38:                                               ; preds = %3
  %39 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %39, %struct.sockaddr_in6** %11, align 8
  %40 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %40, i32 0, i32 0
  store i32 128, i32* %41, align 8
  %42 = load i32, i32* @in6addr_any, align 4
  %43 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %44 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %45, i32 0, i32 1
  store i8* null, i8** %46, align 8
  %47 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %47, %struct.sockaddr_in6** %12, align 8
  %48 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %49 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %48, i32 0, i32 0
  store i32 128, i32* %49, align 8
  %50 = load i32, i32* @in6addr_loopback, align 4
  %51 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @PORT, align 4
  %54 = call i8* @htons(i32 %53)
  %55 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %56 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  br label %60

57:                                               ; preds = %3
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %57, %38, %15
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @numa_run_on_node(i32 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* @errno, align 4
  %66 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @socket(i32 %68, i32 %69, i32 0)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @errno, align 4
  %75 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %67
  %77 = load i32, i32* %13, align 4
  %78 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*
  %79 = call i64 @bind(i32 %77, %struct.sockaddr* %78, i32 4)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* @errno, align 4
  %83 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i32, i32* %13, align 4
  %86 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %87 = call i64 @connect(i32 %85, %struct.sockaddr* %86, i32 4)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @errno, align 4
  %91 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %84
  %93 = load i32, i32* %13, align 4
  %94 = call i64 @send(i32 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1, i32 0)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* @errno, align 4
  %98 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %92
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @close(i32 %100)
  ret void
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

declare dso_local i64 @numa_run_on_node(i32) #1

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
