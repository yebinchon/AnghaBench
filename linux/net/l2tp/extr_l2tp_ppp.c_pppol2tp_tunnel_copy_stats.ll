; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_tunnel_copy_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_tunnel_copy_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppol2tp_ioc_stats = type { i32 }
%struct.l2tp_tunnel = type { i32 }
%struct.l2tp_session = type { i64, i32 }

@EBADR = common dso_local global i32 0, align 4
@L2TP_PWTYPE_PPP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pppol2tp_ioc_stats*, %struct.l2tp_tunnel*)* @pppol2tp_tunnel_copy_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppol2tp_tunnel_copy_stats(%struct.pppol2tp_ioc_stats* %0, %struct.l2tp_tunnel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pppol2tp_ioc_stats*, align 8
  %5 = alloca %struct.l2tp_tunnel*, align 8
  %6 = alloca %struct.l2tp_session*, align 8
  store %struct.pppol2tp_ioc_stats* %0, %struct.pppol2tp_ioc_stats** %4, align 8
  store %struct.l2tp_tunnel* %1, %struct.l2tp_tunnel** %5, align 8
  %7 = load %struct.pppol2tp_ioc_stats*, %struct.pppol2tp_ioc_stats** %4, align 8
  %8 = getelementptr inbounds %struct.pppol2tp_ioc_stats, %struct.pppol2tp_ioc_stats* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.pppol2tp_ioc_stats*, %struct.pppol2tp_ioc_stats** %4, align 8
  %13 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %5, align 8
  %14 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %13, i32 0, i32 0
  %15 = call i32 @pppol2tp_copy_stats(%struct.pppol2tp_ioc_stats* %12, i32* %14)
  store i32 0, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  %17 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %5, align 8
  %18 = load %struct.pppol2tp_ioc_stats*, %struct.pppol2tp_ioc_stats** %4, align 8
  %19 = getelementptr inbounds %struct.pppol2tp_ioc_stats, %struct.pppol2tp_ioc_stats* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.l2tp_session* @l2tp_tunnel_get_session(%struct.l2tp_tunnel* %17, i32 %20)
  store %struct.l2tp_session* %21, %struct.l2tp_session** %6, align 8
  %22 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %23 = icmp ne %struct.l2tp_session* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @EBADR, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %45

27:                                               ; preds = %16
  %28 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %29 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @L2TP_PWTYPE_PPP, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %35 = call i32 @l2tp_session_dec_refcount(%struct.l2tp_session* %34)
  %36 = load i32, i32* @EBADR, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %45

38:                                               ; preds = %27
  %39 = load %struct.pppol2tp_ioc_stats*, %struct.pppol2tp_ioc_stats** %4, align 8
  %40 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %41 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %40, i32 0, i32 1
  %42 = call i32 @pppol2tp_copy_stats(%struct.pppol2tp_ioc_stats* %39, i32* %41)
  %43 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %44 = call i32 @l2tp_session_dec_refcount(%struct.l2tp_session* %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %38, %33, %24, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @pppol2tp_copy_stats(%struct.pppol2tp_ioc_stats*, i32*) #1

declare dso_local %struct.l2tp_session* @l2tp_tunnel_get_session(%struct.l2tp_tunnel*, i32) #1

declare dso_local i32 @l2tp_session_dec_refcount(%struct.l2tp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
