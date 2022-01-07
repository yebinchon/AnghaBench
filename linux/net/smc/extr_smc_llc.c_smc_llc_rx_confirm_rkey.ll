; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_rx_confirm_rkey.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_rx_confirm_rkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { i32, i32 }
%struct.smc_llc_msg_confirm_rkey = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@SMC_LLC_FLAG_RESP = common dso_local global i32 0, align 4
@SMC_LLC_FLAG_RKEY_NEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_link*, %struct.smc_llc_msg_confirm_rkey*)* @smc_llc_rx_confirm_rkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_llc_rx_confirm_rkey(%struct.smc_link* %0, %struct.smc_llc_msg_confirm_rkey* %1) #0 {
  %3 = alloca %struct.smc_link*, align 8
  %4 = alloca %struct.smc_llc_msg_confirm_rkey*, align 8
  %5 = alloca i32, align 4
  store %struct.smc_link* %0, %struct.smc_link** %3, align 8
  store %struct.smc_llc_msg_confirm_rkey* %1, %struct.smc_llc_msg_confirm_rkey** %4, align 8
  %6 = load %struct.smc_llc_msg_confirm_rkey*, %struct.smc_llc_msg_confirm_rkey** %4, align 8
  %7 = getelementptr inbounds %struct.smc_llc_msg_confirm_rkey, %struct.smc_llc_msg_confirm_rkey* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SMC_LLC_FLAG_RESP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.smc_llc_msg_confirm_rkey*, %struct.smc_llc_msg_confirm_rkey** %4, align 8
  %15 = getelementptr inbounds %struct.smc_llc_msg_confirm_rkey, %struct.smc_llc_msg_confirm_rkey* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SMC_LLC_FLAG_RKEY_NEG, align 4
  %19 = and i32 %17, %18
  %20 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %21 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %23 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %22, i32 0, i32 1
  %24 = call i32 @complete(i32* %23)
  br label %60

25:                                               ; preds = %2
  %26 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %27 = call i32 @smc_get_lgr(%struct.smc_link* %26)
  %28 = load %struct.smc_llc_msg_confirm_rkey*, %struct.smc_llc_msg_confirm_rkey** %4, align 8
  %29 = getelementptr inbounds %struct.smc_llc_msg_confirm_rkey, %struct.smc_llc_msg_confirm_rkey* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.smc_llc_msg_confirm_rkey*, %struct.smc_llc_msg_confirm_rkey** %4, align 8
  %35 = getelementptr inbounds %struct.smc_llc_msg_confirm_rkey, %struct.smc_llc_msg_confirm_rkey* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @smc_rtoken_add(i32 %27, i32 %33, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @SMC_LLC_FLAG_RESP, align 4
  %42 = load %struct.smc_llc_msg_confirm_rkey*, %struct.smc_llc_msg_confirm_rkey** %4, align 8
  %43 = getelementptr inbounds %struct.smc_llc_msg_confirm_rkey, %struct.smc_llc_msg_confirm_rkey* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %25
  %50 = load i32, i32* @SMC_LLC_FLAG_RKEY_NEG, align 4
  %51 = load %struct.smc_llc_msg_confirm_rkey*, %struct.smc_llc_msg_confirm_rkey** %4, align 8
  %52 = getelementptr inbounds %struct.smc_llc_msg_confirm_rkey, %struct.smc_llc_msg_confirm_rkey* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %50
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %49, %25
  %57 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %58 = load %struct.smc_llc_msg_confirm_rkey*, %struct.smc_llc_msg_confirm_rkey** %4, align 8
  %59 = call i32 @smc_llc_send_message(%struct.smc_link* %57, %struct.smc_llc_msg_confirm_rkey* %58, i32 16)
  br label %60

60:                                               ; preds = %56, %13
  ret void
}

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @smc_rtoken_add(i32, i32, i32) #1

declare dso_local i32 @smc_get_lgr(%struct.smc_link*) #1

declare dso_local i32 @smc_llc_send_message(%struct.smc_link*, %struct.smc_llc_msg_confirm_rkey*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
