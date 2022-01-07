; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_frmr.c_rds_ib_reg_frmr.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_frmr.c_rds_ib_reg_frmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_mr = type { i32, %struct.rds_ib_device*, %struct.rds_ib_connection*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rds_ib_frmr }
%struct.rds_ib_frmr = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rds_ib_device = type { i32 }
%struct.rds_ib_connection = type { i32 }
%struct.scatterlist = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@FRMR_IS_FREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rds_ib_mr* @rds_ib_reg_frmr(%struct.rds_ib_device* %0, %struct.rds_ib_connection* %1, %struct.scatterlist* %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.rds_ib_mr*, align 8
  %7 = alloca %struct.rds_ib_device*, align 8
  %8 = alloca %struct.rds_ib_connection*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.rds_ib_mr*, align 8
  %13 = alloca %struct.rds_ib_frmr*, align 8
  %14 = alloca i32, align 4
  store %struct.rds_ib_device* %0, %struct.rds_ib_device** %7, align 8
  store %struct.rds_ib_connection* %1, %struct.rds_ib_connection** %8, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.rds_ib_mr* null, %struct.rds_ib_mr** %12, align 8
  %15 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %8, align 8
  %16 = icmp ne %struct.rds_ib_connection* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.rds_ib_mr* @ERR_PTR(i32 %19)
  store %struct.rds_ib_mr* %20, %struct.rds_ib_mr** %6, align 8
  br label %78

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %41, %21
  %23 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %12, align 8
  %24 = icmp ne %struct.rds_ib_mr* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %12, align 8
  %27 = call i32 @rds_ib_free_frmr(%struct.rds_ib_mr* %26, i32 1)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.rds_ib_device*, %struct.rds_ib_device** %7, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call %struct.rds_ib_mr* @rds_ib_alloc_frmr(%struct.rds_ib_device* %29, i64 %30)
  store %struct.rds_ib_mr* %31, %struct.rds_ib_mr** %12, align 8
  %32 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %12, align 8
  %33 = call i64 @IS_ERR(%struct.rds_ib_mr* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %12, align 8
  store %struct.rds_ib_mr* %36, %struct.rds_ib_mr** %6, align 8
  br label %78

37:                                               ; preds = %28
  %38 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %12, align 8
  %39 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store %struct.rds_ib_frmr* %40, %struct.rds_ib_frmr** %13, align 8
  br label %41

41:                                               ; preds = %37
  %42 = load %struct.rds_ib_frmr*, %struct.rds_ib_frmr** %13, align 8
  %43 = getelementptr inbounds %struct.rds_ib_frmr, %struct.rds_ib_frmr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @FRMR_IS_FREE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %22, label %47

47:                                               ; preds = %41
  %48 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %8, align 8
  %49 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %12, align 8
  %50 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %49, i32 0, i32 2
  store %struct.rds_ib_connection* %48, %struct.rds_ib_connection** %50, align 8
  %51 = load %struct.rds_ib_device*, %struct.rds_ib_device** %7, align 8
  %52 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %12, align 8
  %53 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %52, i32 0, i32 1
  store %struct.rds_ib_device* %51, %struct.rds_ib_device** %53, align 8
  %54 = load %struct.rds_ib_device*, %struct.rds_ib_device** %7, align 8
  %55 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %12, align 8
  %56 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %12, align 8
  %59 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @rds_ib_map_frmr(%struct.rds_ib_device* %54, i32 %57, %struct.rds_ib_mr* %58, %struct.scatterlist* %59, i64 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %47
  %65 = load %struct.rds_ib_frmr*, %struct.rds_ib_frmr** %13, align 8
  %66 = getelementptr inbounds %struct.rds_ib_frmr, %struct.rds_ib_frmr* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %11, align 8
  store i32 %69, i32* %70, align 4
  br label %76

71:                                               ; preds = %47
  %72 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %12, align 8
  %73 = call i32 @rds_ib_free_frmr(%struct.rds_ib_mr* %72, i32 0)
  %74 = load i32, i32* %14, align 4
  %75 = call %struct.rds_ib_mr* @ERR_PTR(i32 %74)
  store %struct.rds_ib_mr* %75, %struct.rds_ib_mr** %12, align 8
  br label %76

76:                                               ; preds = %71, %64
  %77 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %12, align 8
  store %struct.rds_ib_mr* %77, %struct.rds_ib_mr** %6, align 8
  br label %78

78:                                               ; preds = %76, %35, %17
  %79 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %6, align 8
  ret %struct.rds_ib_mr* %79
}

declare dso_local %struct.rds_ib_mr* @ERR_PTR(i32) #1

declare dso_local i32 @rds_ib_free_frmr(%struct.rds_ib_mr*, i32) #1

declare dso_local %struct.rds_ib_mr* @rds_ib_alloc_frmr(%struct.rds_ib_device*, i64) #1

declare dso_local i64 @IS_ERR(%struct.rds_ib_mr*) #1

declare dso_local i32 @rds_ib_map_frmr(%struct.rds_ib_device*, i32, %struct.rds_ib_mr*, %struct.scatterlist*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
