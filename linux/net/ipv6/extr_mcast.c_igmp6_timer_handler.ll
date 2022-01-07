; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_igmp6_timer_handler.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_igmp6_timer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmcaddr6 = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }

@mca_timer = common dso_local global i32 0, align 4
@ICMPV6_MGM_REPORT = common dso_local global i32 0, align 4
@MAF_LAST_REPORTER = common dso_local global i32 0, align 4
@MAF_TIMER_RUNNING = common dso_local global i32 0, align 4
@ma = common dso_local global %struct.ifmcaddr6* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @igmp6_timer_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igmp6_timer_handler(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ifmcaddr6*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %5 = ptrtoint %struct.ifmcaddr6* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @mca_timer, align 4
  %8 = call %struct.ifmcaddr6* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.ifmcaddr6* %8, %struct.ifmcaddr6** %3, align 8
  %9 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %10 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = call i64 @mld_in_v1_mode(%struct.TYPE_3__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %16 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %15, i32 0, i32 3
  %17 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %18 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ICMPV6_MGM_REPORT, align 4
  %23 = call i32 @igmp6_send(i32* %16, i32 %21, i32 %22)
  br label %30

24:                                               ; preds = %1
  %25 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %26 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %29 = call i32 @mld_send_report(%struct.TYPE_3__* %27, %struct.ifmcaddr6* %28)
  br label %30

30:                                               ; preds = %24, %14
  %31 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %32 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %31, i32 0, i32 0
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load i32, i32* @MAF_LAST_REPORTER, align 4
  %35 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %36 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @MAF_TIMER_RUNNING, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %42 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %46 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %49 = call i32 @ma_put(%struct.ifmcaddr6* %48)
  ret void
}

declare dso_local %struct.ifmcaddr6* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @mld_in_v1_mode(%struct.TYPE_3__*) #1

declare dso_local i32 @igmp6_send(i32*, i32, i32) #1

declare dso_local i32 @mld_send_report(%struct.TYPE_3__*, %struct.ifmcaddr6*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ma_put(%struct.ifmcaddr6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
