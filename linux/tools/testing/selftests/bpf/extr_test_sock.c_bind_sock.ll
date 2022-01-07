; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock.c_bind_sock.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock.c_bind_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i8* }
%struct.sockaddr_in = type { i32, i32, i8* }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i16)* @bind_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_sock(i32 %0, i32 %1, i8* %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i16, align 2
  %9 = alloca %struct.sockaddr_storage, align 4
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i16 %3, i16* %8, align 2
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @socket(i32 %15, i32 %16, i32 0)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %76

21:                                               ; preds = %4
  %22 = call i32 @memset(%struct.sockaddr_storage* %9, i32 0, i32 4)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @AF_INET, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  store i32 16, i32* %13, align 4
  %27 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %27, %struct.sockaddr_in** %11, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i16, i16* %8, align 2
  %32 = call i8* @htons(i16 zeroext %31)
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 1
  %39 = bitcast i32* %38 to i8*
  %40 = call i32 @inet_pton(i32 %35, i8* %36, i8* %39)
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  br label %76

43:                                               ; preds = %26
  br label %68

44:                                               ; preds = %21
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @AF_INET6, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  store i32 16, i32* %13, align 4
  %49 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %49, %struct.sockaddr_in6** %10, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i16, i16* %8, align 2
  %54 = call i8* @htons(i16 zeroext %53)
  %55 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %56 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %60 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %59, i32 0, i32 1
  %61 = bitcast i32* %60 to i8*
  %62 = call i32 @inet_pton(i32 %57, i8* %58, i8* %61)
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %48
  br label %76

65:                                               ; preds = %48
  br label %67

66:                                               ; preds = %44
  br label %76

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67, %43
  %69 = load i32, i32* %12, align 4
  %70 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @bind(i32 %69, %struct.sockaddr* %70, i32 %71)
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %76

75:                                               ; preds = %68
  br label %77

76:                                               ; preds = %74, %66, %64, %42, %20
  store i32 -1, i32* %14, align 4
  br label %77

77:                                               ; preds = %76, %75
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @close(i32 %78)
  %80 = load i32, i32* %14, align 4
  ret i32 %80
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i8* @htons(i16 zeroext) #1

declare dso_local i32 @inet_pton(i32, i8*, i8*) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
