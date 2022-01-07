; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_reg_rmb.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_reg_rmb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { i32 }
%struct.smc_buf_desc = type { i32, i32, i32* }

@SMC_SINGLE_LINK = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_link*, %struct.smc_buf_desc*, i32)* @smc_reg_rmb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_reg_rmb(%struct.smc_link* %0, %struct.smc_buf_desc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smc_link*, align 8
  %6 = alloca %struct.smc_buf_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.smc_link* %0, %struct.smc_link** %5, align 8
  store %struct.smc_buf_desc* %1, %struct.smc_buf_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %6, align 8
  %9 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %3
  %13 = load %struct.smc_link*, %struct.smc_link** %5, align 8
  %14 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %6, align 8
  %15 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @smc_wr_reg_send(%struct.smc_link* %13, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %6, align 8
  %24 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @EFAULT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %45

27:                                               ; preds = %12
  %28 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %6, align 8
  %29 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  br label %30

30:                                               ; preds = %27, %3
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %45

34:                                               ; preds = %30
  %35 = load %struct.smc_link*, %struct.smc_link** %5, align 8
  %36 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %6, align 8
  %37 = call i64 @smc_llc_do_confirm_rkey(%struct.smc_link* %35, %struct.smc_buf_desc* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %6, align 8
  %41 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %45

44:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %39, %33, %22
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @smc_wr_reg_send(%struct.smc_link*, i32) #1

declare dso_local i64 @smc_llc_do_confirm_rkey(%struct.smc_link*, %struct.smc_buf_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
