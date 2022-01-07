; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_mrp.c_mrp_uninit_applicant.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_mrp.c_mrp_uninit_applicant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mrp_application = type { i64, i32 }
%struct.mrp_port = type { i32* }
%struct.mrp_applicant = type { i32, i32, i32 }

@MRP_EVENT_TX = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrp_uninit_applicant(%struct.net_device* %0, %struct.mrp_application* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mrp_application*, align 8
  %5 = alloca %struct.mrp_port*, align 8
  %6 = alloca %struct.mrp_applicant*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.mrp_application* %1, %struct.mrp_application** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @rtnl_dereference(i32 %9)
  %11 = bitcast i8* %10 to %struct.mrp_port*
  store %struct.mrp_port* %11, %struct.mrp_port** %5, align 8
  %12 = load %struct.mrp_port*, %struct.mrp_port** %5, align 8
  %13 = getelementptr inbounds %struct.mrp_port, %struct.mrp_port* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.mrp_application*, %struct.mrp_application** %4, align 8
  %16 = getelementptr inbounds %struct.mrp_application, %struct.mrp_application* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @rtnl_dereference(i32 %19)
  %21 = bitcast i8* %20 to %struct.mrp_applicant*
  store %struct.mrp_applicant* %21, %struct.mrp_applicant** %6, align 8
  %22 = call i32 (...) @ASSERT_RTNL()
  %23 = load %struct.mrp_port*, %struct.mrp_port** %5, align 8
  %24 = getelementptr inbounds %struct.mrp_port, %struct.mrp_port* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.mrp_application*, %struct.mrp_application** %4, align 8
  %27 = getelementptr inbounds %struct.mrp_application, %struct.mrp_application* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @RCU_INIT_POINTER(i32 %30, i32* null)
  %32 = load %struct.mrp_applicant*, %struct.mrp_applicant** %6, align 8
  %33 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %32, i32 0, i32 2
  %34 = call i32 @del_timer_sync(i32* %33)
  %35 = load %struct.mrp_applicant*, %struct.mrp_applicant** %6, align 8
  %36 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %35, i32 0, i32 1
  %37 = call i32 @del_timer_sync(i32* %36)
  %38 = load %struct.mrp_applicant*, %struct.mrp_applicant** %6, align 8
  %39 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %38, i32 0, i32 0
  %40 = call i32 @spin_lock_bh(i32* %39)
  %41 = load %struct.mrp_applicant*, %struct.mrp_applicant** %6, align 8
  %42 = load i32, i32* @MRP_EVENT_TX, align 4
  %43 = call i32 @mrp_mad_event(%struct.mrp_applicant* %41, i32 %42)
  %44 = load %struct.mrp_applicant*, %struct.mrp_applicant** %6, align 8
  %45 = call i32 @mrp_pdu_queue(%struct.mrp_applicant* %44)
  %46 = load %struct.mrp_applicant*, %struct.mrp_applicant** %6, align 8
  %47 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock_bh(i32* %47)
  %49 = load %struct.mrp_applicant*, %struct.mrp_applicant** %6, align 8
  %50 = call i32 @mrp_queue_xmit(%struct.mrp_applicant* %49)
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = load %struct.mrp_application*, %struct.mrp_application** %4, align 8
  %53 = getelementptr inbounds %struct.mrp_application, %struct.mrp_application* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dev_mc_del(%struct.net_device* %51, i32 %54)
  %56 = load %struct.mrp_applicant*, %struct.mrp_applicant** %6, align 8
  %57 = load i32, i32* @rcu, align 4
  %58 = call i32 @kfree_rcu(%struct.mrp_applicant* %56, i32 %57)
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = call i32 @mrp_release_port(%struct.net_device* %59)
  ret void
}

declare dso_local i8* @rtnl_dereference(i32) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mrp_mad_event(%struct.mrp_applicant*, i32) #1

declare dso_local i32 @mrp_pdu_queue(%struct.mrp_applicant*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mrp_queue_xmit(%struct.mrp_applicant*) #1

declare dso_local i32 @dev_mc_del(%struct.net_device*, i32) #1

declare dso_local i32 @kfree_rcu(%struct.mrp_applicant*, i32) #1

declare dso_local i32 @mrp_release_port(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
