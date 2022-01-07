; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_svc_rdma_get_inv_rkey.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_svc_rdma_get_inv_rkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32 }
%struct.svc_rdma_recv_ctxt = type { i32, i64* }

@xdr_zero = common dso_local global i64 0, align 8
@rpcrdma_fixed_maxsz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svcxprt_rdma*, %struct.svc_rdma_recv_ctxt*)* @svc_rdma_get_inv_rkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_rdma_get_inv_rkey(%struct.svcxprt_rdma* %0, %struct.svc_rdma_recv_ctxt* %1) #0 {
  %3 = alloca %struct.svcxprt_rdma*, align 8
  %4 = alloca %struct.svc_rdma_recv_ctxt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %3, align 8
  store %struct.svc_rdma_recv_ctxt* %1, %struct.svc_rdma_recv_ctxt** %4, align 8
  %9 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %10 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %12 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %128

16:                                               ; preds = %2
  %17 = load i64, i64* @xdr_zero, align 8
  store i64 %17, i64* %5, align 8
  %18 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %19 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  store i64* %20, i64** %6, align 8
  %21 = load i32, i32* @rpcrdma_fixed_maxsz, align 4
  %22 = load i64*, i64** %6, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64* %24, i64** %6, align 8
  br label %25

25:                                               ; preds = %47, %16
  %26 = load i64*, i64** %6, align 8
  %27 = getelementptr inbounds i64, i64* %26, i32 1
  store i64* %27, i64** %6, align 8
  %28 = load i64, i64* %26, align 8
  %29 = load i64, i64* @xdr_zero, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load i64*, i64** %6, align 8
  %33 = getelementptr inbounds i64, i64* %32, i32 1
  store i64* %33, i64** %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @xdr_zero, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %5, align 8
  br label %47

40:                                               ; preds = %31
  %41 = load i64, i64* %5, align 8
  %42 = load i64*, i64** %6, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %128

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %37
  %48 = load i64*, i64** %6, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 4
  store i64* %49, i64** %6, align 8
  br label %25

50:                                               ; preds = %25
  br label %51

51:                                               ; preds = %86, %50
  %52 = load i64*, i64** %6, align 8
  %53 = getelementptr inbounds i64, i64* %52, i32 1
  store i64* %53, i64** %6, align 8
  %54 = load i64, i64* %52, align 8
  %55 = load i64, i64* @xdr_zero, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %87

57:                                               ; preds = %51
  %58 = load i64*, i64** %6, align 8
  %59 = getelementptr inbounds i64, i64* %58, i32 1
  store i64* %59, i64** %6, align 8
  %60 = ptrtoint i64* %58 to i32
  %61 = call i64 @be32_to_cpup(i32 %60)
  store i64 %61, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %62

62:                                               ; preds = %83, %57
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %62
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @xdr_zero, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i64*, i64** %6, align 8
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %5, align 8
  br label %80

73:                                               ; preds = %66
  %74 = load i64, i64* %5, align 8
  %75 = load i64*, i64** %6, align 8
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %128

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %70
  %81 = load i64*, i64** %6, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 4
  store i64* %82, i64** %6, align 8
  br label %83

83:                                               ; preds = %80
  %84 = load i64, i64* %7, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %7, align 8
  br label %62

86:                                               ; preds = %62
  br label %51

87:                                               ; preds = %51
  %88 = load i64*, i64** %6, align 8
  %89 = getelementptr inbounds i64, i64* %88, i32 1
  store i64* %89, i64** %6, align 8
  %90 = load i64, i64* %88, align 8
  %91 = load i64, i64* @xdr_zero, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %123

93:                                               ; preds = %87
  %94 = load i64*, i64** %6, align 8
  %95 = getelementptr inbounds i64, i64* %94, i32 1
  store i64* %95, i64** %6, align 8
  %96 = ptrtoint i64* %94 to i32
  %97 = call i64 @be32_to_cpup(i32 %96)
  store i64 %97, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %98

98:                                               ; preds = %119, %93
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* %8, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %122

102:                                              ; preds = %98
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* @xdr_zero, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i64*, i64** %6, align 8
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %5, align 8
  br label %116

109:                                              ; preds = %102
  %110 = load i64, i64* %5, align 8
  %111 = load i64*, i64** %6, align 8
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %110, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %128

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115, %106
  %117 = load i64*, i64** %6, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 4
  store i64* %118, i64** %6, align 8
  br label %119

119:                                              ; preds = %116
  %120 = load i64, i64* %7, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %7, align 8
  br label %98

122:                                              ; preds = %98
  br label %123

123:                                              ; preds = %122, %87
  %124 = load i64, i64* %5, align 8
  %125 = call i32 @be32_to_cpu(i64 %124)
  %126 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %127 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  br label %128

128:                                              ; preds = %123, %114, %78, %45, %15
  ret void
}

declare dso_local i64 @be32_to_cpup(i32) #1

declare dso_local i32 @be32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
