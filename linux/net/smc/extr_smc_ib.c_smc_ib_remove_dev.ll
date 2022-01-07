; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_ib.c_smc_ib_remove_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_ib.c_smc_ib_remove_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ib_device = type { i32 }
%struct.smc_ib_device = type { i32, i32 }

@smc_ib_client = common dso_local global i32 0, align 4
@smc_ib_devices = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, i8*)* @smc_ib_remove_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_ib_remove_dev(%struct.ib_device* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.smc_ib_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %7 = call %struct.smc_ib_device* @ib_get_client_data(%struct.ib_device* %6, i32* @smc_ib_client)
  store %struct.smc_ib_device* %7, %struct.smc_ib_device** %5, align 8
  %8 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %9 = call i32 @ib_set_client_data(%struct.ib_device* %8, i32* @smc_ib_client, i32* null)
  %10 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smc_ib_devices, i32 0, i32 0))
  %11 = load %struct.smc_ib_device*, %struct.smc_ib_device** %5, align 8
  %12 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %11, i32 0, i32 1
  %13 = call i32 @list_del_init(i32* %12)
  %14 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smc_ib_devices, i32 0, i32 0))
  %15 = load %struct.smc_ib_device*, %struct.smc_ib_device** %5, align 8
  %16 = call i32 @smc_ib_cleanup_per_ibdev(%struct.smc_ib_device* %15)
  %17 = load %struct.smc_ib_device*, %struct.smc_ib_device** %5, align 8
  %18 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %17, i32 0, i32 0
  %19 = call i32 @ib_unregister_event_handler(i32* %18)
  %20 = load %struct.smc_ib_device*, %struct.smc_ib_device** %5, align 8
  %21 = call i32 @kfree(%struct.smc_ib_device* %20)
  ret void
}

declare dso_local %struct.smc_ib_device* @ib_get_client_data(%struct.ib_device*, i32*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @smc_ib_cleanup_per_ibdev(%struct.smc_ib_device*) #1

declare dso_local i32 @ib_unregister_event_handler(i32*) #1

declare dso_local i32 @kfree(%struct.smc_ib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
