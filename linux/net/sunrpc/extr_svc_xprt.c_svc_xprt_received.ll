; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_xprt_received.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_xprt_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_xprt = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.svc_xprt*)* }

@XPT_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"xprt=0x%p already busy!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_xprt*)* @svc_xprt_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_xprt_received(%struct.svc_xprt* %0) #0 {
  %2 = alloca %struct.svc_xprt*, align 8
  store %struct.svc_xprt* %0, %struct.svc_xprt** %2, align 8
  %3 = load i32, i32* @XPT_BUSY, align 4
  %4 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %5 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %4, i32 0, i32 1
  %6 = call i32 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %10 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.svc_xprt* %9)
  br label %30

11:                                               ; preds = %1
  %12 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %13 = call i32 @svc_xprt_get(%struct.svc_xprt* %12)
  %14 = call i32 (...) @smp_mb__before_atomic()
  %15 = load i32, i32* @XPT_BUSY, align 4
  %16 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %17 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %16, i32 0, i32 1
  %18 = call i32 @clear_bit(i32 %15, i32* %17)
  %19 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %20 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.svc_xprt*)*, i32 (%struct.svc_xprt*)** %24, align 8
  %26 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %27 = call i32 %25(%struct.svc_xprt* %26)
  %28 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %29 = call i32 @svc_xprt_put(%struct.svc_xprt* %28)
  br label %30

30:                                               ; preds = %11, %8
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, %struct.svc_xprt*) #1

declare dso_local i32 @svc_xprt_get(%struct.svc_xprt*) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @svc_xprt_put(%struct.svc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
