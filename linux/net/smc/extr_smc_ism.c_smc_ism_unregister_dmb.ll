; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_ism.c_smc_ism_unregister_dmb.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_ism.c_smc_ism_unregister_dmb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smcd_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.smcd_dev*, %struct.smcd_dmb*)* }
%struct.smcd_dmb = type { i32, i32, i32, i32, i32 }
%struct.smc_buf_desc = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_ism_unregister_dmb(%struct.smcd_dev* %0, %struct.smc_buf_desc* %1) #0 {
  %3 = alloca %struct.smcd_dev*, align 8
  %4 = alloca %struct.smc_buf_desc*, align 8
  %5 = alloca %struct.smcd_dmb, align 4
  store %struct.smcd_dev* %0, %struct.smcd_dev** %3, align 8
  store %struct.smc_buf_desc* %1, %struct.smc_buf_desc** %4, align 8
  %6 = call i32 @memset(%struct.smcd_dmb* %5, i32 0, i32 20)
  %7 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %4, align 8
  %8 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %5, i32 0, i32 4
  store i32 %9, i32* %10, align 4
  %11 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %4, align 8
  %12 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %5, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %4, align 8
  %16 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %5, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %4, align 8
  %20 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %5, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %4, align 8
  %24 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %5, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.smcd_dev*, %struct.smcd_dev** %3, align 8
  %28 = getelementptr inbounds %struct.smcd_dev, %struct.smcd_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.smcd_dev*, %struct.smcd_dmb*)*, i32 (%struct.smcd_dev*, %struct.smcd_dmb*)** %30, align 8
  %32 = load %struct.smcd_dev*, %struct.smcd_dev** %3, align 8
  %33 = call i32 %31(%struct.smcd_dev* %32, %struct.smcd_dmb* %5)
  ret i32 %33
}

declare dso_local i32 @memset(%struct.smcd_dmb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
