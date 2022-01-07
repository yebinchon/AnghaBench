; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_bind_socket.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_bind_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, i8* }
%struct.sockaddr_in6 = type { i32, i32, i8* }
%struct.sock_args = type { i64, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@__const.bind_socket.serv_addr = private unnamed_addr constant %struct.sockaddr_in { i32 129, i32 0, i8* null }, align 8
@__const.bind_socket.serv6_addr = private unnamed_addr constant %struct.sockaddr_in6 { i32 128, i32 0, i8* null }, align 8
@SOCK_RAW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Invalid address family\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"error binding socket\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sock_args*)* @bind_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_socket(i32 %0, %struct.sock_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock_args*, align 8
  %6 = alloca %struct.sockaddr_in, align 8
  %7 = alloca %struct.sockaddr_in6, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sock_args* %1, %struct.sock_args** %5, align 8
  %10 = bitcast %struct.sockaddr_in* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.sockaddr_in* @__const.bind_socket.serv_addr to i8*), i64 16, i1 false)
  %11 = bitcast %struct.sockaddr_in6* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.sockaddr_in6* @__const.bind_socket.serv6_addr to i8*), i64 16, i1 false)
  %12 = load %struct.sock_args*, %struct.sock_args** %5, align 8
  %13 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.sock_args*, %struct.sock_args** %5, align 8
  %18 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SOCK_RAW, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %62

23:                                               ; preds = %16, %2
  %24 = load %struct.sock_args*, %struct.sock_args** %5, align 8
  %25 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %51 [
    i32 129, label %27
    i32 128, label %39
  ]

27:                                               ; preds = %23
  %28 = load %struct.sock_args*, %struct.sock_args** %5, align 8
  %29 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @htons(i32 %30)
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load %struct.sock_args*, %struct.sock_args** %5, align 8
  %34 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = bitcast %struct.sockaddr_in* %6 to i8*
  store i8* %38, i8** %8, align 8
  store i32 16, i32* %9, align 4
  br label %53

39:                                               ; preds = %23
  %40 = load %struct.sock_args*, %struct.sock_args** %5, align 8
  %41 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @htons(i32 %42)
  %44 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 2
  store i8* %43, i8** %44, align 8
  %45 = load %struct.sock_args*, %struct.sock_args** %5, align 8
  %46 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = bitcast %struct.sockaddr_in6* %7 to i8*
  store i8* %50, i8** %8, align 8
  store i32 16, i32* %9, align 4
  br label %53

51:                                               ; preds = %23
  %52 = call i32 @log_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %62

53:                                               ; preds = %39, %27
  %54 = load i32, i32* %4, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @bind(i32 %54, i8* %55, i32 %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32 @log_err_errno(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %62

61:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %59, %51, %22
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @htons(i32) #2

declare dso_local i32 @log_error(i8*) #2

declare dso_local i64 @bind(i32, i8*, i32) #2

declare dso_local i32 @log_err_errno(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
