; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_xprt_reserve_slot.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_xprt_reserve_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_xprt = type { i32 }

@RQ_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.svc_xprt*)* @svc_xprt_reserve_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_xprt_reserve_slot(%struct.svc_rqst* %0, %struct.svc_xprt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.svc_xprt*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.svc_xprt* %1, %struct.svc_xprt** %5, align 8
  %6 = load i32, i32* @RQ_DATA, align 4
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 0
  %9 = call i32 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %13 = call i32 @svc_xprt_slots_in_range(%struct.svc_xprt* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %25

16:                                               ; preds = %11
  %17 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %18 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %17, i32 0, i32 0
  %19 = call i32 @atomic_inc(i32* %18)
  %20 = load i32, i32* @RQ_DATA, align 4
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %22 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %21, i32 0, i32 0
  %23 = call i32 @set_bit(i32 %20, i32* %22)
  br label %24

24:                                               ; preds = %16, %2
  store i32 1, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %15
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @svc_xprt_slots_in_range(%struct.svc_xprt*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
