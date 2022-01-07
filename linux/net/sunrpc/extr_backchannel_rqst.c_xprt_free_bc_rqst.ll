; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_backchannel_rqst.c_xprt_free_bc_rqst.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_backchannel_rqst.c_xprt_free_bc_rqst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32, i32, i64, %struct.rpc_xprt* }
%struct.rpc_xprt = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [36 x i8] c"RPC:       free backchannel req=%p\0A\00", align 1
@RPC_BC_PA_IN_USE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"RPC:       Last session removed req=%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xprt_free_bc_rqst(%struct.rpc_rqst* %0) #0 {
  %2 = alloca %struct.rpc_rqst*, align 8
  %3 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %2, align 8
  %4 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %4, i32 0, i32 3
  %6 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  store %struct.rpc_xprt* %6, %struct.rpc_xprt** %3, align 8
  %7 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %8 = call i32 @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.rpc_rqst* %7)
  %9 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %10 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %11, 1
  %13 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %14 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %13, i32 0, i32 2
  store i64 %12, i64* %14, align 8
  %15 = call i32 (...) @smp_mb__before_atomic()
  %16 = load i32, i32* @RPC_BC_PA_IN_USE, align 4
  %17 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %18 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %17, i32 0, i32 1
  %19 = call i32 @clear_bit(i32 %16, i32* %18)
  %20 = call i32 (...) @smp_mb__after_atomic()
  %21 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %22 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %21, i32 0, i32 0
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %25 = call i64 @xprt_need_to_requeue(%struct.rpc_xprt* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %1
  %28 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %29 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %28, i32 0, i32 0
  %30 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %31 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %30, i32 0, i32 3
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  %33 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %34 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %38 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %37, i32 0, i32 1
  %39 = call i32 @atomic_inc(i32* %38)
  store %struct.rpc_rqst* null, %struct.rpc_rqst** %2, align 8
  br label %40

40:                                               ; preds = %27, %1
  %41 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %42 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock_bh(i32* %42)
  %44 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %45 = icmp ne %struct.rpc_rqst* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %48 = call i32 @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), %struct.rpc_rqst* %47)
  %49 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %50 = call i32 @xprt_free_allocation(%struct.rpc_rqst* %49)
  br label %51

51:                                               ; preds = %46, %40
  %52 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %53 = call i32 @xprt_put(%struct.rpc_xprt* %52)
  ret void
}

declare dso_local i32 @dprintk(i8*, %struct.rpc_rqst*) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @xprt_need_to_requeue(%struct.rpc_xprt*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @xprt_free_allocation(%struct.rpc_rqst*) #1

declare dso_local i32 @xprt_put(%struct.rpc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
