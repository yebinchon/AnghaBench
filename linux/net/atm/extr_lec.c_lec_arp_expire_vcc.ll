; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_lec.c_lec_arp_expire_vcc.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_lec.c_lec_arp_expire_vcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lec_arp_table = type { i32, %struct.TYPE_2__*, i64, i32, %struct.lec_priv* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.lec_priv = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%p %p: vpi:%d vci:%d\0A\00", align 1
@to_remove = common dso_local global %struct.lec_arp_table* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @lec_arp_expire_vcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lec_arp_expire_vcc(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.lec_arp_table*, align 8
  %5 = alloca %struct.lec_priv*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %7 = ptrtoint %struct.lec_arp_table* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.lec_arp_table* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.lec_arp_table* %10, %struct.lec_arp_table** %4, align 8
  %11 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %12 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %11, i32 0, i32 4
  %13 = load %struct.lec_priv*, %struct.lec_priv** %12, align 8
  store %struct.lec_priv* %13, %struct.lec_priv** %5, align 8
  %14 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %15 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %14, i32 0, i32 3
  %16 = call i32 @del_timer(i32* %15)
  %17 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %18 = load %struct.lec_priv*, %struct.lec_priv** %5, align 8
  %19 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %20 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %25 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  br label %30

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %29, %23
  %31 = phi i32 [ %28, %23 ], [ 0, %29 ]
  %32 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %33 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %38 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  br label %43

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %36
  %44 = phi i32 [ %41, %36 ], [ 0, %42 ]
  %45 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.lec_arp_table* %17, %struct.lec_priv* %18, i32 %31, i32 %44)
  %46 = load %struct.lec_priv*, %struct.lec_priv** %5, align 8
  %47 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %46, i32 0, i32 0
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %51 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %50, i32 0, i32 0
  %52 = call i32 @hlist_del(i32* %51)
  %53 = load %struct.lec_priv*, %struct.lec_priv** %5, align 8
  %54 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %53, i32 0, i32 0
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %58 = call i32 @lec_arp_clear_vccs(%struct.lec_arp_table* %57)
  %59 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %60 = call i32 @lec_arp_put(%struct.lec_arp_table* %59)
  ret void
}

declare dso_local %struct.lec_arp_table* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @pr_debug(i8*, %struct.lec_arp_table*, %struct.lec_priv*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lec_arp_clear_vccs(%struct.lec_arp_table*) #1

declare dso_local i32 @lec_arp_put(%struct.lec_arp_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
