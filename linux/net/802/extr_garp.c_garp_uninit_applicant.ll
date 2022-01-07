; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_garp.c_garp_uninit_applicant.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_garp.c_garp_uninit_applicant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.garp_application = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.garp_port = type { i32* }
%struct.garp_applicant = type { i32, i32 }

@GARP_EVENT_TRANSMIT_PDU = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @garp_uninit_applicant(%struct.net_device* %0, %struct.garp_application* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.garp_application*, align 8
  %5 = alloca %struct.garp_port*, align 8
  %6 = alloca %struct.garp_applicant*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.garp_application* %1, %struct.garp_application** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @rtnl_dereference(i32 %9)
  %11 = bitcast i8* %10 to %struct.garp_port*
  store %struct.garp_port* %11, %struct.garp_port** %5, align 8
  %12 = load %struct.garp_port*, %struct.garp_port** %5, align 8
  %13 = getelementptr inbounds %struct.garp_port, %struct.garp_port* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.garp_application*, %struct.garp_application** %4, align 8
  %16 = getelementptr inbounds %struct.garp_application, %struct.garp_application* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @rtnl_dereference(i32 %19)
  %21 = bitcast i8* %20 to %struct.garp_applicant*
  store %struct.garp_applicant* %21, %struct.garp_applicant** %6, align 8
  %22 = call i32 (...) @ASSERT_RTNL()
  %23 = load %struct.garp_port*, %struct.garp_port** %5, align 8
  %24 = getelementptr inbounds %struct.garp_port, %struct.garp_port* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.garp_application*, %struct.garp_application** %4, align 8
  %27 = getelementptr inbounds %struct.garp_application, %struct.garp_application* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @RCU_INIT_POINTER(i32 %30, i32* null)
  %32 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %33 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %32, i32 0, i32 1
  %34 = call i32 @del_timer_sync(i32* %33)
  %35 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %36 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %35, i32 0, i32 0
  %37 = call i32 @spin_lock_bh(i32* %36)
  %38 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %39 = load i32, i32* @GARP_EVENT_TRANSMIT_PDU, align 4
  %40 = call i32 @garp_gid_event(%struct.garp_applicant* %38, i32 %39)
  %41 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %42 = call i32 @garp_pdu_queue(%struct.garp_applicant* %41)
  %43 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %44 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock_bh(i32* %44)
  %46 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %47 = call i32 @garp_queue_xmit(%struct.garp_applicant* %46)
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = load %struct.garp_application*, %struct.garp_application** %4, align 8
  %50 = getelementptr inbounds %struct.garp_application, %struct.garp_application* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_mc_del(%struct.net_device* %48, i32 %52)
  %54 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %55 = load i32, i32* @rcu, align 4
  %56 = call i32 @kfree_rcu(%struct.garp_applicant* %54, i32 %55)
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = call i32 @garp_release_port(%struct.net_device* %57)
  ret void
}

declare dso_local i8* @rtnl_dereference(i32) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @garp_gid_event(%struct.garp_applicant*, i32) #1

declare dso_local i32 @garp_pdu_queue(%struct.garp_applicant*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @garp_queue_xmit(%struct.garp_applicant*) #1

declare dso_local i32 @dev_mc_del(%struct.net_device*, i32) #1

declare dso_local i32 @kfree_rcu(%struct.garp_applicant*, i32) #1

declare dso_local i32 @garp_release_port(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
