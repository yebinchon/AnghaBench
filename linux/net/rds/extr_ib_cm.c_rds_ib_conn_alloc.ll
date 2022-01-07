; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_cm.c_rds_ib_conn_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_cm.c_rds_ib_conn_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { %struct.rds_ib_connection* }
%struct.rds_ib_connection = type { i32, %struct.rds_connection*, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@rds_ib_tasklet_fn_send = common dso_local global i32 0, align 4
@rds_ib_tasklet_fn_recv = common dso_local global i32 0, align 4
@RDS_IB_DEFAULT_FR_WR = common dso_local global i32 0, align 4
@rds_ib_sysctl_max_send_wr = common dso_local global i32 0, align 4
@rds_ib_sysctl_max_recv_wr = common dso_local global i32 0, align 4
@ib_nodev_conns_lock = common dso_local global i32 0, align 4
@ib_nodev_conns = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"conn %p conn ic %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_ib_conn_alloc(%struct.rds_connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rds_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rds_ib_connection*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.rds_connection* %0, %struct.rds_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.rds_ib_connection* @kzalloc(i32 48, i32 %9)
  store %struct.rds_ib_connection* %10, %struct.rds_ib_connection** %6, align 8
  %11 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %12 = icmp ne %struct.rds_ib_connection* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %81

16:                                               ; preds = %2
  %17 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @rds_ib_recv_alloc_caches(%struct.rds_ib_connection* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %24 = call i32 @kfree(%struct.rds_ib_connection* %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %81

26:                                               ; preds = %16
  %27 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %28 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %27, i32 0, i32 0
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %31 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %30, i32 0, i32 9
  %32 = load i32, i32* @rds_ib_tasklet_fn_send, align 4
  %33 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %34 = ptrtoint %struct.rds_ib_connection* %33 to i64
  %35 = call i32 @tasklet_init(i32* %31, i32 %32, i64 %34)
  %36 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %37 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %36, i32 0, i32 8
  %38 = load i32, i32* @rds_ib_tasklet_fn_recv, align 4
  %39 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %40 = ptrtoint %struct.rds_ib_connection* %39 to i64
  %41 = call i32 @tasklet_init(i32* %37, i32 %38, i64 %40)
  %42 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %43 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %42, i32 0, i32 7
  %44 = call i32 @mutex_init(i32* %43)
  %45 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %46 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %45, i32 0, i32 6
  %47 = call i32 @spin_lock_init(i32* %46)
  %48 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %49 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %48, i32 0, i32 5
  %50 = call i32 @atomic_set(i32* %49, i32 0)
  %51 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %52 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %51, i32 0, i32 4
  %53 = load i32, i32* @RDS_IB_DEFAULT_FR_WR, align 4
  %54 = call i32 @atomic_set(i32* %52, i32 %53)
  %55 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %56 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %55, i32 0, i32 3
  %57 = load i32, i32* @rds_ib_sysctl_max_send_wr, align 4
  %58 = call i32 @rds_ib_ring_init(i32* %56, i32 %57)
  %59 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %60 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %59, i32 0, i32 2
  %61 = load i32, i32* @rds_ib_sysctl_max_recv_wr, align 4
  %62 = call i32 @rds_ib_ring_init(i32* %60, i32 %61)
  %63 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %64 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %65 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %64, i32 0, i32 1
  store %struct.rds_connection* %63, %struct.rds_connection** %65, align 8
  %66 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %67 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %68 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %67, i32 0, i32 0
  store %struct.rds_ib_connection* %66, %struct.rds_ib_connection** %68, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @spin_lock_irqsave(i32* @ib_nodev_conns_lock, i64 %69)
  %71 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %72 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %71, i32 0, i32 0
  %73 = call i32 @list_add_tail(i32* %72, i32* @ib_nodev_conns)
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* @ib_nodev_conns_lock, i64 %74)
  %76 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %77 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %78 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %77, i32 0, i32 0
  %79 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %78, align 8
  %80 = call i32 @rdsdebug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.rds_connection* %76, %struct.rds_ib_connection* %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %26, %22, %13
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.rds_ib_connection* @kzalloc(i32, i32) #1

declare dso_local i32 @rds_ib_recv_alloc_caches(%struct.rds_ib_connection*, i32) #1

declare dso_local i32 @kfree(%struct.rds_ib_connection*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @rds_ib_ring_init(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rdsdebug(i8*, %struct.rds_connection*, %struct.rds_ib_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
