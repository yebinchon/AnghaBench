; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_adjust_cwnd.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_adjust_cwnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i64, i64 }
%struct.rpc_task = type { %struct.rpc_rqst* }
%struct.rpc_rqst = type { i32 }

@RPC_CWNDSCALE = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"RPC:       cong %ld, cwnd was %ld, now %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xprt_adjust_cwnd(%struct.rpc_xprt* %0, %struct.rpc_task* %1, i32 %2) #0 {
  %4 = alloca %struct.rpc_xprt*, align 8
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpc_rqst*, align 8
  %8 = alloca i64, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %4, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %10 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %9, i32 0, i32 0
  %11 = load %struct.rpc_rqst*, %struct.rpc_rqst** %10, align 8
  store %struct.rpc_rqst* %11, %struct.rpc_rqst** %7, align 8
  %12 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %13 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %3
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %20 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ule i64 %18, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %17
  %24 = load i64, i64* @RPC_CWNDSCALE, align 8
  %25 = load i64, i64* @RPC_CWNDSCALE, align 8
  %26 = mul i64 %24, %25
  %27 = load i64, i64* %8, align 8
  %28 = lshr i64 %27, 1
  %29 = add i64 %26, %28
  %30 = load i64, i64* %8, align 8
  %31 = udiv i64 %29, %30
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %36 = call i64 @RPC_MAXCWND(%struct.rpc_xprt* %35)
  %37 = icmp ugt i64 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %23
  %39 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %40 = call i64 @RPC_MAXCWND(%struct.rpc_xprt* %39)
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %38, %23
  %42 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %43 = call i32 @__xprt_lock_write_next_cong(%struct.rpc_xprt* %42)
  br label %59

44:                                               ; preds = %17, %3
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load i64, i64* %8, align 8
  %51 = lshr i64 %50, 1
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @RPC_CWNDSCALE, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i64, i64* @RPC_CWNDSCALE, align 8
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %55, %49
  br label %58

58:                                               ; preds = %57, %44
  br label %59

59:                                               ; preds = %58, %41
  %60 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %61 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %64 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %62, i64 %65, i64 %66)
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %70 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %72 = load %struct.rpc_rqst*, %struct.rpc_rqst** %7, align 8
  %73 = call i32 @__xprt_put_cong(%struct.rpc_xprt* %71, %struct.rpc_rqst* %72)
  ret void
}

declare dso_local i64 @RPC_MAXCWND(%struct.rpc_xprt*) #1

declare dso_local i32 @__xprt_lock_write_next_cong(%struct.rpc_xprt*) #1

declare dso_local i32 @dprintk(i8*, i64, i64, i64) #1

declare dso_local i32 @__xprt_put_cong(%struct.rpc_xprt*, %struct.rpc_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
