; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf.c_test_extra_filter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf.c_test_extra_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_params = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Testing too many filters...\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to create socket 1\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to create socket 2\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEPORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to set SO_REUSEPORT on socket 1\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"failed to set SO_REUSEPORT on socket 2\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to bind recv socket 1\00", align 1
@EADDRINUSE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"bind socket 2 should fail with EADDRINUSE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @test_extra_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_extra_filter(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.test_params, align 4
  %4 = alloca { i64, i32 }, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 0
  store i64 %0, i64* %9, align 4
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 1
  store i32 %1, i32* %10, align 4
  %11 = bitcast %struct.test_params* %3 to i8*
  %12 = bitcast { i64, i32 }* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 12, i1 false)
  %13 = getelementptr inbounds %struct.test_params, %struct.test_params* %3, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.test_params, %struct.test_params* %3, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.sockaddr* @new_any_sockaddr(i32 %14, i32 %16)
  store %struct.sockaddr* %17, %struct.sockaddr** %5, align 8
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = getelementptr inbounds %struct.test_params, %struct.test_params* %3, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.test_params, %struct.test_params* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @socket(i32 %21, i32 %23, i32 0)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i64, i64* @errno, align 8
  %29 = call i32 @error(i32 1, i64 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %2
  %31 = getelementptr inbounds %struct.test_params, %struct.test_params* %3, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.test_params, %struct.test_params* %3, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @socket(i32 %32, i32 %34, i32 0)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i64, i64* @errno, align 8
  %40 = call i32 @error(i32 1, i64 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %30
  store i32 1, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @SOL_SOCKET, align 4
  %44 = load i32, i32* @SO_REUSEPORT, align 4
  %45 = call i64 @setsockopt(i32 %42, i32 %43, i32 %44, i32* %8, i32 4)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i64, i64* @errno, align 8
  %49 = call i32 @error(i32 1, i64 %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @SOL_SOCKET, align 4
  %53 = load i32, i32* @SO_REUSEPORT, align 4
  %54 = call i64 @setsockopt(i32 %51, i32 %52, i32 %53, i32* %8, i32 4)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i64, i64* @errno, align 8
  %58 = call i32 @error(i32 1, i64 %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %50
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @attach_ebpf(i32 %60, i32 10)
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @attach_ebpf(i32 %62, i32 10)
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %66 = call i32 (...) @sockaddr_size()
  %67 = call i64 @bind(i32 %64, %struct.sockaddr* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i64, i64* @errno, align 8
  %71 = call i32 @error(i32 1, i64 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %59
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %75 = call i32 (...) @sockaddr_size()
  %76 = call i64 @bind(i32 %73, %struct.sockaddr* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %72
  %79 = load i64, i64* @errno, align 8
  %80 = load i64, i64* @EADDRINUSE, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i64, i64* @errno, align 8
  %84 = call i32 @error(i32 1, i64 %83, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %78, %72
  %86 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %87 = call i32 @free(%struct.sockaddr* %86)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.sockaddr* @new_any_sockaddr(i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @error(i32, i64, i8*) #2

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #2

declare dso_local i32 @attach_ebpf(i32, i32) #2

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @sockaddr_size(...) #2

declare dso_local i32 @free(%struct.sockaddr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
