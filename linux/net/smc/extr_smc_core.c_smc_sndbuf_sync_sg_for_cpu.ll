; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smc_sndbuf_sync_sg_for_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smc_sndbuf_sync_sg_for_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_connection = type { i32, %struct.smc_link_group* }
%struct.smc_link_group = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@SMC_SINGLE_LINK = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smc_sndbuf_sync_sg_for_cpu(%struct.smc_connection* %0) #0 {
  %2 = alloca %struct.smc_connection*, align 8
  %3 = alloca %struct.smc_link_group*, align 8
  store %struct.smc_connection* %0, %struct.smc_connection** %2, align 8
  %4 = load %struct.smc_connection*, %struct.smc_connection** %2, align 8
  %5 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %4, i32 0, i32 1
  %6 = load %struct.smc_link_group*, %struct.smc_link_group** %5, align 8
  store %struct.smc_link_group* %6, %struct.smc_link_group** %3, align 8
  %7 = load %struct.smc_connection*, %struct.smc_connection** %2, align 8
  %8 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %7, i32 0, i32 1
  %9 = load %struct.smc_link_group*, %struct.smc_link_group** %8, align 8
  %10 = icmp ne %struct.smc_link_group* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.smc_connection*, %struct.smc_connection** %2, align 8
  %13 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %12, i32 0, i32 1
  %14 = load %struct.smc_link_group*, %struct.smc_link_group** %13, align 8
  %15 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %1
  br label %32

19:                                               ; preds = %11
  %20 = load %struct.smc_link_group*, %struct.smc_link_group** %3, align 8
  %21 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.smc_connection*, %struct.smc_connection** %2, align 8
  %28 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DMA_TO_DEVICE, align 4
  %31 = call i32 @smc_ib_sync_sg_for_cpu(i32 %26, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @smc_ib_sync_sg_for_cpu(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
