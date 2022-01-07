; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_add_new_temp_xprt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_add_new_temp_xprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.svc_xprt = type { i32, i32 }

@XPT_TEMP = common dso_local global i32 0, align 4
@svc_age_temp_xprts = common dso_local global i32* null, align 8
@jiffies = common dso_local global i64 0, align 8
@svc_conn_age_period = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_serv*, %struct.svc_xprt*)* @svc_add_new_temp_xprt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_add_new_temp_xprt(%struct.svc_serv* %0, %struct.svc_xprt* %1) #0 {
  %3 = alloca %struct.svc_serv*, align 8
  %4 = alloca %struct.svc_xprt*, align 8
  store %struct.svc_serv* %0, %struct.svc_serv** %3, align 8
  store %struct.svc_xprt* %1, %struct.svc_xprt** %4, align 8
  %5 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %6 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load i32, i32* @XPT_TEMP, align 4
  %9 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %10 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %9, i32 0, i32 1
  %11 = call i32 @set_bit(i32 %8, i32* %10)
  %12 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %13 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %12, i32 0, i32 0
  %14 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %15 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %14, i32 0, i32 3
  %16 = call i32 @list_add(i32* %13, i32* %15)
  %17 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %18 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %22 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %2
  %27 = load i32*, i32** @svc_age_temp_xprts, align 8
  %28 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %29 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32* %27, i32** %30, align 8
  %31 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %32 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %31, i32 0, i32 1
  %33 = load i64, i64* @jiffies, align 8
  %34 = load i32, i32* @svc_conn_age_period, align 4
  %35 = load i32, i32* @HZ, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %33, %37
  %39 = call i32 @mod_timer(%struct.TYPE_2__* %32, i64 %38)
  br label %40

40:                                               ; preds = %26, %2
  %41 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %42 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock_bh(i32* %42)
  %44 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %45 = call i32 @svc_xprt_received(%struct.svc_xprt* %44)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @svc_xprt_received(%struct.svc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
