; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf.c_send_from.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf.c_send_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_params = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to create send socket\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to set reuseaddr\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to bind send socket\00", align 1
@MSG_FASTOPEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to send message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32, i8*, i64)* @send_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_from(i64 %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.test_params, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %0, i64* %15, align 4
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %1, i32* %16, align 4
  %17 = bitcast %struct.test_params* %6 to i8*
  %18 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 12, i1 false)
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %19 = getelementptr inbounds %struct.test_params, %struct.test_params* %6, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.sockaddr* @new_any_sockaddr(i32 %20, i32 %21)
  store %struct.sockaddr* %22, %struct.sockaddr** %11, align 8
  %23 = getelementptr inbounds %struct.test_params, %struct.test_params* %6, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.test_params, %struct.test_params* %6, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.sockaddr* @new_loopback_sockaddr(i32 %24, i32 %26)
  store %struct.sockaddr* %27, %struct.sockaddr** %12, align 8
  %28 = getelementptr inbounds %struct.test_params, %struct.test_params* %6, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.test_params, %struct.test_params* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @socket(i32 %29, i32 %31, i32 0)
  store i32 %32, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @error(i32 1, i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %5
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @SOL_SOCKET, align 4
  %41 = load i32, i32* @SO_REUSEADDR, align 4
  %42 = call i64 @setsockopt(i32 %39, i32 %40, i32 %41, i32* %14, i32 4)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 @error(i32 1, i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %50 = call i32 (...) @sockaddr_size()
  %51 = call i64 @bind(i32 %48, %struct.sockaddr* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @errno, align 4
  %55 = call i32 @error(i32 1, i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %47
  %57 = load i32, i32* %13, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i32, i32* @MSG_FASTOPEN, align 4
  %61 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %62 = call i32 (...) @sockaddr_size()
  %63 = call i64 @sendto(i32 %57, i8* %58, i64 %59, i32 %60, %struct.sockaddr* %61, i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i32, i32* @errno, align 4
  %67 = call i32 @error(i32 1, i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %56
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @close(i32 %69)
  %71 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %72 = call i32 @free(%struct.sockaddr* %71)
  %73 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %74 = call i32 @free(%struct.sockaddr* %73)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.sockaddr* @new_any_sockaddr(i32, i32) #2

declare dso_local %struct.sockaddr* @new_loopback_sockaddr(i32, i32) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @error(i32, i32, i8*) #2

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #2

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @sockaddr_size(...) #2

declare dso_local i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @free(%struct.sockaddr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
