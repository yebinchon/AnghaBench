; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_sockopt_sk.c__getsockopt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_sockopt_sk.c__getsockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sockopt = type { i64, i64, i32, i64, i32, i32*, i32* }
%struct.sockopt_sk = type { i32 }

@SOL_IP = common dso_local global i64 0, align 8
@IP_TOS = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i64 0, align 8
@SO_SNDBUF = common dso_local global i64 0, align 8
@SOL_TCP = common dso_local global i64 0, align 8
@TCP_CONGESTION = common dso_local global i64 0, align 8
@SOL_CUSTOM = common dso_local global i64 0, align 8
@socket_storage_map = common dso_local global i32 0, align 4
@BPF_SK_STORAGE_GET_F_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_getsockopt(%struct.bpf_sockopt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_sockopt*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sockopt_sk*, align 8
  store %struct.bpf_sockopt* %0, %struct.bpf_sockopt** %3, align 8
  %7 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %8 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %7, i32 0, i32 6
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %4, align 8
  %10 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %11 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %10, i32 0, i32 5
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
  br label %89

25:                                               ; preds = %18, %1
  %26 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %27 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SOL_SOCKET, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %33 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SO_SNDBUF, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %89

38:                                               ; preds = %31, %25
  %39 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %40 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SOL_TCP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %46 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TCP_CONGESTION, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, i32* %2, align 4
  br label %89

51:                                               ; preds = %44, %38
  %52 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %53 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SOL_CUSTOM, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %89

58:                                               ; preds = %51
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32*, i32** %4, align 8
  %62 = icmp ugt i32* %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %89

64:                                               ; preds = %58
  %65 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %66 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @BPF_SK_STORAGE_GET_F_CREATE, align 4
  %69 = call %struct.sockopt_sk* @bpf_sk_storage_get(i32* @socket_storage_map, i32 %67, i32 0, i32 %68)
  store %struct.sockopt_sk* %69, %struct.sockopt_sk** %6, align 8
  %70 = load %struct.sockopt_sk*, %struct.sockopt_sk** %6, align 8
  %71 = icmp ne %struct.sockopt_sk* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %89

73:                                               ; preds = %64
  %74 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %75 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %89

79:                                               ; preds = %73
  %80 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %81 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = load %struct.sockopt_sk*, %struct.sockopt_sk** %6, align 8
  %83 = getelementptr inbounds %struct.sockopt_sk, %struct.sockopt_sk* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %88 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %87, i32 0, i32 2
  store i32 1, i32* %88, align 8
  store i32 1, i32* %2, align 4
  br label %89

89:                                               ; preds = %79, %78, %72, %63, %57, %50, %37, %24
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.sockopt_sk* @bpf_sk_storage_get(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
