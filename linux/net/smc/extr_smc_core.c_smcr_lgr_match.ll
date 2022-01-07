; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smcr_lgr_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smcr_lgr_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link_group = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.smc_clc_msg_local = type { i32*, i32, i32* }

@SMC_SYSTEMID_LEN = common dso_local global i32 0, align 4
@SMC_SINGLE_LINK = common dso_local global i64 0, align 8
@SMC_GID_SIZE = common dso_local global i32 0, align 4
@SMC_SERV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_link_group*, %struct.smc_clc_msg_local*, i32, i64)* @smcr_lgr_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smcr_lgr_match(%struct.smc_link_group* %0, %struct.smc_clc_msg_local* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.smc_link_group*, align 8
  %6 = alloca %struct.smc_clc_msg_local*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.smc_link_group* %0, %struct.smc_link_group** %5, align 8
  store %struct.smc_clc_msg_local* %1, %struct.smc_clc_msg_local** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load %struct.smc_link_group*, %struct.smc_link_group** %5, align 8
  %10 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.smc_clc_msg_local*, %struct.smc_clc_msg_local** %6, align 8
  %13 = getelementptr inbounds %struct.smc_clc_msg_local, %struct.smc_clc_msg_local* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* @SMC_SYSTEMID_LEN, align 4
  %16 = call i32 @memcmp(i32 %11, i32* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %69, label %18

18:                                               ; preds = %4
  %19 = load %struct.smc_link_group*, %struct.smc_link_group** %5, align 8
  %20 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.smc_clc_msg_local*, %struct.smc_clc_msg_local** %6, align 8
  %27 = getelementptr inbounds %struct.smc_clc_msg_local, %struct.smc_clc_msg_local* %26, i32 0, i32 1
  %28 = load i32, i32* @SMC_GID_SIZE, align 4
  %29 = call i32 @memcmp(i32 %25, i32* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %69, label %31

31:                                               ; preds = %18
  %32 = load %struct.smc_link_group*, %struct.smc_link_group** %5, align 8
  %33 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.smc_clc_msg_local*, %struct.smc_clc_msg_local** %6, align 8
  %40 = getelementptr inbounds %struct.smc_clc_msg_local, %struct.smc_clc_msg_local* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @memcmp(i32 %38, i32* %41, i32 8)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %69, label %44

44:                                               ; preds = %31
  %45 = load %struct.smc_link_group*, %struct.smc_link_group** %5, align 8
  %46 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %44
  %51 = load %struct.smc_link_group*, %struct.smc_link_group** %5, align 8
  %52 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @SMC_SERV, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %67, label %57

57:                                               ; preds = %50
  %58 = load %struct.smc_link_group*, %struct.smc_link_group** %5, align 8
  %59 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp eq i64 %64, %65
  br label %67

67:                                               ; preds = %57, %50
  %68 = phi i1 [ true, %50 ], [ %66, %57 ]
  br label %69

69:                                               ; preds = %67, %44, %31, %18, %4
  %70 = phi i1 [ false, %44 ], [ false, %31 ], [ false, %18 ], [ false, %4 ], [ %68, %67 ]
  %71 = zext i1 %70 to i32
  ret i32 %71
}

declare dso_local i32 @memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
