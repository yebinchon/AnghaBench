; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_lec.c_make_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_lec.c_make_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lec_arp_table = type { i32, i32, %struct.lec_priv*, i32, i32, i32, i32 }
%struct.lec_priv = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"LEC: Arp entry kmalloc failed\0A\00", align 1
@lec_arp_expire_arp = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lec_arp_table* (%struct.lec_priv*, i8*)* @make_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lec_arp_table* @make_entry(%struct.lec_priv* %0, i8* %1) #0 {
  %3 = alloca %struct.lec_arp_table*, align 8
  %4 = alloca %struct.lec_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lec_arp_table*, align 8
  store %struct.lec_priv* %0, %struct.lec_priv** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.lec_arp_table* @kzalloc(i32 32, i32 %7)
  store %struct.lec_arp_table* %8, %struct.lec_arp_table** %6, align 8
  %9 = load %struct.lec_arp_table*, %struct.lec_arp_table** %6, align 8
  %10 = icmp ne %struct.lec_arp_table* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store %struct.lec_arp_table* null, %struct.lec_arp_table** %3, align 8
  br label %39

13:                                               ; preds = %2
  %14 = load %struct.lec_arp_table*, %struct.lec_arp_table** %6, align 8
  %15 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @ether_addr_copy(i32 %16, i8* %17)
  %19 = load %struct.lec_arp_table*, %struct.lec_arp_table** %6, align 8
  %20 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %19, i32 0, i32 5
  %21 = call i32 @INIT_HLIST_NODE(i32* %20)
  %22 = load %struct.lec_arp_table*, %struct.lec_arp_table** %6, align 8
  %23 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %22, i32 0, i32 4
  %24 = load i32, i32* @lec_arp_expire_arp, align 4
  %25 = call i32 @timer_setup(i32* %23, i32 %24, i32 0)
  %26 = load i32, i32* @jiffies, align 4
  %27 = load %struct.lec_arp_table*, %struct.lec_arp_table** %6, align 8
  %28 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.lec_priv*, %struct.lec_priv** %4, align 8
  %30 = load %struct.lec_arp_table*, %struct.lec_arp_table** %6, align 8
  %31 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %30, i32 0, i32 2
  store %struct.lec_priv* %29, %struct.lec_priv** %31, align 8
  %32 = load %struct.lec_arp_table*, %struct.lec_arp_table** %6, align 8
  %33 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %32, i32 0, i32 1
  %34 = call i32 @skb_queue_head_init(i32* %33)
  %35 = load %struct.lec_arp_table*, %struct.lec_arp_table** %6, align 8
  %36 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %35, i32 0, i32 0
  %37 = call i32 @refcount_set(i32* %36, i32 1)
  %38 = load %struct.lec_arp_table*, %struct.lec_arp_table** %6, align 8
  store %struct.lec_arp_table* %38, %struct.lec_arp_table** %3, align 8
  br label %39

39:                                               ; preds = %13, %11
  %40 = load %struct.lec_arp_table*, %struct.lec_arp_table** %3, align 8
  ret %struct.lec_arp_table* %40
}

declare dso_local %struct.lec_arp_table* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
