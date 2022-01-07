; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_rx.c_smc_rx_data_available_and_no_splice_pend.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_rx.c_smc_rx_data_available_and_no_splice_pend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_connection = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_connection*)* @smc_rx_data_available_and_no_splice_pend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_rx_data_available_and_no_splice_pend(%struct.smc_connection* %0) #0 {
  %2 = alloca %struct.smc_connection*, align 8
  store %struct.smc_connection* %0, %struct.smc_connection** %2, align 8
  %3 = load %struct.smc_connection*, %struct.smc_connection** %2, align 8
  %4 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %3, i32 0, i32 1
  %5 = call i64 @atomic_read(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.smc_connection*, %struct.smc_connection** %2, align 8
  %9 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %8, i32 0, i32 0
  %10 = call i64 @atomic_read(i32* %9)
  %11 = icmp ne i64 %10, 0
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i1 [ false, %1 ], [ %12, %7 ]
  %15 = zext i1 %14 to i32
  ret i32 %15
}

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
