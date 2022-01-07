; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_send_xdr_kvec.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_send_xdr_kvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rdma_write_info = type { i32 }
%struct.kvec = type { i32, i32 }

@svc_rdma_vec_to_sg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rdma_write_info*, %struct.kvec*)* @svc_rdma_send_xdr_kvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_rdma_send_xdr_kvec(%struct.svc_rdma_write_info* %0, %struct.kvec* %1) #0 {
  %3 = alloca %struct.svc_rdma_write_info*, align 8
  %4 = alloca %struct.kvec*, align 8
  store %struct.svc_rdma_write_info* %0, %struct.svc_rdma_write_info** %3, align 8
  store %struct.kvec* %1, %struct.kvec** %4, align 8
  %5 = load %struct.kvec*, %struct.kvec** %4, align 8
  %6 = getelementptr inbounds %struct.kvec, %struct.kvec* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %3, align 8
  %9 = getelementptr inbounds %struct.svc_rdma_write_info, %struct.svc_rdma_write_info* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %3, align 8
  %11 = load i32, i32* @svc_rdma_vec_to_sg, align 4
  %12 = load %struct.kvec*, %struct.kvec** %4, align 8
  %13 = getelementptr inbounds %struct.kvec, %struct.kvec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @svc_rdma_build_writes(%struct.svc_rdma_write_info* %10, i32 %11, i32 %14)
  ret i32 %15
}

declare dso_local i32 @svc_rdma_build_writes(%struct.svc_rdma_write_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
