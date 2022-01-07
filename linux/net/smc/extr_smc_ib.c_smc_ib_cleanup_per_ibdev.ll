; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_ib.c_smc_ib_cleanup_per_ibdev.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_ib.c_smc_ib_cleanup_per_ibdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_ib_device = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_ib_device*)* @smc_ib_cleanup_per_ibdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_ib_cleanup_per_ibdev(%struct.smc_ib_device* %0) #0 {
  %2 = alloca %struct.smc_ib_device*, align 8
  store %struct.smc_ib_device* %0, %struct.smc_ib_device** %2, align 8
  %3 = load %struct.smc_ib_device*, %struct.smc_ib_device** %2, align 8
  %4 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %21

8:                                                ; preds = %1
  %9 = load %struct.smc_ib_device*, %struct.smc_ib_device** %2, align 8
  %10 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.smc_ib_device*, %struct.smc_ib_device** %2, align 8
  %12 = call i32 @smc_wr_remove_dev(%struct.smc_ib_device* %11)
  %13 = load %struct.smc_ib_device*, %struct.smc_ib_device** %2, align 8
  %14 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ib_destroy_cq(i32 %15)
  %17 = load %struct.smc_ib_device*, %struct.smc_ib_device** %2, align 8
  %18 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ib_destroy_cq(i32 %19)
  br label %21

21:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @smc_wr_remove_dev(%struct.smc_ib_device*) #1

declare dso_local i32 @ib_destroy_cq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
