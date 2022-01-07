; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_do_delete_rkey.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_do_delete_rkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { i32, i64, i32 }
%struct.smc_buf_desc = type { i32 }

@SMC_LLC_WAIT_TIME = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_llc_do_delete_rkey(%struct.smc_link* %0, %struct.smc_buf_desc* %1) #0 {
  %3 = alloca %struct.smc_link*, align 8
  %4 = alloca %struct.smc_buf_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.smc_link* %0, %struct.smc_link** %3, align 8
  store %struct.smc_buf_desc* %1, %struct.smc_buf_desc** %4, align 8
  %6 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %7 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %10 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %9, i32 0, i32 2
  %11 = call i32 @reinit_completion(i32* %10)
  %12 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %13 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %4, align 8
  %14 = call i32 @smc_llc_send_delete_rkey(%struct.smc_link* %12, %struct.smc_buf_desc* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %35

18:                                               ; preds = %2
  %19 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %20 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %19, i32 0, i32 2
  %21 = load i32, i32* @SMC_LLC_WAIT_TIME, align 4
  %22 = call i32 @wait_for_completion_interruptible_timeout(i32* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %27 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %18
  %31 = load i32, i32* @EFAULT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %34

33:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %30
  br label %35

35:                                               ; preds = %34, %17
  %36 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %37 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @smc_llc_send_delete_rkey(%struct.smc_link*, %struct.smc_buf_desc*) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
