; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_ib.c_smc_ib_ready_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_ib.c_smc_ib_ready_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.smc_link_group = type { i64 }

@IB_CQ_SOLICITED_MASK = common dso_local global i32 0, align 4
@SMC_SERV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_ib_ready_link(%struct.smc_link* %0) #0 {
  %2 = alloca %struct.smc_link*, align 8
  %3 = alloca %struct.smc_link_group*, align 8
  %4 = alloca i32, align 4
  store %struct.smc_link* %0, %struct.smc_link** %2, align 8
  %5 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %6 = call %struct.smc_link_group* @smc_get_lgr(%struct.smc_link* %5)
  store %struct.smc_link_group* %6, %struct.smc_link_group** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %8 = call i32 @smc_ib_modify_qp_init(%struct.smc_link* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %55

12:                                               ; preds = %1
  %13 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %14 = call i32 @smc_ib_modify_qp_rtr(%struct.smc_link* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %55

18:                                               ; preds = %12
  %19 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %20 = call i32 @smc_wr_remember_qp_attr(%struct.smc_link* %19)
  %21 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %22 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IB_CQ_SOLICITED_MASK, align 4
  %27 = call i32 @ib_req_notify_cq(i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %55

31:                                               ; preds = %18
  %32 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %33 = call i32 @smc_wr_rx_post_init(%struct.smc_link* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %55

37:                                               ; preds = %31
  %38 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %39 = call i32 @smc_wr_remember_qp_attr(%struct.smc_link* %38)
  %40 = load %struct.smc_link_group*, %struct.smc_link_group** %3, align 8
  %41 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SMC_SERV, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %47 = call i32 @smc_ib_modify_qp_rts(%struct.smc_link* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %55

51:                                               ; preds = %45
  %52 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %53 = call i32 @smc_wr_remember_qp_attr(%struct.smc_link* %52)
  br label %54

54:                                               ; preds = %51, %37
  br label %55

55:                                               ; preds = %54, %50, %36, %30, %17, %11
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.smc_link_group* @smc_get_lgr(%struct.smc_link*) #1

declare dso_local i32 @smc_ib_modify_qp_init(%struct.smc_link*) #1

declare dso_local i32 @smc_ib_modify_qp_rtr(%struct.smc_link*) #1

declare dso_local i32 @smc_wr_remember_qp_attr(%struct.smc_link*) #1

declare dso_local i32 @ib_req_notify_cq(i32, i32) #1

declare dso_local i32 @smc_wr_rx_post_init(%struct.smc_link*) #1

declare dso_local i32 @smc_ib_modify_qp_rts(%struct.smc_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
