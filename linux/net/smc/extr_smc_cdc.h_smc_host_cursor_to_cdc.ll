; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.h_smc_host_cursor_to_cdc.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.h_smc_host_cursor_to_cdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.smc_cdc_cursor = type { i32 }
%union.smc_host_cursor = type { i32 }
%struct.smc_connection = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.smc_cdc_cursor*, %union.smc_host_cursor*, %union.smc_host_cursor*, %struct.smc_connection*)* @smc_host_cursor_to_cdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_host_cursor_to_cdc(%union.smc_cdc_cursor* %0, %union.smc_host_cursor* %1, %union.smc_host_cursor* %2, %struct.smc_connection* %3) #0 {
  %5 = alloca %union.smc_cdc_cursor*, align 8
  %6 = alloca %union.smc_host_cursor*, align 8
  %7 = alloca %union.smc_host_cursor*, align 8
  %8 = alloca %struct.smc_connection*, align 8
  store %union.smc_cdc_cursor* %0, %union.smc_cdc_cursor** %5, align 8
  store %union.smc_host_cursor* %1, %union.smc_host_cursor** %6, align 8
  store %union.smc_host_cursor* %2, %union.smc_host_cursor** %7, align 8
  store %struct.smc_connection* %3, %struct.smc_connection** %8, align 8
  %9 = load %union.smc_host_cursor*, %union.smc_host_cursor** %7, align 8
  %10 = load %union.smc_host_cursor*, %union.smc_host_cursor** %6, align 8
  %11 = load %struct.smc_connection*, %struct.smc_connection** %8, align 8
  %12 = call i32 @smc_curs_copy(%union.smc_host_cursor* %9, %union.smc_host_cursor* %10, %struct.smc_connection* %11)
  %13 = load %union.smc_host_cursor*, %union.smc_host_cursor** %7, align 8
  %14 = bitcast %union.smc_host_cursor* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @htonl(i32 %15)
  %17 = load %union.smc_cdc_cursor*, %union.smc_cdc_cursor** %5, align 8
  %18 = bitcast %union.smc_cdc_cursor* %17 to i32*
  store i32 %16, i32* %18, align 4
  %19 = load %union.smc_host_cursor*, %union.smc_host_cursor** %7, align 8
  %20 = bitcast %union.smc_host_cursor* %19 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @htons(i32 %21)
  %23 = load %union.smc_cdc_cursor*, %union.smc_cdc_cursor** %5, align 8
  %24 = bitcast %union.smc_cdc_cursor* %23 to i32*
  store i32 %22, i32* %24, align 4
  ret void
}

declare dso_local i32 @smc_curs_copy(%union.smc_host_cursor*, %union.smc_host_cursor*, %struct.smc_connection*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
