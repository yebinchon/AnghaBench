; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_sender_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_sender_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_tp_vars = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, %struct.batadv_priv* }
%struct.batadv_priv = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@BATADV_TP_MAX_RTO = common dso_local global i32 0, align 4
@BATADV_TP_REASON_DST_UNREACHABLE = common dso_local global i32 0, align 4
@BATADV_TP_PLEN = common dso_local global i32 0, align 4
@BATADV_DBG_TP_METER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [92 x i8] c"Meter: RTO fired during test towards %pM! cwnd=%u new ss_thr=%u, resetting last_sent to %u\0A\00", align 1
@tp_vars = common dso_local global %struct.batadv_tp_vars* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @batadv_tp_sender_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_tp_sender_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.batadv_tp_vars*, align 8
  %4 = alloca %struct.batadv_priv*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %3, align 8
  %6 = ptrtoint %struct.batadv_tp_vars* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.batadv_tp_vars* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.batadv_tp_vars* %9, %struct.batadv_tp_vars** %3, align 8
  %10 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %3, align 8
  %11 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %10, i32 0, i32 9
  %12 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  store %struct.batadv_priv* %12, %struct.batadv_priv** %4, align 8
  %13 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %3, align 8
  %14 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %13, i32 0, i32 8
  %15 = call i64 @atomic_read(i32* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %89

18:                                               ; preds = %1
  %19 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %3, align 8
  %20 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @BATADV_TP_MAX_RTO, align 4
  %23 = icmp sge i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %3, align 8
  %29 = load i32, i32* @BATADV_TP_REASON_DST_UNREACHABLE, align 4
  %30 = call i32 @batadv_tp_sender_shutdown(%struct.batadv_tp_vars* %28, i32 %29)
  br label %89

31:                                               ; preds = %18
  %32 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %3, align 8
  %33 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %3, align 8
  %37 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %36, i32 0, i32 6
  %38 = call i32 @spin_lock_bh(i32* %37)
  %39 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %3, align 8
  %40 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = ashr i32 %41, 1
  %43 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %3, align 8
  %44 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %3, align 8
  %46 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BATADV_TP_PLEN, align 4
  %49 = mul nsw i32 %48, 2
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %31
  %52 = load i32, i32* @BATADV_TP_PLEN, align 4
  %53 = mul nsw i32 %52, 2
  %54 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %3, align 8
  %55 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %31
  %57 = load i32, i32* @BATADV_DBG_TP_METER, align 4
  %58 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %59 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %3, align 8
  %60 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %3, align 8
  %63 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %3, align 8
  %66 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %3, align 8
  %69 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %68, i32 0, i32 4
  %70 = call i64 @atomic_read(i32* %69)
  %71 = call i32 @batadv_dbg(i32 %57, %struct.batadv_priv* %58, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64, i32 %67, i64 %70)
  %72 = load i32, i32* @BATADV_TP_PLEN, align 4
  %73 = mul nsw i32 %72, 3
  %74 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %3, align 8
  %75 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %3, align 8
  %77 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %76, i32 0, i32 6
  %78 = call i32 @spin_unlock_bh(i32* %77)
  %79 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %3, align 8
  %80 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %79, i32 0, i32 4
  %81 = call i64 @atomic_read(i32* %80)
  %82 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %3, align 8
  %83 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %82, i32 0, i32 5
  store i64 %81, i64* %83, align 8
  %84 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %3, align 8
  %85 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %84, i32 0, i32 3
  %86 = call i32 @wake_up(i32* %85)
  %87 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %3, align 8
  %88 = call i32 @batadv_tp_reset_sender_timer(%struct.batadv_tp_vars* %87)
  br label %89

89:                                               ; preds = %56, %27, %17
  ret void
}

declare dso_local %struct.batadv_tp_vars* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @batadv_tp_sender_shutdown(%struct.batadv_tp_vars*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @batadv_tp_reset_sender_timer(%struct.batadv_tp_vars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
