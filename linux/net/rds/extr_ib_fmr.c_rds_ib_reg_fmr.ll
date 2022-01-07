; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_fmr.c_rds_ib_reg_fmr.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_fmr.c_rds_ib_reg_fmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_mr = type { %struct.TYPE_4__, %struct.rds_ib_device* }
%struct.TYPE_4__ = type { %struct.rds_ib_fmr }
%struct.rds_ib_fmr = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rds_ib_device = type { i32 }
%struct.scatterlist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rds_ib_mr* @rds_ib_reg_fmr(%struct.rds_ib_device* %0, %struct.scatterlist* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.rds_ib_mr*, align 8
  %6 = alloca %struct.rds_ib_device*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rds_ib_mr*, align 8
  %11 = alloca %struct.rds_ib_fmr*, align 8
  %12 = alloca i32, align 4
  store %struct.rds_ib_device* %0, %struct.rds_ib_device** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.rds_ib_mr* null, %struct.rds_ib_mr** %10, align 8
  %13 = load %struct.rds_ib_device*, %struct.rds_ib_device** %6, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call %struct.rds_ib_mr* @rds_ib_alloc_fmr(%struct.rds_ib_device* %13, i64 %14)
  store %struct.rds_ib_mr* %15, %struct.rds_ib_mr** %10, align 8
  %16 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %10, align 8
  %17 = call i64 @IS_ERR(%struct.rds_ib_mr* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %10, align 8
  store %struct.rds_ib_mr* %20, %struct.rds_ib_mr** %5, align 8
  br label %47

21:                                               ; preds = %4
  %22 = load %struct.rds_ib_device*, %struct.rds_ib_device** %6, align 8
  %23 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %10, align 8
  %24 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %23, i32 0, i32 1
  store %struct.rds_ib_device* %22, %struct.rds_ib_device** %24, align 8
  %25 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %10, align 8
  %26 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.rds_ib_fmr* %27, %struct.rds_ib_fmr** %11, align 8
  %28 = load %struct.rds_ib_device*, %struct.rds_ib_device** %6, align 8
  %29 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %10, align 8
  %30 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @rds_ib_map_fmr(%struct.rds_ib_device* %28, %struct.rds_ib_mr* %29, %struct.scatterlist* %30, i64 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %21
  %36 = load %struct.rds_ib_fmr*, %struct.rds_ib_fmr** %11, align 8
  %37 = getelementptr inbounds %struct.rds_ib_fmr, %struct.rds_ib_fmr* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  br label %45

42:                                               ; preds = %21
  %43 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %10, align 8
  %44 = call i32 @rds_ib_free_mr(%struct.rds_ib_mr* %43, i32 0)
  br label %45

45:                                               ; preds = %42, %35
  %46 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %10, align 8
  store %struct.rds_ib_mr* %46, %struct.rds_ib_mr** %5, align 8
  br label %47

47:                                               ; preds = %45, %19
  %48 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %5, align 8
  ret %struct.rds_ib_mr* %48
}

declare dso_local %struct.rds_ib_mr* @rds_ib_alloc_fmr(%struct.rds_ib_device*, i64) #1

declare dso_local i64 @IS_ERR(%struct.rds_ib_mr*) #1

declare dso_local i32 @rds_ib_map_fmr(%struct.rds_ib_device*, %struct.rds_ib_mr*, %struct.scatterlist*, i64) #1

declare dso_local i32 @rds_ib_free_mr(%struct.rds_ib_mr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
