; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_sockopt_sk.c__setsockopt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_sockopt_sk.c__setsockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sockopt = type { i64, i64, i32, i32, i32*, i32* }
%struct.sockopt_sk = type { i32 }

@SOL_IP = common dso_local global i64 0, align 8
@IP_TOS = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i64 0, align 8
@SO_SNDBUF = common dso_local global i64 0, align 8
@SOL_TCP = common dso_local global i64 0, align 8
@TCP_CONGESTION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"cubic\00", align 1
@SOL_CUSTOM = common dso_local global i64 0, align 8
@socket_storage_map = common dso_local global i32 0, align 4
@BPF_SK_STORAGE_GET_F_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_setsockopt(%struct.bpf_sockopt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_sockopt*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sockopt_sk*, align 8
  store %struct.bpf_sockopt* %0, %struct.bpf_sockopt** %3, align 8
  %7 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %8 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %7, i32 0, i32 5
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %4, align 8
  %10 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %11 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %14 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SOL_IP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %20 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IP_TOS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %100

25:                                               ; preds = %18, %1
  %26 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %27 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SOL_SOCKET, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %33 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SO_SNDBUF, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32*, i32** %4, align 8
  %41 = icmp ugt i32* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %100

43:                                               ; preds = %37
  %44 = load i32*, i32** %5, align 8
  store i32 21930, i32* %44, align 4
  %45 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %46 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %45, i32 0, i32 2
  store i32 4, i32* %46, align 8
  store i32 1, i32* %2, align 4
  br label %100

47:                                               ; preds = %31, %25
  %48 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %49 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SOL_TCP, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %47
  %54 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %55 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TCP_CONGESTION, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 5
  %62 = load i32*, i32** %4, align 8
  %63 = icmp ugt i32* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %100

65:                                               ; preds = %59
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @memcpy(i32* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %68 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %69 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %68, i32 0, i32 2
  store i32 5, i32* %69, align 8
  store i32 1, i32* %2, align 4
  br label %100

70:                                               ; preds = %53, %47
  %71 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %72 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SOL_CUSTOM, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %100

77:                                               ; preds = %70
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32*, i32** %4, align 8
  %81 = icmp ugt i32* %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %100

83:                                               ; preds = %77
  %84 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %85 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @BPF_SK_STORAGE_GET_F_CREATE, align 4
  %88 = call %struct.sockopt_sk* @bpf_sk_storage_get(i32* @socket_storage_map, i32 %86, i32 0, i32 %87)
  store %struct.sockopt_sk* %88, %struct.sockopt_sk** %6, align 8
  %89 = load %struct.sockopt_sk*, %struct.sockopt_sk** %6, align 8
  %90 = icmp ne %struct.sockopt_sk* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %100

92:                                               ; preds = %83
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sockopt_sk*, %struct.sockopt_sk** %6, align 8
  %97 = getelementptr inbounds %struct.sockopt_sk, %struct.sockopt_sk* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %99 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %98, i32 0, i32 2
  store i32 -1, i32* %99, align 8
  store i32 1, i32* %2, align 4
  br label %100

100:                                              ; preds = %92, %91, %82, %76, %65, %64, %43, %42, %24
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local %struct.sockopt_sk* @bpf_sk_storage_get(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
