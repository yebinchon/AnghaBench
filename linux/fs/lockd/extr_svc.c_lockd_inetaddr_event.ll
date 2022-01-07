; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svc.c_lockd_inetaddr_event.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svc.c_lockd_inetaddr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.notifier_block = type { i32 }
%struct.in_ifaddr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@NETDEV_DOWN = common dso_local global i64 0, align 8
@nlm_ntf_refcnt = common dso_local global i32 0, align 4
@nlmsvc_rqst = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"lockd_inetaddr_event: removed %pI4\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@nlm_ntf_wq = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @lockd_inetaddr_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lockd_inetaddr_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.in_ifaddr*, align 8
  %8 = alloca %struct.sockaddr_in, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.in_ifaddr*
  store %struct.in_ifaddr* %10, %struct.in_ifaddr** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @NETDEV_DOWN, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = call i32 @atomic_inc_not_zero(i32* @nlm_ntf_refcnt)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %3
  br label %40

18:                                               ; preds = %14
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nlmsvc_rqst, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %23 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %22, i32 0, i32 0
  %24 = call i32 @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %23)
  %25 = load i32, i32* @AF_INET, align 4
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %28 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nlmsvc_rqst, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %36 = call i32 @svc_age_temp_xprts_now(i32 %34, %struct.sockaddr* %35)
  br label %37

37:                                               ; preds = %21, %18
  %38 = call i32 @atomic_dec(i32* @nlm_ntf_refcnt)
  %39 = call i32 @wake_up(i32* @nlm_ntf_wq)
  br label %40

40:                                               ; preds = %37, %17
  %41 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %41
}

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @dprintk(i8*, i32*) #1

declare dso_local i32 @svc_age_temp_xprts_now(i32, %struct.sockaddr*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
