; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_lec.c_lec_arp_clear_vccs.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_lec.c_lec_arp_clear_vccs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lec_arp_table = type { %struct.atm_vcc*, i32, %struct.atm_vcc*, i32 }
%struct.atm_vcc = type { i32, i32*, i32, i64 }
%struct.lec_vcc_priv = type { i64, i32 }
%struct.net_device = type { i32 }

@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lec_arp_table*)* @lec_arp_clear_vccs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lec_arp_clear_vccs(%struct.lec_arp_table* %0) #0 {
  %2 = alloca %struct.lec_arp_table*, align 8
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca %struct.lec_vcc_priv*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.lec_arp_table* %0, %struct.lec_arp_table** %2, align 8
  %6 = load %struct.lec_arp_table*, %struct.lec_arp_table** %2, align 8
  %7 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %6, i32 0, i32 2
  %8 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %9 = icmp ne %struct.atm_vcc* %8, null
  br i1 %9, label %10, label %48

10:                                               ; preds = %1
  %11 = load %struct.lec_arp_table*, %struct.lec_arp_table** %2, align 8
  %12 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %11, i32 0, i32 2
  %13 = load %struct.atm_vcc*, %struct.atm_vcc** %12, align 8
  store %struct.atm_vcc* %13, %struct.atm_vcc** %3, align 8
  %14 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %15 = call %struct.lec_vcc_priv* @LEC_VCC_PRIV(%struct.atm_vcc* %14)
  store %struct.lec_vcc_priv* %15, %struct.lec_vcc_priv** %4, align 8
  %16 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %17 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.net_device*
  store %struct.net_device* %19, %struct.net_device** %5, align 8
  %20 = load %struct.lec_vcc_priv*, %struct.lec_vcc_priv** %4, align 8
  %21 = getelementptr inbounds %struct.lec_vcc_priv, %struct.lec_vcc_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %24 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.lec_vcc_priv*, %struct.lec_vcc_priv** %4, align 8
  %26 = getelementptr inbounds %struct.lec_vcc_priv, %struct.lec_vcc_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %10
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = call i32 @netif_wake_queue(%struct.net_device* %30)
  br label %32

32:                                               ; preds = %29, %10
  %33 = load %struct.lec_vcc_priv*, %struct.lec_vcc_priv** %4, align 8
  %34 = call i32 @kfree(%struct.lec_vcc_priv* %33)
  %35 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %36 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.lec_arp_table*, %struct.lec_arp_table** %2, align 8
  %38 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %41 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %43 = load i32, i32* @EPIPE, align 4
  %44 = sub nsw i32 0, %43
  %45 = call i32 @vcc_release_async(%struct.atm_vcc* %42, i32 %44)
  %46 = load %struct.lec_arp_table*, %struct.lec_arp_table** %2, align 8
  %47 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %46, i32 0, i32 2
  store %struct.atm_vcc* null, %struct.atm_vcc** %47, align 8
  br label %48

48:                                               ; preds = %32, %1
  %49 = load %struct.lec_arp_table*, %struct.lec_arp_table** %2, align 8
  %50 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %49, i32 0, i32 0
  %51 = load %struct.atm_vcc*, %struct.atm_vcc** %50, align 8
  %52 = icmp ne %struct.atm_vcc* %51, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = load %struct.lec_arp_table*, %struct.lec_arp_table** %2, align 8
  %55 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.lec_arp_table*, %struct.lec_arp_table** %2, align 8
  %58 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %57, i32 0, i32 0
  %59 = load %struct.atm_vcc*, %struct.atm_vcc** %58, align 8
  %60 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 8
  %61 = load %struct.lec_arp_table*, %struct.lec_arp_table** %2, align 8
  %62 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %61, i32 0, i32 0
  %63 = load %struct.atm_vcc*, %struct.atm_vcc** %62, align 8
  %64 = load i32, i32* @EPIPE, align 4
  %65 = sub nsw i32 0, %64
  %66 = call i32 @vcc_release_async(%struct.atm_vcc* %63, i32 %65)
  %67 = load %struct.lec_arp_table*, %struct.lec_arp_table** %2, align 8
  %68 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %67, i32 0, i32 0
  store %struct.atm_vcc* null, %struct.atm_vcc** %68, align 8
  br label %69

69:                                               ; preds = %53, %48
  ret void
}

declare dso_local %struct.lec_vcc_priv* @LEC_VCC_PRIV(%struct.atm_vcc*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.lec_vcc_priv*) #1

declare dso_local i32 @vcc_release_async(%struct.atm_vcc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
