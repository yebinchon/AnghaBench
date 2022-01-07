; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_lec.c_lec_arp_expire_arp.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_lec.c_lec_arp_expire_arp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }
%struct.lec_arp_table = type { i64, i64, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ESI_ARP_PENDING = common dso_local global i64 0, align 8
@l_rdesc_arp_xmt = common dso_local global i32 0, align 4
@l_arp_xmt = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @lec_arp_expire_arp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lec_arp_expire_arp(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.lec_arp_table*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.lec_arp_table*, %struct.lec_arp_table** %3, align 8
  %5 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %6 = load i32, i32* @timer, align 4
  %7 = call %struct.lec_arp_table* @from_timer(%struct.lec_arp_table* %4, %struct.timer_list* %5, i32 %6)
  store %struct.lec_arp_table* %7, %struct.lec_arp_table** %3, align 8
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.lec_arp_table*, %struct.lec_arp_table** %3, align 8
  %10 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ESI_ARP_PENDING, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %61

14:                                               ; preds = %1
  %15 = load %struct.lec_arp_table*, %struct.lec_arp_table** %3, align 8
  %16 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.lec_arp_table*, %struct.lec_arp_table** %3, align 8
  %19 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %17, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %14
  %25 = load %struct.lec_arp_table*, %struct.lec_arp_table** %3, align 8
  %26 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.lec_arp_table*, %struct.lec_arp_table** %3, align 8
  %31 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* @l_rdesc_arp_xmt, align 4
  %34 = load %struct.lec_arp_table*, %struct.lec_arp_table** %3, align 8
  %35 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @send_to_lecd(%struct.TYPE_2__* %32, i32 %33, i32 %36, i32* null, i32* null)
  br label %47

38:                                               ; preds = %24
  %39 = load %struct.lec_arp_table*, %struct.lec_arp_table** %3, align 8
  %40 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* @l_arp_xmt, align 4
  %43 = load %struct.lec_arp_table*, %struct.lec_arp_table** %3, align 8
  %44 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @send_to_lecd(%struct.TYPE_2__* %41, i32 %42, i32 %45, i32* null, i32* null)
  br label %47

47:                                               ; preds = %38, %29
  %48 = load %struct.lec_arp_table*, %struct.lec_arp_table** %3, align 8
  %49 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %47, %14
  %53 = load %struct.lec_arp_table*, %struct.lec_arp_table** %3, align 8
  %54 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %53, i32 0, i32 2
  %55 = load i64, i64* @jiffies, align 8
  %56 = load i32, i32* @HZ, align 4
  %57 = mul nsw i32 1, %56
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %55, %58
  %60 = call i32 @mod_timer(i32* %54, i64 %59)
  br label %61

61:                                               ; preds = %52, %1
  ret void
}

declare dso_local %struct.lec_arp_table* @from_timer(%struct.lec_arp_table*, %struct.timer_list*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @send_to_lecd(%struct.TYPE_2__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
