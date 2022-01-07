; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_frmr.c_rds_ib_free_frmr_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_frmr.c_rds_ib_free_frmr_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_mr = type { i32, %struct.TYPE_2__, %struct.rds_ib_mr_pool* }
%struct.TYPE_2__ = type { %struct.rds_ib_frmr }
%struct.rds_ib_frmr = type { i64 }
%struct.rds_ib_mr_pool = type { i32, i32 }

@FRMR_IS_STALE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_ib_free_frmr_list(%struct.rds_ib_mr* %0) #0 {
  %2 = alloca %struct.rds_ib_mr*, align 8
  %3 = alloca %struct.rds_ib_mr_pool*, align 8
  %4 = alloca %struct.rds_ib_frmr*, align 8
  store %struct.rds_ib_mr* %0, %struct.rds_ib_mr** %2, align 8
  %5 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %6 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %5, i32 0, i32 2
  %7 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  store %struct.rds_ib_mr_pool* %7, %struct.rds_ib_mr_pool** %3, align 8
  %8 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %9 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.rds_ib_frmr* %10, %struct.rds_ib_frmr** %4, align 8
  %11 = load %struct.rds_ib_frmr*, %struct.rds_ib_frmr** %4, align 8
  %12 = getelementptr inbounds %struct.rds_ib_frmr, %struct.rds_ib_frmr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FRMR_IS_STALE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %18 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %17, i32 0, i32 0
  %19 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %3, align 8
  %20 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %19, i32 0, i32 1
  %21 = call i32 @llist_add(i32* %18, i32* %20)
  br label %28

22:                                               ; preds = %1
  %23 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %24 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %23, i32 0, i32 0
  %25 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %3, align 8
  %26 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %25, i32 0, i32 0
  %27 = call i32 @llist_add(i32* %24, i32* %26)
  br label %28

28:                                               ; preds = %22, %16
  ret void
}

declare dso_local i32 @llist_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
