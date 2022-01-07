; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_br2684.c_br2684_pop.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_br2684.c_br2684_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.br2684_vcc = type { i32, i32, i32 (%struct.atm_vcc.0*, %struct.sk_buff*)* }
%struct.atm_vcc.0 = type opaque

@.str = private unnamed_addr constant [24 x i8] c"(vcc %p ; net_dev %p )\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*, %struct.sk_buff*)* @br2684_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br2684_pop(%struct.atm_vcc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.br2684_vcc*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %7 = call %struct.br2684_vcc* @BR2684_VCC(%struct.atm_vcc* %6)
  store %struct.br2684_vcc* %7, %struct.br2684_vcc** %5, align 8
  %8 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %9 = load %struct.br2684_vcc*, %struct.br2684_vcc** %5, align 8
  %10 = getelementptr inbounds %struct.br2684_vcc, %struct.br2684_vcc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.atm_vcc* %8, i32 %11)
  %13 = load %struct.br2684_vcc*, %struct.br2684_vcc** %5, align 8
  %14 = getelementptr inbounds %struct.br2684_vcc, %struct.br2684_vcc* %13, i32 0, i32 2
  %15 = load i32 (%struct.atm_vcc.0*, %struct.sk_buff*)*, i32 (%struct.atm_vcc.0*, %struct.sk_buff*)** %14, align 8
  %16 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %17 = bitcast %struct.atm_vcc* %16 to %struct.atm_vcc.0*
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 %15(%struct.atm_vcc.0* %17, %struct.sk_buff* %18)
  %20 = load %struct.br2684_vcc*, %struct.br2684_vcc** %5, align 8
  %21 = getelementptr inbounds %struct.br2684_vcc, %struct.br2684_vcc* %20, i32 0, i32 1
  %22 = call i32 @atomic_inc_return(i32* %21)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.br2684_vcc*, %struct.br2684_vcc** %5, align 8
  %26 = getelementptr inbounds %struct.br2684_vcc, %struct.br2684_vcc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @netif_wake_queue(i32 %27)
  br label %29

29:                                               ; preds = %24, %2
  ret void
}

declare dso_local %struct.br2684_vcc* @BR2684_VCC(%struct.atm_vcc*) #1

declare dso_local i32 @pr_debug(i8*, %struct.atm_vcc*, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
