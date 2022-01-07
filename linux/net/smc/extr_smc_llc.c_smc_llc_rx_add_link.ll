; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_rx_add_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_rx_add_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { i64, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.smc_llc_msg_add_link = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.smc_link_group = type { i64 }

@SMC_LLC_FLAG_RESP = common dso_local global i32 0, align 4
@SMC_LNK_ACTIVATING = common dso_local global i64 0, align 8
@SMC_SERV = common dso_local global i64 0, align 8
@SMC_LLC_REQ = common dso_local global i32 0, align 4
@SMC_LLC_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_link*, %struct.smc_llc_msg_add_link*)* @smc_llc_rx_add_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_llc_rx_add_link(%struct.smc_link* %0, %struct.smc_llc_msg_add_link* %1) #0 {
  %3 = alloca %struct.smc_link*, align 8
  %4 = alloca %struct.smc_llc_msg_add_link*, align 8
  %5 = alloca %struct.smc_link_group*, align 8
  store %struct.smc_link* %0, %struct.smc_link** %3, align 8
  store %struct.smc_llc_msg_add_link* %1, %struct.smc_llc_msg_add_link** %4, align 8
  %6 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %7 = call %struct.smc_link_group* @smc_get_lgr(%struct.smc_link* %6)
  store %struct.smc_link_group* %7, %struct.smc_link_group** %5, align 8
  %8 = load %struct.smc_llc_msg_add_link*, %struct.smc_llc_msg_add_link** %4, align 8
  %9 = getelementptr inbounds %struct.smc_llc_msg_add_link, %struct.smc_llc_msg_add_link* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SMC_LLC_FLAG_RESP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %17 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SMC_LNK_ACTIVATING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %23 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %22, i32 0, i32 5
  %24 = call i32 @complete(i32* %23)
  br label %25

25:                                               ; preds = %21, %15
  br label %86

26:                                               ; preds = %2
  %27 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %28 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SMC_LNK_ACTIVATING, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %34 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %33, i32 0, i32 4
  %35 = call i32 @complete(i32* %34)
  br label %86

36:                                               ; preds = %26
  %37 = load %struct.smc_link_group*, %struct.smc_link_group** %5, align 8
  %38 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SMC_SERV, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %36
  %43 = load %struct.smc_llc_msg_add_link*, %struct.smc_llc_msg_add_link** %4, align 8
  %44 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %45 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %46 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %51 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %49, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %58 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SMC_LLC_REQ, align 4
  %61 = call i32 @smc_llc_prep_add_link(%struct.smc_llc_msg_add_link* %43, %struct.smc_link* %44, i32 %56, i32 %59, i32 %60)
  br label %82

62:                                               ; preds = %36
  %63 = load %struct.smc_llc_msg_add_link*, %struct.smc_llc_msg_add_link** %4, align 8
  %64 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %65 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %66 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %71 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %69, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %78 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @SMC_LLC_RESP, align 4
  %81 = call i32 @smc_llc_prep_add_link(%struct.smc_llc_msg_add_link* %63, %struct.smc_link* %64, i32 %76, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %62, %42
  %83 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %84 = load %struct.smc_llc_msg_add_link*, %struct.smc_llc_msg_add_link** %4, align 8
  %85 = call i32 @smc_llc_send_message(%struct.smc_link* %83, %struct.smc_llc_msg_add_link* %84, i32 4)
  br label %86

86:                                               ; preds = %32, %82, %25
  ret void
}

declare dso_local %struct.smc_link_group* @smc_get_lgr(%struct.smc_link*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @smc_llc_prep_add_link(%struct.smc_llc_msg_add_link*, %struct.smc_link*, i32, i32, i32) #1

declare dso_local i32 @smc_llc_send_message(%struct.smc_link*, %struct.smc_llc_msg_add_link*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
