; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_inetaddr_event.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_inetaddr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.in_ifaddr = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.net = type { i32 }
%struct.nfsd_net = type { i32, i32, i64 }
%struct.sockaddr_in = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@NETDEV_DOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"nfsd_inetaddr_event: removed %pI4\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @nfsd_inetaddr_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_inetaddr_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.in_ifaddr*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.nfsd_net*, align 8
  %11 = alloca %struct.sockaddr_in, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.in_ifaddr*
  store %struct.in_ifaddr* %13, %struct.in_ifaddr** %7, align 8
  %14 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %15 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %8, align 8
  %19 = load %struct.net_device*, %struct.net_device** %8, align 8
  %20 = call %struct.net* @dev_net(%struct.net_device* %19)
  store %struct.net* %20, %struct.net** %9, align 8
  %21 = load %struct.net*, %struct.net** %9, align 8
  %22 = load i32, i32* @nfsd_net_id, align 4
  %23 = call %struct.nfsd_net* @net_generic(%struct.net* %21, i32 %22)
  store %struct.nfsd_net* %23, %struct.nfsd_net** %10, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @NETDEV_DOWN, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %3
  %28 = load %struct.nfsd_net*, %struct.nfsd_net** %10, align 8
  %29 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %28, i32 0, i32 1
  %30 = call i32 @atomic_inc_not_zero(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %3
  br label %61

33:                                               ; preds = %27
  %34 = load %struct.nfsd_net*, %struct.nfsd_net** %10, align 8
  %35 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %40 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %39, i32 0, i32 0
  %41 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32* %40)
  %42 = load i32, i32* @AF_INET, align 4
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %45 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.nfsd_net*, %struct.nfsd_net** %10, align 8
  %50 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = bitcast %struct.sockaddr_in* %11 to %struct.sockaddr*
  %53 = call i32 @svc_age_temp_xprts_now(i64 %51, %struct.sockaddr* %52)
  br label %54

54:                                               ; preds = %38, %33
  %55 = load %struct.nfsd_net*, %struct.nfsd_net** %10, align 8
  %56 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %55, i32 0, i32 1
  %57 = call i32 @atomic_dec(i32* %56)
  %58 = load %struct.nfsd_net*, %struct.nfsd_net** %10, align 8
  %59 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %58, i32 0, i32 0
  %60 = call i32 @wake_up(i32* %59)
  br label %61

61:                                               ; preds = %54, %32
  %62 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %62
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @dprintk(i8*, i32*) #1

declare dso_local i32 @svc_age_temp_xprts_now(i64, %struct.sockaddr*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
