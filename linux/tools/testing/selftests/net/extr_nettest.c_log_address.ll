; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_log_address.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_log_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@quiet = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s %s:%d\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"%s [%s]:%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sockaddr*)* @log_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_address(i8* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.sockaddr_in6*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %4, align 8
  %8 = load i64, i64* @quiet, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %56

11:                                               ; preds = %2
  %12 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AF_INET, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %11
  %18 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %19 = bitcast %struct.sockaddr* %18 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %19, %struct.sockaddr_in** %6, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load i64, i64* @AF_INET, align 8
  %22 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 1
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %25 = call i32 @inet_ntop(i64 %21, i32* %23, i8* %24, i32 64)
  %26 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ntohs(i32 %28)
  %30 = call i32 @log_msg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %25, i32 %29)
  br label %52

31:                                               ; preds = %11
  %32 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %33 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AF_INET6, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %39 = bitcast %struct.sockaddr* %38 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %39, %struct.sockaddr_in6** %7, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = load i64, i64* @AF_INET6, align 8
  %42 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %42, i32 0, i32 1
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %45 = call i32 @inet_ntop(i64 %41, i32* %43, i8* %44, i32 64)
  %46 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %47 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ntohs(i32 %48)
  %50 = call i32 @log_msg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %45, i32 %49)
  br label %51

51:                                               ; preds = %37, %31
  br label %52

52:                                               ; preds = %51, %17
  %53 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @stdout, align 4
  %55 = call i32 @fflush(i32 %54)
  br label %56

56:                                               ; preds = %52, %10
  ret void
}

declare dso_local i32 @log_msg(i8*, i8*, i32, i32) #1

declare dso_local i32 @inet_ntop(i64, i32*, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
