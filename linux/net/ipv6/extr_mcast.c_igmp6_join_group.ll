; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_igmp6_join_group.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_igmp6_join_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmcaddr6 = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@MAF_NOREPORT = common dso_local global i32 0, align 4
@ICMPV6_MGM_REPORT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MAF_TIMER_RUNNING = common dso_local global i32 0, align 4
@MAF_LAST_REPORTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifmcaddr6*)* @igmp6_join_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igmp6_join_group(%struct.ifmcaddr6* %0) #0 {
  %2 = alloca %struct.ifmcaddr6*, align 8
  %3 = alloca i64, align 8
  store %struct.ifmcaddr6* %0, %struct.ifmcaddr6** %2, align 8
  %4 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %5 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @MAF_NOREPORT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %67

11:                                               ; preds = %1
  %12 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %13 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %12, i32 0, i32 5
  %14 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %15 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ICMPV6_MGM_REPORT, align 4
  %20 = call i32 @igmp6_send(i32* %13, i32 %18, i32 %19)
  %21 = call i64 (...) @prandom_u32()
  %22 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %23 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %22, i32 0, i32 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = call i64 @unsolicited_report_interval(%struct.TYPE_4__* %24)
  %26 = urem i64 %21, %25
  store i64 %26, i64* %3, align 8
  %27 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %28 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %27, i32 0, i32 1
  %29 = call i32 @spin_lock_bh(i32* %28)
  %30 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %31 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %30, i32 0, i32 3
  %32 = call i64 @del_timer(%struct.TYPE_5__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %11
  %35 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %36 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %35, i32 0, i32 2
  %37 = call i32 @refcount_dec(i32* %36)
  %38 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %39 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @jiffies, align 8
  %43 = sub i64 %41, %42
  store i64 %43, i64* %3, align 8
  br label %44

44:                                               ; preds = %34, %11
  %45 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %46 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %45, i32 0, i32 3
  %47 = load i64, i64* @jiffies, align 8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %47, %48
  %50 = call i32 @mod_timer(%struct.TYPE_5__* %46, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %44
  %53 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %54 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %53, i32 0, i32 2
  %55 = call i32 @refcount_inc(i32* %54)
  br label %56

56:                                               ; preds = %52, %44
  %57 = load i32, i32* @MAF_TIMER_RUNNING, align 4
  %58 = load i32, i32* @MAF_LAST_REPORTER, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %61 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %65 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %64, i32 0, i32 1
  %66 = call i32 @spin_unlock_bh(i32* %65)
  br label %67

67:                                               ; preds = %56, %10
  ret void
}

declare dso_local i32 @igmp6_send(i32*, i32, i32) #1

declare dso_local i64 @prandom_u32(...) #1

declare dso_local i64 @unsolicited_report_interval(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @del_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @refcount_dec(i32*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
