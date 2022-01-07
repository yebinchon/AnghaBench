; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_do_confirm_rkey.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_do_confirm_rkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { i64, i32 }
%struct.smc_buf_desc = type { i32 }

@SMC_LLC_WAIT_TIME = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_llc_do_confirm_rkey(%struct.smc_link* %0, %struct.smc_buf_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smc_link*, align 8
  %5 = alloca %struct.smc_buf_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.smc_link* %0, %struct.smc_link** %4, align 8
  store %struct.smc_buf_desc* %1, %struct.smc_buf_desc** %5, align 8
  %7 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %8 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %7, i32 0, i32 1
  %9 = call i32 @reinit_completion(i32* %8)
  %10 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %11 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %5, align 8
  %12 = call i32 @smc_llc_send_confirm_rkey(%struct.smc_link* %10, %struct.smc_buf_desc* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %19 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %18, i32 0, i32 1
  %20 = load i32, i32* @SMC_LLC_WAIT_TIME, align 4
  %21 = call i32 @wait_for_completion_interruptible_timeout(i32* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %26 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %17
  %30 = load i32, i32* @EFAULT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %29, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @smc_llc_send_confirm_rkey(%struct.smc_link*, %struct.smc_buf_desc*) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
