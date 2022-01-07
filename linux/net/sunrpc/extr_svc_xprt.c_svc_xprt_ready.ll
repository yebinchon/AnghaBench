; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_xprt_ready.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_xprt_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_xprt = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 (%struct.svc_xprt*)* }

@XPT_CONN = common dso_local global i32 0, align 4
@XPT_CLOSE = common dso_local global i32 0, align 4
@XPT_DATA = common dso_local global i32 0, align 4
@XPT_DEFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_xprt*)* @svc_xprt_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_xprt_ready(%struct.svc_xprt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_xprt*, align 8
  %4 = alloca i64, align 8
  store %struct.svc_xprt* %0, %struct.svc_xprt** %3, align 8
  %5 = call i32 (...) @smp_rmb()
  %6 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %7 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @READ_ONCE(i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i32, i32* @XPT_CONN, align 4
  %12 = call i64 @BIT(i32 %11)
  %13 = load i32, i32* @XPT_CLOSE, align 4
  %14 = call i64 @BIT(i32 %13)
  %15 = or i64 %12, %14
  %16 = and i64 %10, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %46

19:                                               ; preds = %1
  %20 = load i64, i64* %4, align 8
  %21 = load i32, i32* @XPT_DATA, align 4
  %22 = call i64 @BIT(i32 %21)
  %23 = load i32, i32* @XPT_DEFERRED, align 4
  %24 = call i64 @BIT(i32 %23)
  %25 = or i64 %22, %24
  %26 = and i64 %20, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %19
  %29 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %30 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64 (%struct.svc_xprt*)*, i64 (%struct.svc_xprt*)** %32, align 8
  %34 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %35 = call i64 %33(%struct.svc_xprt* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %39 = call i64 @svc_xprt_slots_in_range(%struct.svc_xprt* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 1, i32* %2, align 4
  br label %46

42:                                               ; preds = %37, %28
  %43 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %44 = call i32 @trace_svc_xprt_no_write_space(%struct.svc_xprt* %43)
  store i32 0, i32* %2, align 4
  br label %46

45:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %42, %41, %18
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i64 @svc_xprt_slots_in_range(%struct.svc_xprt*) #1

declare dso_local i32 @trace_svc_xprt_no_write_space(%struct.svc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
