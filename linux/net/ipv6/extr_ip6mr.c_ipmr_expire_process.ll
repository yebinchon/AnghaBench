; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ipmr_expire_process.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ipmr_expire_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mr_table = type { i32, i32 }
%struct.timer_list = type { i32 }

@ipmr_expire_timer = common dso_local global i32 0, align 4
@mfc_unres_lock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@mrt = common dso_local global %struct.mr_table* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ipmr_expire_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmr_expire_process(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.mr_table*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.mr_table*, %struct.mr_table** %3, align 8
  %5 = ptrtoint %struct.mr_table* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @ipmr_expire_timer, align 4
  %8 = call %struct.mr_table* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.mr_table* %8, %struct.mr_table** %3, align 8
  %9 = call i32 @spin_trylock(i32* @mfc_unres_lock)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.mr_table*, %struct.mr_table** %3, align 8
  %13 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %12, i32 0, i32 1
  %14 = load i64, i64* @jiffies, align 8
  %15 = add nsw i64 %14, 1
  %16 = call i32 @mod_timer(i32* %13, i64 %15)
  br label %27

17:                                               ; preds = %1
  %18 = load %struct.mr_table*, %struct.mr_table** %3, align 8
  %19 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %18, i32 0, i32 0
  %20 = call i32 @list_empty(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct.mr_table*, %struct.mr_table** %3, align 8
  %24 = call i32 @ipmr_do_expire_process(%struct.mr_table* %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = call i32 @spin_unlock(i32* @mfc_unres_lock)
  br label %27

27:                                               ; preds = %25, %11
  ret void
}

declare dso_local %struct.mr_table* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_trylock(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @ipmr_do_expire_process(%struct.mr_table*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
