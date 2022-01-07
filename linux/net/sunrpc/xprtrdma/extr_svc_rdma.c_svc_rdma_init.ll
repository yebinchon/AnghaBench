; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma.c_svc_rdma_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma.c_svc_rdma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [50 x i8] c"SVCRDMA Module Init, register RPC RDMA transport\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"\09svcrdma_ord      : %d\0A\00", align 1
@svcrdma_ord = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"\09max_requests     : %u\0A\00", align 1
@svcrdma_max_requests = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"\09max_bc_requests  : %u\0A\00", align 1
@svcrdma_max_bc_requests = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"\09max_inline       : %d\0A\00", align 1
@svcrdma_max_req_size = common dso_local global i32 0, align 4
@svcrdma_table_header = common dso_local global i64 0, align 8
@svcrdma_root_table = common dso_local global i32 0, align 4
@svc_rdma_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_rdma_init() #0 {
  %1 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @svcrdma_ord, align 4
  %3 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %2)
  %4 = load i32, i32* @svcrdma_max_requests, align 4
  %5 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* @svcrdma_max_bc_requests, align 4
  %7 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* @svcrdma_max_req_size, align 4
  %9 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %8)
  %10 = load i64, i64* @svcrdma_table_header, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* @svcrdma_root_table, align 4
  %14 = call i64 @register_sysctl_table(i32 %13)
  store i64 %14, i64* @svcrdma_table_header, align 8
  br label %15

15:                                               ; preds = %12, %0
  %16 = call i32 @svc_reg_xprt_class(i32* @svc_rdma_class)
  ret i32 0
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @register_sysctl_table(i32) #1

declare dso_local i32 @svc_reg_xprt_class(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
