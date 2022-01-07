; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_frmr.c_rds_ib_free_frmr.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_frmr.c_rds_ib_free_frmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_mr = type { i32, i32, %struct.rds_ib_mr_pool* }
%struct.rds_ib_mr_pool = type { i32, i32, i32, i32, i32, i32, i32 }

@rds_ib_mr_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_ib_mr*, i32)* @rds_ib_free_frmr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_ib_free_frmr(%struct.rds_ib_mr* %0, i32 %1) #0 {
  %3 = alloca %struct.rds_ib_mr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rds_ib_mr_pool*, align 8
  store %struct.rds_ib_mr* %0, %struct.rds_ib_mr** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %3, align 8
  %7 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %6, i32 0, i32 2
  %8 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %7, align 8
  store %struct.rds_ib_mr_pool* %8, %struct.rds_ib_mr_pool** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %3, align 8
  %13 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %12, i32 0, i32 1
  %14 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %5, align 8
  %15 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %14, i32 0, i32 6
  %16 = call i32 @llist_add(i32* %13, i32* %15)
  br label %23

17:                                               ; preds = %2
  %18 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %3, align 8
  %19 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %18, i32 0, i32 1
  %20 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %5, align 8
  %21 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %20, i32 0, i32 5
  %22 = call i32 @llist_add(i32* %19, i32* %21)
  br label %23

23:                                               ; preds = %17, %11
  %24 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %3, align 8
  %25 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %5, align 8
  %28 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %27, i32 0, i32 4
  %29 = call i32 @atomic_add(i32 %26, i32* %28)
  %30 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %5, align 8
  %31 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %30, i32 0, i32 3
  %32 = call i32 @atomic_inc(i32* %31)
  %33 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %5, align 8
  %34 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %33, i32 0, i32 4
  %35 = call i32 @atomic_read(i32* %34)
  %36 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %5, align 8
  %37 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %49, label %40

40:                                               ; preds = %23
  %41 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %5, align 8
  %42 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %41, i32 0, i32 3
  %43 = call i32 @atomic_read(i32* %42)
  %44 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %5, align 8
  %45 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, 5
  %48 = icmp sge i32 %43, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %40, %23
  %50 = load i32, i32* @rds_ib_mr_wq, align 4
  %51 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %5, align 8
  %52 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %51, i32 0, i32 2
  %53 = call i32 @queue_delayed_work(i32 %50, i32* %52, i32 10)
  br label %54

54:                                               ; preds = %49, %40
  ret void
}

declare dso_local i32 @llist_add(i32*, i32*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
