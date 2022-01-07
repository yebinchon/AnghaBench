; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib.c_rds_ib_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib.c_rds_ib_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rds_ib_device = type { i32 }

@rds_ib_client = common dso_local global i32 0, align 4
@rds_ib_devices_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, i8*)* @rds_ib_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_ib_remove_one(%struct.ib_device* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rds_ib_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.rds_ib_device*
  store %struct.rds_ib_device* %7, %struct.rds_ib_device** %5, align 8
  %8 = load %struct.rds_ib_device*, %struct.rds_ib_device** %5, align 8
  %9 = icmp ne %struct.rds_ib_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %26

11:                                               ; preds = %2
  %12 = load %struct.rds_ib_device*, %struct.rds_ib_device** %5, align 8
  %13 = call i32 @rds_ib_dev_shutdown(%struct.rds_ib_device* %12)
  %14 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %15 = call i32 @ib_set_client_data(%struct.ib_device* %14, i32* @rds_ib_client, i32* null)
  %16 = call i32 @down_write(i32* @rds_ib_devices_lock)
  %17 = load %struct.rds_ib_device*, %struct.rds_ib_device** %5, align 8
  %18 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %17, i32 0, i32 0
  %19 = call i32 @list_del_rcu(i32* %18)
  %20 = call i32 @up_write(i32* @rds_ib_devices_lock)
  %21 = call i32 (...) @synchronize_rcu()
  %22 = load %struct.rds_ib_device*, %struct.rds_ib_device** %5, align 8
  %23 = call i32 @rds_ib_dev_put(%struct.rds_ib_device* %22)
  %24 = load %struct.rds_ib_device*, %struct.rds_ib_device** %5, align 8
  %25 = call i32 @rds_ib_dev_put(%struct.rds_ib_device* %24)
  br label %26

26:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @rds_ib_dev_shutdown(%struct.rds_ib_device*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @rds_ib_dev_put(%struct.rds_ib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
