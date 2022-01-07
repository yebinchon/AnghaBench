; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_tx.h_smc_tx_prepared_sends.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_tx.h_smc_tx_prepared_sends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_connection = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%union.smc_host_cursor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_connection*)* @smc_tx_prepared_sends to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_tx_prepared_sends(%struct.smc_connection* %0) #0 {
  %2 = alloca %struct.smc_connection*, align 8
  %3 = alloca %union.smc_host_cursor, align 4
  %4 = alloca %union.smc_host_cursor, align 4
  store %struct.smc_connection* %0, %struct.smc_connection** %2, align 8
  %5 = load %struct.smc_connection*, %struct.smc_connection** %2, align 8
  %6 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %5, i32 0, i32 2
  %7 = load %struct.smc_connection*, %struct.smc_connection** %2, align 8
  %8 = call i32 @smc_curs_copy(%union.smc_host_cursor* %3, i32* %6, %struct.smc_connection* %7)
  %9 = load %struct.smc_connection*, %struct.smc_connection** %2, align 8
  %10 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %9, i32 0, i32 1
  %11 = load %struct.smc_connection*, %struct.smc_connection** %2, align 8
  %12 = call i32 @smc_curs_copy(%union.smc_host_cursor* %4, i32* %10, %struct.smc_connection* %11)
  %13 = load %struct.smc_connection*, %struct.smc_connection** %2, align 8
  %14 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @smc_curs_diff(i32 %17, %union.smc_host_cursor* %3, %union.smc_host_cursor* %4)
  ret i32 %18
}

declare dso_local i32 @smc_curs_copy(%union.smc_host_cursor*, i32*, %struct.smc_connection*) #1

declare dso_local i32 @smc_curs_diff(i32, %union.smc_host_cursor*, %union.smc_host_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
