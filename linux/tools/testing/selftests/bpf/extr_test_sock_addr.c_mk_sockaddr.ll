; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_mk_sockaddr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_mk_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i8* }
%struct.sockaddr_in = type { i32, i32, i8* }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unsupported address family\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid IPv4: %s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Invalid IPv6: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i16, %struct.sockaddr*, i32)* @mk_sockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mk_sockaddr(i32 %0, i8* %1, i16 zeroext %2, %struct.sockaddr* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i16, align 2
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_in6*, align 8
  %13 = alloca %struct.sockaddr_in*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i16 %2, i16* %9, align 2
  store %struct.sockaddr* %3, %struct.sockaddr** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @AF_INET, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @AF_INET6, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %88

23:                                               ; preds = %17, %5
  %24 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @memset(%struct.sockaddr* %24, i32 0, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @AF_INET, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %23
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 16
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 -1, i32* %6, align 4
  br label %88

35:                                               ; preds = %30
  %36 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %37 = bitcast %struct.sockaddr* %36 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %37, %struct.sockaddr_in** %13, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i16, i16* %9, align 2
  %42 = call i8* @htons(i16 zeroext %41)
  %43 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %47, i32 0, i32 1
  %49 = bitcast i32* %48 to i8*
  %50 = call i32 @inet_pton(i32 %45, i8* %46, i8* %49)
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %35
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  store i32 -1, i32* %6, align 4
  br label %88

55:                                               ; preds = %35
  br label %87

56:                                               ; preds = %23
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @AF_INET6, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ult i64 %62, 16
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 -1, i32* %6, align 4
  br label %88

65:                                               ; preds = %60
  %66 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %67 = bitcast %struct.sockaddr* %66 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %67, %struct.sockaddr_in6** %12, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %70 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i16, i16* %9, align 2
  %72 = call i8* @htons(i16 zeroext %71)
  %73 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %74 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %78 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %77, i32 0, i32 1
  %79 = bitcast i32* %78 to i8*
  %80 = call i32 @inet_pton(i32 %75, i8* %76, i8* %79)
  %81 = icmp ne i32 %80, 1
  br i1 %81, label %82, label %85

82:                                               ; preds = %65
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  store i32 -1, i32* %6, align 4
  br label %88

85:                                               ; preds = %65
  br label %86

86:                                               ; preds = %85, %56
  br label %87

87:                                               ; preds = %86, %55
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %82, %64, %52, %34, %21
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @memset(%struct.sockaddr*, i32, i32) #1

declare dso_local i8* @htons(i16 zeroext) #1

declare dso_local i32 @inet_pton(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
