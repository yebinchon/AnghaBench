; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_ism.c_smc_ism_register_dmb.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_ism.c_smc_ism_register_dmb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link_group = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, %struct.smcd_dmb*)* }
%struct.smcd_dmb = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.smc_buf_desc = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_ism_register_dmb(%struct.smc_link_group* %0, i32 %1, %struct.smc_buf_desc* %2) #0 {
  %4 = alloca %struct.smc_link_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smc_buf_desc*, align 8
  %7 = alloca %struct.smcd_dmb, align 4
  %8 = alloca i32, align 4
  store %struct.smc_link_group* %0, %struct.smc_link_group** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.smc_buf_desc* %2, %struct.smc_buf_desc** %6, align 8
  %9 = call i32 @memset(%struct.smcd_dmb* %7, i32 0, i32 28)
  %10 = load i32, i32* %5, align 4
  %11 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %7, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %6, align 8
  %13 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %7, i32 0, i32 4
  store i32 %14, i32* %15, align 4
  %16 = load %struct.smc_link_group*, %struct.smc_link_group** %4, align 8
  %17 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %7, i32 0, i32 6
  store i32 %18, i32* %19, align 4
  %20 = load %struct.smc_link_group*, %struct.smc_link_group** %4, align 8
  %21 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %7, i32 0, i32 5
  store i32 %22, i32* %23, align 4
  %24 = load %struct.smc_link_group*, %struct.smc_link_group** %4, align 8
  %25 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_4__*, %struct.smcd_dmb*)*, i32 (%struct.TYPE_4__*, %struct.smcd_dmb*)** %29, align 8
  %31 = load %struct.smc_link_group*, %struct.smc_link_group** %4, align 8
  %32 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i32 %30(%struct.TYPE_4__* %33, %struct.smcd_dmb* %7)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %7, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %6, align 8
  %41 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %7, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %6, align 8
  %45 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %7, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %6, align 8
  %49 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %7, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %6, align 8
  %53 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %7, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %6, align 8
  %57 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %37, %3
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i32 @memset(%struct.smcd_dmb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
