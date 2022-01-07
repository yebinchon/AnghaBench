; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_tcp_cong_kern.c_bpf_cong.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_tcp_cong_kern.c_bpf_cong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sock_ops = type { i64, i32, i32, i64, i64*, i64*, i64 }

@__const.bpf_cong.cong = private unnamed_addr constant [6 x i8] c"dctcp\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@SOL_TCP = common dso_local global i32 0, align 4
@TCP_CONGESTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_cong(%struct.bpf_sock_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_sock_ops*, align 8
  %4 = alloca [6 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bpf_sock_ops* %0, %struct.bpf_sock_ops** %3, align 8
  %7 = bitcast [6 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.bpf_cong.cong, i32 0, i32 0), i64 6, i1 false)
  store i32 0, i32* %5, align 4
  %8 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %9 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @bpf_ntohl(i64 %10)
  %12 = icmp ne i32 %11, 55601
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %15 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 55601
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %20 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %19, i32 0, i32 2
  store i32 -1, i32* %20, align 4
  store i32 1, i32* %2, align 4
  br label %81

21:                                               ; preds = %13, %1
  %22 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %23 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %27 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AF_INET6, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %76

31:                                               ; preds = %21
  %32 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %33 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %32, i32 0, i32 4
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %38 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %37, i32 0, i32 5
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %36, %41
  br i1 %42, label %43, label %76

43:                                               ; preds = %31
  %44 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %45 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %44, i32 0, i32 4
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @bpf_ntohl(i64 %48)
  %50 = and i32 %49, -1048576
  %51 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %52 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %51, i32 0, i32 5
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @bpf_ntohl(i64 %55)
  %57 = and i32 %56, -1048576
  %58 = icmp eq i32 %50, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %43
  %60 = load i32, i32* %6, align 4
  switch i32 %60, label %74 [
    i32 129, label %61
    i32 130, label %62
    i32 128, label %68
  ]

61:                                               ; preds = %59
  store i32 1, i32* %5, align 4
  br label %75

62:                                               ; preds = %59
  %63 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %64 = load i32, i32* @SOL_TCP, align 4
  %65 = load i32, i32* @TCP_CONGESTION, align 4
  %66 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %67 = call i32 @bpf_setsockopt(%struct.bpf_sock_ops* %63, i32 %64, i32 %65, i8* %66, i32 6)
  store i32 %67, i32* %5, align 4
  br label %75

68:                                               ; preds = %59
  %69 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %70 = load i32, i32* @SOL_TCP, align 4
  %71 = load i32, i32* @TCP_CONGESTION, align 4
  %72 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %73 = call i32 @bpf_setsockopt(%struct.bpf_sock_ops* %69, i32 %70, i32 %71, i8* %72, i32 6)
  store i32 %73, i32* %5, align 4
  br label %75

74:                                               ; preds = %59
  store i32 -1, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %68, %62, %61
  br label %77

76:                                               ; preds = %43, %31, %21
  store i32 -1, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %75
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %80 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  store i32 1, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %18
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bpf_ntohl(i64) #2

declare dso_local i32 @bpf_setsockopt(%struct.bpf_sock_ops*, i32, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
