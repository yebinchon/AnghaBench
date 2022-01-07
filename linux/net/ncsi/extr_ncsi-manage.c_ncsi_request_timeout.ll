; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-manage.c_ncsi_request_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-manage.c_ncsi_request_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_request = type { i32, i64, i64, i64, %struct.ncsi_dev_priv* }
%struct.ncsi_dev_priv = type { i32 }
%struct.timer_list = type { i32 }
%struct.ncsi_cmd_pkt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ncsi_package = type { i32 }
%struct.ncsi_channel = type { i32 }

@timer = common dso_local global i32 0, align 4
@NCSI_REQ_FLAG_NETLINK_DRIVEN = common dso_local global i64 0, align 8
@nr = common dso_local global %struct.ncsi_request* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ncsi_request_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncsi_request_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ncsi_request*, align 8
  %4 = alloca %struct.ncsi_dev_priv*, align 8
  %5 = alloca %struct.ncsi_cmd_pkt*, align 8
  %6 = alloca %struct.ncsi_package*, align 8
  %7 = alloca %struct.ncsi_channel*, align 8
  %8 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %9 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %10 = ptrtoint %struct.ncsi_request* %9 to i32
  %11 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %12 = load i32, i32* @timer, align 4
  %13 = call %struct.ncsi_request* @from_timer(i32 %10, %struct.timer_list* %11, i32 %12)
  store %struct.ncsi_request* %13, %struct.ncsi_request** %3, align 8
  %14 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %15 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %14, i32 0, i32 4
  %16 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %15, align 8
  store %struct.ncsi_dev_priv* %16, %struct.ncsi_dev_priv** %4, align 8
  %17 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %18 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %22 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %24 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %29 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %34 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %33, i32 0, i32 0
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  br label %73

37:                                               ; preds = %27
  %38 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %39 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %43 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NCSI_REQ_FLAG_NETLINK_DRIVEN, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %37
  %48 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %49 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %47
  %53 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %54 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @skb_network_header(i64 %55)
  %57 = inttoptr i64 %56 to %struct.ncsi_cmd_pkt*
  store %struct.ncsi_cmd_pkt* %57, %struct.ncsi_cmd_pkt** %5, align 8
  %58 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %59 = load %struct.ncsi_cmd_pkt*, %struct.ncsi_cmd_pkt** %5, align 8
  %60 = getelementptr inbounds %struct.ncsi_cmd_pkt, %struct.ncsi_cmd_pkt* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv* %58, i32 %63, %struct.ncsi_package** %6, %struct.ncsi_channel** %7)
  %65 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %66 = load %struct.ncsi_package*, %struct.ncsi_package** %6, align 8
  %67 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %68 = call i32 @ncsi_send_netlink_timeout(%struct.ncsi_request* %65, %struct.ncsi_package* %66, %struct.ncsi_channel* %67)
  br label %69

69:                                               ; preds = %52, %47
  br label %70

70:                                               ; preds = %69, %37
  %71 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %72 = call i32 @ncsi_free_request(%struct.ncsi_request* %71)
  br label %73

73:                                               ; preds = %70, %32
  ret void
}

declare dso_local %struct.ncsi_request* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @skb_network_header(i64) #1

declare dso_local i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv*, i32, %struct.ncsi_package**, %struct.ncsi_channel**) #1

declare dso_local i32 @ncsi_send_netlink_timeout(%struct.ncsi_request*, %struct.ncsi_package*, %struct.ncsi_channel*) #1

declare dso_local i32 @ncsi_free_request(%struct.ncsi_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
