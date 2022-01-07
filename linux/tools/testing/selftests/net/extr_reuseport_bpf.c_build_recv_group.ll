; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf.c_build_recv_group.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf.c_build_recv_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_params = type { i32, i64, i32, i32 }
%struct.sockaddr = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to create recv %d\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to set SO_REUSEPORT on %d\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to bind recv socket %d\00", align 1
@SOCK_STREAM = common dso_local global i64 0, align 8
@SOL_TCP = common dso_local global i32 0, align 4
@TCP_FASTOPEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to set TCP_FASTOPEN on %d\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to listen on socket\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.test_params*, i32*, i32, void (i32, i32)*)* @build_recv_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_recv_group(%struct.test_params* byval(%struct.test_params) align 8 %0, i32* %1, i32 %2, void (i32, i32)* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (i32, i32)*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store void (i32, i32)* %3, void (i32, i32)** %7, align 8
  %11 = getelementptr inbounds %struct.test_params, %struct.test_params* %0, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.test_params, %struct.test_params* %0, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.sockaddr* @new_any_sockaddr(i32 %12, i32 %14)
  store %struct.sockaddr* %15, %struct.sockaddr** %8, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %115, %4
  %17 = load i32, i32* %9, align 4
  %18 = getelementptr inbounds %struct.test_params, %struct.test_params* %0, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %118

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.test_params, %struct.test_params* %0, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.test_params, %struct.test_params* %0, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @socket(i32 %23, i64 %25, i32 0)
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %21
  %38 = load i32, i32* @errno, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %21
  store i32 1, i32* %10, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SOL_SOCKET, align 4
  %48 = load i32, i32* @SO_REUSEPORT, align 4
  %49 = call i64 @setsockopt(i32 %46, i32 %47, i32 %48, i32* %10, i32 4)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i32, i32* @errno, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %41
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load void (i32, i32)*, void (i32, i32)** %7, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  call void %59(i32 %64, i32 %65)
  br label %66

66:                                               ; preds = %58, %55
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %73 = call i32 (...) @sockaddr_size()
  %74 = call i64 @bind(i32 %71, %struct.sockaddr* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = load i32, i32* @errno, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %66
  %81 = getelementptr inbounds %struct.test_params, %struct.test_params* %0, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SOCK_STREAM, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %114

85:                                               ; preds = %80
  store i32 4, i32* %10, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SOL_TCP, align 4
  %92 = load i32, i32* @TCP_FASTOPEN, align 4
  %93 = call i64 @setsockopt(i32 %90, i32 %91, i32 %92, i32* %10, i32 4)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %85
  %96 = load i32, i32* @errno, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %95, %85
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.test_params, %struct.test_params* %0, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 %106, 10
  %108 = call i64 @listen(i32 %104, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %99
  %111 = load i32, i32* @errno, align 4
  %112 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %99
  br label %114

114:                                              ; preds = %113, %80
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %16

118:                                              ; preds = %16
  %119 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %120 = call i32 @free(%struct.sockaddr* %119)
  ret void
}

declare dso_local %struct.sockaddr* @new_any_sockaddr(i32, i32) #1

declare dso_local i32 @socket(i32, i64, i32) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @sockaddr_size(...) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @free(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
