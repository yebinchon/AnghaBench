; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.h_smcd_cdc_msg_to_host.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.h_smcd_cdc_msg_to_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_host_cdc_msg = type { i32, i32, i32, i32 }
%struct.smcd_cdc_msg = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.smc_connection = type { i32 }
%union.smc_host_cursor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_host_cdc_msg*, %struct.smcd_cdc_msg*, %struct.smc_connection*)* @smcd_cdc_msg_to_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smcd_cdc_msg_to_host(%struct.smc_host_cdc_msg* %0, %struct.smcd_cdc_msg* %1, %struct.smc_connection* %2) #0 {
  %4 = alloca %struct.smc_host_cdc_msg*, align 8
  %5 = alloca %struct.smcd_cdc_msg*, align 8
  %6 = alloca %struct.smc_connection*, align 8
  %7 = alloca %union.smc_host_cursor, align 4
  store %struct.smc_host_cdc_msg* %0, %struct.smc_host_cdc_msg** %4, align 8
  store %struct.smcd_cdc_msg* %1, %struct.smcd_cdc_msg** %5, align 8
  store %struct.smc_connection* %2, %struct.smc_connection** %6, align 8
  %8 = load %struct.smcd_cdc_msg*, %struct.smcd_cdc_msg** %5, align 8
  %9 = getelementptr inbounds %struct.smcd_cdc_msg, %struct.smcd_cdc_msg* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %union.smc_host_cursor* %7 to i32*
  store i32 %11, i32* %12, align 4
  %13 = load %struct.smcd_cdc_msg*, %struct.smcd_cdc_msg** %5, align 8
  %14 = getelementptr inbounds %struct.smcd_cdc_msg, %struct.smcd_cdc_msg* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = bitcast %union.smc_host_cursor* %7 to i32*
  store i32 %16, i32* %17, align 4
  %18 = load %struct.smc_host_cdc_msg*, %struct.smc_host_cdc_msg** %4, align 8
  %19 = getelementptr inbounds %struct.smc_host_cdc_msg, %struct.smc_host_cdc_msg* %18, i32 0, i32 3
  %20 = load %struct.smc_connection*, %struct.smc_connection** %6, align 8
  %21 = call i32 @smc_curs_copy(i32* %19, %union.smc_host_cursor* %7, %struct.smc_connection* %20)
  %22 = load %struct.smcd_cdc_msg*, %struct.smcd_cdc_msg** %5, align 8
  %23 = getelementptr inbounds %struct.smcd_cdc_msg, %struct.smcd_cdc_msg* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = bitcast %union.smc_host_cursor* %7 to i32*
  store i32 %25, i32* %26, align 4
  %27 = load %struct.smcd_cdc_msg*, %struct.smcd_cdc_msg** %5, align 8
  %28 = getelementptr inbounds %struct.smcd_cdc_msg, %struct.smcd_cdc_msg* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = bitcast %union.smc_host_cursor* %7 to i32*
  store i32 %30, i32* %31, align 4
  %32 = load %struct.smc_host_cdc_msg*, %struct.smc_host_cdc_msg** %4, align 8
  %33 = getelementptr inbounds %struct.smc_host_cdc_msg, %struct.smc_host_cdc_msg* %32, i32 0, i32 2
  %34 = load %struct.smc_connection*, %struct.smc_connection** %6, align 8
  %35 = call i32 @smc_curs_copy(i32* %33, %union.smc_host_cursor* %7, %struct.smc_connection* %34)
  %36 = load %struct.smcd_cdc_msg*, %struct.smcd_cdc_msg** %5, align 8
  %37 = getelementptr inbounds %struct.smcd_cdc_msg, %struct.smcd_cdc_msg* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.smc_host_cdc_msg*, %struct.smc_host_cdc_msg** %4, align 8
  %41 = getelementptr inbounds %struct.smc_host_cdc_msg, %struct.smc_host_cdc_msg* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.smcd_cdc_msg*, %struct.smcd_cdc_msg** %5, align 8
  %43 = getelementptr inbounds %struct.smcd_cdc_msg, %struct.smcd_cdc_msg* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.smc_host_cdc_msg*, %struct.smc_host_cdc_msg** %4, align 8
  %47 = getelementptr inbounds %struct.smc_host_cdc_msg, %struct.smc_host_cdc_msg* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  ret void
}

declare dso_local i32 @smc_curs_copy(i32*, %union.smc_host_cursor*, %struct.smc_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
