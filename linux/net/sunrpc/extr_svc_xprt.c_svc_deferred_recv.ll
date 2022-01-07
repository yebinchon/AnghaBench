; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_deferred_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_deferred_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.svc_deferred_req* }
%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.svc_deferred_req = type { i32, i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @svc_deferred_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_deferred_recv(%struct.svc_rqst* %0) #0 {
  %2 = alloca %struct.svc_rqst*, align 8
  %3 = alloca %struct.svc_deferred_req*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %2, align 8
  %4 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %5 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %4, i32 0, i32 8
  %6 = load %struct.svc_deferred_req*, %struct.svc_deferred_req** %5, align 8
  store %struct.svc_deferred_req* %6, %struct.svc_deferred_req** %3, align 8
  %7 = load %struct.svc_deferred_req*, %struct.svc_deferred_req** %3, align 8
  %8 = getelementptr inbounds %struct.svc_deferred_req, %struct.svc_deferred_req* %7, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.svc_deferred_req*, %struct.svc_deferred_req** %3, align 8
  %11 = getelementptr inbounds %struct.svc_deferred_req, %struct.svc_deferred_req* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = ashr i32 %12, 2
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %9, %14
  %16 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %17 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i64 %15, i64* %21, align 8
  %22 = load %struct.svc_deferred_req*, %struct.svc_deferred_req** %3, align 8
  %23 = getelementptr inbounds %struct.svc_deferred_req, %struct.svc_deferred_req* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 2
  %26 = load %struct.svc_deferred_req*, %struct.svc_deferred_req** %3, align 8
  %27 = getelementptr inbounds %struct.svc_deferred_req, %struct.svc_deferred_req* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %25, %28
  %30 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %31 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %29, i32* %35, align 8
  %36 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %37 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %36, i32 0, i32 7
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.svc_deferred_req*, %struct.svc_deferred_req** %3, align 8
  %40 = getelementptr inbounds %struct.svc_deferred_req, %struct.svc_deferred_req* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 2
  %43 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %44 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.svc_deferred_req*, %struct.svc_deferred_req** %3, align 8
  %47 = getelementptr inbounds %struct.svc_deferred_req, %struct.svc_deferred_req* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %50 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  %51 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %52 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %51, i32 0, i32 5
  %53 = load %struct.svc_deferred_req*, %struct.svc_deferred_req** %3, align 8
  %54 = getelementptr inbounds %struct.svc_deferred_req, %struct.svc_deferred_req* %53, i32 0, i32 4
  %55 = load %struct.svc_deferred_req*, %struct.svc_deferred_req** %3, align 8
  %56 = getelementptr inbounds %struct.svc_deferred_req, %struct.svc_deferred_req* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @memcpy(i32* %52, i32* %54, i32 %57)
  %59 = load %struct.svc_deferred_req*, %struct.svc_deferred_req** %3, align 8
  %60 = getelementptr inbounds %struct.svc_deferred_req, %struct.svc_deferred_req* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %63 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.svc_deferred_req*, %struct.svc_deferred_req** %3, align 8
  %65 = getelementptr inbounds %struct.svc_deferred_req, %struct.svc_deferred_req* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %68 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.svc_deferred_req*, %struct.svc_deferred_req** %3, align 8
  %70 = getelementptr inbounds %struct.svc_deferred_req, %struct.svc_deferred_req* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %73 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %75 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %78 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.svc_deferred_req*, %struct.svc_deferred_req** %3, align 8
  %80 = getelementptr inbounds %struct.svc_deferred_req, %struct.svc_deferred_req* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 2
  %83 = load %struct.svc_deferred_req*, %struct.svc_deferred_req** %3, align 8
  %84 = getelementptr inbounds %struct.svc_deferred_req, %struct.svc_deferred_req* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %82, %85
  ret i32 %86
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
