; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_sk_reuseport_attach_bpf.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_sk_reuseport_attach_bpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64, i64 }
%struct.bpf_prog = type { i64, i32 }

@SOCK_FILTER_LOCKED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_SOCKET_FILTER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_SK_REUSEPORT = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@sysctl_optmem_max = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sk_reuseport_attach_bpf(i32 %0, %struct.sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sock* %1, %struct.sock** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %5, align 8
  %9 = load i32, i32* @SOCK_FILTER_LOCKED, align 4
  %10 = call i64 @sock_flag(%struct.sock* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EPERM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %108

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i64, i64* @BPF_PROG_TYPE_SOCKET_FILTER, align 8
  %18 = call %struct.bpf_prog* @bpf_prog_get_type(i32 %16, i64 %17)
  store %struct.bpf_prog* %18, %struct.bpf_prog** %6, align 8
  %19 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %20 = call i64 @IS_ERR(%struct.bpf_prog* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %24 = call i32 @PTR_ERR(%struct.bpf_prog* %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load i64, i64* @BPF_PROG_TYPE_SK_REUSEPORT, align 8
  %31 = call %struct.bpf_prog* @bpf_prog_get_type(i32 %29, i64 %30)
  store %struct.bpf_prog* %31, %struct.bpf_prog** %6, align 8
  br label %32

32:                                               ; preds = %28, %22, %15
  %33 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %34 = call i64 @IS_ERR(%struct.bpf_prog* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %38 = call i32 @PTR_ERR(%struct.bpf_prog* %37)
  store i32 %38, i32* %3, align 4
  br label %108

39:                                               ; preds = %32
  %40 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %41 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BPF_PROG_TYPE_SK_REUSEPORT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %85

45:                                               ; preds = %39
  %46 = load %struct.sock*, %struct.sock** %5, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SOCK_STREAM, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.sock*, %struct.sock** %5, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SOCK_DGRAM, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %81, label %57

57:                                               ; preds = %51, %45
  %58 = load %struct.sock*, %struct.sock** %5, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IPPROTO_UDP, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.sock*, %struct.sock** %5, align 8
  %65 = getelementptr inbounds %struct.sock, %struct.sock* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IPPROTO_TCP, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %81, label %69

69:                                               ; preds = %63, %57
  %70 = load %struct.sock*, %struct.sock** %5, align 8
  %71 = getelementptr inbounds %struct.sock, %struct.sock* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AF_INET, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = load %struct.sock*, %struct.sock** %5, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @AF_INET6, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75, %63, %51
  %82 = load i32, i32* @ENOTSUPP, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  br label %100

84:                                               ; preds = %75, %69
  br label %96

85:                                               ; preds = %39
  %86 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %87 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @bpf_prog_size(i32 %88)
  %90 = load i64, i64* @sysctl_optmem_max, align 8
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %7, align 4
  br label %100

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %95, %84
  %97 = load %struct.sock*, %struct.sock** %5, align 8
  %98 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %99 = call i32 @reuseport_attach_prog(%struct.sock* %97, %struct.bpf_prog* %98)
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %96, %92, %81
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %105 = call i32 @bpf_prog_put(%struct.bpf_prog* %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %36, %12
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local %struct.bpf_prog* @bpf_prog_get_type(i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_prog*) #1

declare dso_local i64 @bpf_prog_size(i32) #1

declare dso_local i32 @reuseport_attach_prog(%struct.sock*, %struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
