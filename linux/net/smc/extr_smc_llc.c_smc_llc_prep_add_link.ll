; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_prep_add_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_prep_add_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_llc_msg_add_link = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.smc_link = type { i32 }

@SMC_LLC_ADD_LINK = common dso_local global i32 0, align 4
@SMC_LLC_RESP = common dso_local global i32 0, align 4
@SMC_LLC_FLAG_RESP = common dso_local global i32 0, align 4
@SMC_LLC_FLAG_ADD_LNK_REJ = common dso_local global i32 0, align 4
@SMC_LLC_REJ_RSN_NO_ALT_PATH = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@SMC_GID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_llc_msg_add_link*, %struct.smc_link*, i32*, i32*, i32)* @smc_llc_prep_add_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_llc_prep_add_link(%struct.smc_llc_msg_add_link* %0, %struct.smc_link* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.smc_llc_msg_add_link*, align 8
  %7 = alloca %struct.smc_link*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.smc_llc_msg_add_link* %0, %struct.smc_llc_msg_add_link** %6, align 8
  store %struct.smc_link* %1, %struct.smc_link** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.smc_llc_msg_add_link*, %struct.smc_llc_msg_add_link** %6, align 8
  %12 = call i32 @memset(%struct.smc_llc_msg_add_link* %11, i32 0, i32 24)
  %13 = load i32, i32* @SMC_LLC_ADD_LINK, align 4
  %14 = load %struct.smc_llc_msg_add_link*, %struct.smc_llc_msg_add_link** %6, align 8
  %15 = getelementptr inbounds %struct.smc_llc_msg_add_link, %struct.smc_llc_msg_add_link* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.smc_llc_msg_add_link*, %struct.smc_llc_msg_add_link** %6, align 8
  %19 = getelementptr inbounds %struct.smc_llc_msg_add_link, %struct.smc_llc_msg_add_link* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 24, i32* %20, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @SMC_LLC_RESP, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %5
  %25 = load i32, i32* @SMC_LLC_FLAG_RESP, align 4
  %26 = load %struct.smc_llc_msg_add_link*, %struct.smc_llc_msg_add_link** %6, align 8
  %27 = getelementptr inbounds %struct.smc_llc_msg_add_link, %struct.smc_llc_msg_add_link* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %25
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @SMC_LLC_FLAG_ADD_LNK_REJ, align 4
  %32 = load %struct.smc_llc_msg_add_link*, %struct.smc_llc_msg_add_link** %6, align 8
  %33 = getelementptr inbounds %struct.smc_llc_msg_add_link, %struct.smc_llc_msg_add_link* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %31
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @SMC_LLC_REJ_RSN_NO_ALT_PATH, align 4
  %38 = load %struct.smc_llc_msg_add_link*, %struct.smc_llc_msg_add_link** %6, align 8
  %39 = getelementptr inbounds %struct.smc_llc_msg_add_link, %struct.smc_llc_msg_add_link* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %24, %5
  %42 = load %struct.smc_llc_msg_add_link*, %struct.smc_llc_msg_add_link** %6, align 8
  %43 = getelementptr inbounds %struct.smc_llc_msg_add_link, %struct.smc_llc_msg_add_link* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* @ETH_ALEN, align 4
  %47 = call i32 @memcpy(i32 %44, i32* %45, i32 %46)
  %48 = load %struct.smc_llc_msg_add_link*, %struct.smc_llc_msg_add_link** %6, align 8
  %49 = getelementptr inbounds %struct.smc_llc_msg_add_link, %struct.smc_llc_msg_add_link* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* @SMC_GID_SIZE, align 4
  %53 = call i32 @memcpy(i32 %50, i32* %51, i32 %52)
  ret void
}

declare dso_local i32 @memset(%struct.smc_llc_msg_add_link*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
