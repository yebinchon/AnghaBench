; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, %struct.TYPE_4__, %struct.svc_xprt* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.svc_xprt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_reserve(%struct.svc_rqst* %0, i32 %1) #0 {
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_xprt*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %7 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %6, i32 0, i32 2
  %8 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  store %struct.svc_xprt* %8, %struct.svc_xprt** %5, align 8
  %9 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %10 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %4, align 4
  %20 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %21 = icmp ne %struct.svc_xprt* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %25 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %30 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %35 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %34, i32 0, i32 0
  %36 = call i32 @atomic_sub(i32 %33, i32* %35)
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %39 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = call i32 (...) @smp_wmb()
  %41 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %42 = call i32 @svc_xprt_enqueue(%struct.svc_xprt* %41)
  br label %43

43:                                               ; preds = %28, %22, %2
  ret void
}

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @svc_xprt_enqueue(%struct.svc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
