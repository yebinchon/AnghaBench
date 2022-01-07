; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_dynamic_alloc_slot.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_dynamic_alloc_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.rpc_xprt = type { i64, i64, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_rqst* (%struct.rpc_xprt*)* @xprt_dynamic_alloc_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_rqst* @xprt_dynamic_alloc_slot(%struct.rpc_xprt* %0) #0 {
  %2 = alloca %struct.rpc_xprt*, align 8
  %3 = alloca %struct.rpc_rqst*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %2, align 8
  %4 = load i32, i32* @EAGAIN, align 4
  %5 = sub nsw i32 0, %4
  %6 = call %struct.rpc_rqst* @ERR_PTR(i32 %5)
  store %struct.rpc_rqst* %6, %struct.rpc_rqst** %3, align 8
  %7 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %8 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %11 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %39

15:                                               ; preds = %1
  %16 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %17 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  %20 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %21 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %20, i32 0, i32 2
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load i32, i32* @GFP_NOFS, align 4
  %24 = call %struct.rpc_rqst* @kzalloc(i32 4, i32 %23)
  store %struct.rpc_rqst* %24, %struct.rpc_rqst** %3, align 8
  %25 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %26 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %25, i32 0, i32 2
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %29 = icmp ne %struct.rpc_rqst* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  br label %39

31:                                               ; preds = %15
  %32 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %33 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %33, align 8
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.rpc_rqst* @ERR_PTR(i32 %37)
  store %struct.rpc_rqst* %38, %struct.rpc_rqst** %3, align 8
  br label %39

39:                                               ; preds = %31, %30, %14
  %40 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  ret %struct.rpc_rqst* %40
}

declare dso_local %struct.rpc_rqst* @ERR_PTR(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.rpc_rqst* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
