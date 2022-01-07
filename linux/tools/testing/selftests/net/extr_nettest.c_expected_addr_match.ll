; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_expected_addr_match.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_expected_addr_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.in_addr = type { i64 }
%struct.sockaddr_in6 = type { i32 }
%struct.in6_addr = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"%s address does not match expected %s\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"%s address does not match expected - unknown family\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s address matches expected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, i8*, i8*)* @expected_addr_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expected_addr_match(%struct.sockaddr* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.in_addr*, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  %12 = alloca %struct.in6_addr*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %14 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AF_INET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %3
  %19 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %20 = bitcast %struct.sockaddr* %19 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %20, %struct.sockaddr_in** %9, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.in_addr*
  store %struct.in_addr* %22, %struct.in_addr** %10, align 8
  %23 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.in_addr*, %struct.in_addr** %10, align 8
  %28 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %18
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* @AF_INET, align 8
  %34 = load %struct.in_addr*, %struct.in_addr** %10, align 8
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %36 = call i32 @inet_ntop(i64 %33, %struct.in_addr* %34, i8* %35, i32 64)
  %37 = call i32 (i8*, i8*, ...) @log_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %36)
  store i32 1, i32* %8, align 4
  br label %38

38:                                               ; preds = %31, %18
  br label %69

39:                                               ; preds = %3
  %40 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %41 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AF_INET6, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %47 = bitcast %struct.sockaddr* %46 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %47, %struct.sockaddr_in6** %11, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = bitcast i8* %48 to %struct.in6_addr*
  store %struct.in6_addr* %49, %struct.in6_addr** %12, align 8
  %50 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %50, i32 0, i32 0
  %52 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %53 = bitcast %struct.in6_addr* %52 to %struct.in_addr*
  %54 = call i64 @memcmp(i32* %51, %struct.in_addr* %53, i32 8)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %45
  %57 = load i8*, i8** %6, align 8
  %58 = load i64, i64* @AF_INET6, align 8
  %59 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %60 = bitcast %struct.in6_addr* %59 to %struct.in_addr*
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %62 = call i32 @inet_ntop(i64 %58, %struct.in_addr* %60, i8* %61, i32 64)
  %63 = call i32 (i8*, i8*, ...) @log_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %57, i32 %62)
  store i32 1, i32* %8, align 4
  br label %64

64:                                               ; preds = %56, %45
  br label %68

65:                                               ; preds = %39
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 (i8*, i8*, ...) @log_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  store i32 1, i32* %8, align 4
  br label %68

68:                                               ; preds = %65, %64
  br label %69

69:                                               ; preds = %68, %38
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @log_msg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local i32 @log_error(i8*, i8*, ...) #1

declare dso_local i32 @inet_ntop(i64, %struct.in_addr*, i8*, i32) #1

declare dso_local i64 @memcmp(i32*, %struct.in_addr*, i32) #1

declare dso_local i32 @log_msg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
