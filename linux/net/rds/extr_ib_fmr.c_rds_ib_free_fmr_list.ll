; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_fmr.c_rds_ib_free_fmr_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_fmr.c_rds_ib_free_fmr_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_mr = type { i64, i32, %struct.rds_ib_mr_pool* }
%struct.rds_ib_mr_pool = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_ib_free_fmr_list(%struct.rds_ib_mr* %0) #0 {
  %2 = alloca %struct.rds_ib_mr*, align 8
  %3 = alloca %struct.rds_ib_mr_pool*, align 8
  store %struct.rds_ib_mr* %0, %struct.rds_ib_mr** %2, align 8
  %4 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %5 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %4, i32 0, i32 2
  %6 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %5, align 8
  store %struct.rds_ib_mr_pool* %6, %struct.rds_ib_mr_pool** %3, align 8
  %7 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %8 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %3, align 8
  %11 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %9, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %17 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %16, i32 0, i32 1
  %18 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %3, align 8
  %19 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %18, i32 0, i32 1
  %20 = call i32 @llist_add(i32* %17, i32* %19)
  br label %27

21:                                               ; preds = %1
  %22 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %23 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %22, i32 0, i32 1
  %24 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %3, align 8
  %25 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %24, i32 0, i32 0
  %26 = call i32 @llist_add(i32* %23, i32* %25)
  br label %27

27:                                               ; preds = %21, %15
  ret void
}

declare dso_local i32 @llist_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
