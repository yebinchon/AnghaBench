; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_rdma.c_rds_ib_add_conn.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_rdma.c_rds_ib_add_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_device = type { i32, i32, i32 }
%struct.rds_connection = type { %struct.rds_ib_connection* }
%struct.rds_ib_connection = type { %struct.rds_ib_device*, i32 }

@ib_nodev_conns_lock = common dso_local global i32 0, align 4
@ib_nodev_conns = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_ib_add_conn(%struct.rds_ib_device* %0, %struct.rds_connection* %1) #0 {
  %3 = alloca %struct.rds_ib_device*, align 8
  %4 = alloca %struct.rds_connection*, align 8
  %5 = alloca %struct.rds_ib_connection*, align 8
  store %struct.rds_ib_device* %0, %struct.rds_ib_device** %3, align 8
  store %struct.rds_connection* %1, %struct.rds_connection** %4, align 8
  %6 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %7 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %6, i32 0, i32 0
  %8 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %7, align 8
  store %struct.rds_ib_connection* %8, %struct.rds_ib_connection** %5, align 8
  %9 = call i32 @spin_lock_irq(i32* @ib_nodev_conns_lock)
  %10 = call i32 @list_empty(i32* @ib_nodev_conns)
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %5, align 8
  %13 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %12, i32 0, i32 1
  %14 = call i32 @list_empty(i32* %13)
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %5, align 8
  %17 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %16, i32 0, i32 1
  %18 = call i32 @list_del(i32* %17)
  %19 = load %struct.rds_ib_device*, %struct.rds_ib_device** %3, align 8
  %20 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %19, i32 0, i32 1
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %5, align 8
  %23 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %22, i32 0, i32 1
  %24 = load %struct.rds_ib_device*, %struct.rds_ib_device** %3, align 8
  %25 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %24, i32 0, i32 2
  %26 = call i32 @list_add_tail(i32* %23, i32* %25)
  %27 = load %struct.rds_ib_device*, %struct.rds_ib_device** %3, align 8
  %28 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = call i32 @spin_unlock_irq(i32* @ib_nodev_conns_lock)
  %31 = load %struct.rds_ib_device*, %struct.rds_ib_device** %3, align 8
  %32 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %5, align 8
  %33 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %32, i32 0, i32 0
  store %struct.rds_ib_device* %31, %struct.rds_ib_device** %33, align 8
  %34 = load %struct.rds_ib_device*, %struct.rds_ib_device** %3, align 8
  %35 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %34, i32 0, i32 0
  %36 = call i32 @refcount_inc(i32* %35)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
