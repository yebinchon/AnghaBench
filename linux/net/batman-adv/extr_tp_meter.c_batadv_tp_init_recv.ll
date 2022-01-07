; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_init_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_init_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_tp_vars = type { i32, i32, i32, i32, i32, %struct.batadv_priv*, i32, i32, i32, i32 }
%struct.batadv_priv = type { i32, i32, i32 }
%struct.batadv_icmp_tp_packet = type { i32, i32 }

@BATADV_TP_MAX_NUM = common dso_local global i32 0, align 4
@BATADV_DBG_TP_METER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Meter: too many ongoing sessions, aborting (RECV)\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BATADV_TP_RECEIVER = common dso_local global i32 0, align 4
@BATADV_TP_FIRST_SEQ = common dso_local global i32 0, align 4
@batadv_tp_receiver_shutdown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.batadv_tp_vars* (%struct.batadv_priv*, %struct.batadv_icmp_tp_packet*)* @batadv_tp_init_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.batadv_tp_vars* @batadv_tp_init_recv(%struct.batadv_priv* %0, %struct.batadv_icmp_tp_packet* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.batadv_icmp_tp_packet*, align 8
  %5 = alloca %struct.batadv_tp_vars*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.batadv_icmp_tp_packet* %1, %struct.batadv_icmp_tp_packet** %4, align 8
  %6 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %7 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %10 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %4, align 8
  %11 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %4, align 8
  %14 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.batadv_tp_vars* @batadv_tp_list_find_session(%struct.batadv_priv* %9, i32 %12, i32 %15)
  store %struct.batadv_tp_vars* %16, %struct.batadv_tp_vars** %5, align 8
  %17 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %5, align 8
  %18 = icmp ne %struct.batadv_tp_vars* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %86

20:                                               ; preds = %2
  %21 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %22 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %21, i32 0, i32 2
  %23 = load i32, i32* @BATADV_TP_MAX_NUM, align 4
  %24 = call i32 @atomic_add_unless(i32* %22, i32 1, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @BATADV_DBG_TP_METER, align 4
  %28 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %29 = call i32 @batadv_dbg(i32 %27, %struct.batadv_priv* %28, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %86

30:                                               ; preds = %20
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.batadv_tp_vars* @kmalloc(i32 48, i32 %31)
  store %struct.batadv_tp_vars* %32, %struct.batadv_tp_vars** %5, align 8
  %33 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %5, align 8
  %34 = icmp ne %struct.batadv_tp_vars* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %86

36:                                               ; preds = %30
  %37 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %5, align 8
  %38 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %4, align 8
  %41 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ether_addr_copy(i32 %39, i32 %42)
  %44 = load i32, i32* @BATADV_TP_RECEIVER, align 4
  %45 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %5, align 8
  %46 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 8
  %47 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %5, align 8
  %48 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %4, align 8
  %51 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @memcpy(i32 %49, i32 %52, i32 4)
  %54 = load i32, i32* @BATADV_TP_FIRST_SEQ, align 4
  %55 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %5, align 8
  %56 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  %57 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %58 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %5, align 8
  %59 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %58, i32 0, i32 5
  store %struct.batadv_priv* %57, %struct.batadv_priv** %59, align 8
  %60 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %5, align 8
  %61 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %60, i32 0, i32 1
  %62 = call i32 @kref_init(i32* %61)
  %63 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %5, align 8
  %64 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %63, i32 0, i32 4
  %65 = call i32 @spin_lock_init(i32* %64)
  %66 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %5, align 8
  %67 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %66, i32 0, i32 3
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %5, align 8
  %70 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %69, i32 0, i32 1
  %71 = call i32 @kref_get(i32* %70)
  %72 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %5, align 8
  %73 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %72, i32 0, i32 2
  %74 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %75 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %74, i32 0, i32 1
  %76 = call i32 @hlist_add_head_rcu(i32* %73, i32* %75)
  %77 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %5, align 8
  %78 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %77, i32 0, i32 1
  %79 = call i32 @kref_get(i32* %78)
  %80 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %5, align 8
  %81 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %80, i32 0, i32 0
  %82 = load i32, i32* @batadv_tp_receiver_shutdown, align 4
  %83 = call i32 @timer_setup(i32* %81, i32 %82, i32 0)
  %84 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %5, align 8
  %85 = call i32 @batadv_tp_reset_receiver_timer(%struct.batadv_tp_vars* %84)
  br label %86

86:                                               ; preds = %36, %35, %26, %19
  %87 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %88 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock_bh(i32* %88)
  %90 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %5, align 8
  ret %struct.batadv_tp_vars* %90
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.batadv_tp_vars* @batadv_tp_list_find_session(%struct.batadv_priv*, i32, i32) #1

declare dso_local i32 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*) #1

declare dso_local %struct.batadv_tp_vars* @kmalloc(i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @batadv_tp_reset_receiver_timer(%struct.batadv_tp_vars*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
