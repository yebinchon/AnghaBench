; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.xdr_buf, %struct.svc_xprt* }
%struct.xdr_buf = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.svc_xprt = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { {}*, {}* }

@EFAULT = common dso_local global i32 0, align 4
@XPT_DEAD = common dso_local global i32 0, align 4
@XPT_CLOSE = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_send(%struct.svc_rqst* %0) #0 {
  %2 = alloca %struct.svc_rqst*, align 8
  %3 = alloca %struct.svc_xprt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdr_buf*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %2, align 8
  %6 = load i32, i32* @EFAULT, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %9 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %8, i32 0, i32 1
  %10 = load %struct.svc_xprt*, %struct.svc_xprt** %9, align 8
  store %struct.svc_xprt* %10, %struct.svc_xprt** %3, align 8
  %11 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %12 = icmp ne %struct.svc_xprt* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %97

14:                                               ; preds = %1
  %15 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %16 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = bitcast {}** %18 to i32 (%struct.svc_rqst*)**
  %20 = load i32 (%struct.svc_rqst*)*, i32 (%struct.svc_rqst*)** %19, align 8
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %22 = call i32 %20(%struct.svc_rqst* %21)
  %23 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %24 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %23, i32 0, i32 0
  store %struct.xdr_buf* %24, %struct.xdr_buf** %5, align 8
  %25 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %26 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %32 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %30, %33
  %35 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %36 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %34, %40
  %42 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %43 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %45 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %48 = call i32 @trace_svc_stats_latency(%struct.svc_rqst* %47)
  %49 = load i32, i32* @XPT_DEAD, align 4
  %50 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %51 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %50, i32 0, i32 2
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %14
  %55 = load i32, i32* @XPT_CLOSE, align 4
  %56 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %57 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %56, i32 0, i32 2
  %58 = call i64 @test_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54, %14
  %61 = load i32, i32* @ENOTCONN, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %72

63:                                               ; preds = %54
  %64 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %65 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = bitcast {}** %67 to i32 (%struct.svc_rqst*)**
  %69 = load i32 (%struct.svc_rqst*)*, i32 (%struct.svc_rqst*)** %68, align 8
  %70 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %71 = call i32 %69(%struct.svc_rqst* %70)
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %63, %60
  %73 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %74 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @trace_svc_send(%struct.svc_rqst* %76, i32 %77)
  %79 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %80 = call i32 @svc_xprt_release(%struct.svc_rqst* %79)
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @ECONNREFUSED, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %95, label %85

85:                                               ; preds = %72
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @ENOTCONN, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @EAGAIN, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90, %85, %72
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %90
  br label %97

97:                                               ; preds = %96, %13
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @trace_svc_stats_latency(%struct.svc_rqst*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @trace_svc_send(%struct.svc_rqst*, i32) #1

declare dso_local i32 @svc_xprt_release(%struct.svc_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
