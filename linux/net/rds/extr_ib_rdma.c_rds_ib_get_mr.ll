; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_rdma.c_rds_ib_get_mr.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_rdma.c_rds_ib_get_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.rds_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.rds_connection = type { %struct.rds_ib_connection* }
%struct.rds_ib_connection = type { i32 }
%struct.rds_ib_device = type { i64, i32, i32 }
%struct.rds_ib_mr = type opaque

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"RDS/IB: rds_ib_get_mr failed (errno=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rds_ib_get_mr(%struct.scatterlist* %0, i64 %1, %struct.rds_sock* %2, i32* %3, %struct.rds_connection* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rds_sock*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rds_connection*, align 8
  %12 = alloca %struct.rds_ib_device*, align 8
  %13 = alloca %struct.rds_ib_mr*, align 8
  %14 = alloca %struct.rds_ib_connection*, align 8
  %15 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.rds_sock* %2, %struct.rds_sock** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.rds_connection* %4, %struct.rds_connection** %11, align 8
  store %struct.rds_ib_mr* null, %struct.rds_ib_mr** %13, align 8
  store %struct.rds_ib_connection* null, %struct.rds_ib_connection** %14, align 8
  %16 = load %struct.rds_sock*, %struct.rds_sock** %9, align 8
  %17 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.rds_ib_device* @rds_ib_get_device(i32 %21)
  store %struct.rds_ib_device* %22, %struct.rds_ib_device** %12, align 8
  %23 = load %struct.rds_ib_device*, %struct.rds_ib_device** %12, align 8
  %24 = icmp ne %struct.rds_ib_device* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %15, align 4
  br label %83

28:                                               ; preds = %5
  %29 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %30 = icmp ne %struct.rds_connection* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %33 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %32, i32 0, i32 0
  %34 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %33, align 8
  store %struct.rds_ib_connection* %34, %struct.rds_ib_connection** %14, align 8
  br label %35

35:                                               ; preds = %31, %28
  %36 = load %struct.rds_ib_device*, %struct.rds_ib_device** %12, align 8
  %37 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.rds_ib_device*, %struct.rds_ib_device** %12, align 8
  %42 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40, %35
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %15, align 4
  br label %83

48:                                               ; preds = %40
  %49 = load %struct.rds_ib_device*, %struct.rds_ib_device** %12, align 8
  %50 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.rds_ib_device*, %struct.rds_ib_device** %12, align 8
  %55 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %14, align 8
  %56 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i8* @rds_ib_reg_frmr(%struct.rds_ib_device* %54, %struct.rds_ib_connection* %55, %struct.scatterlist* %56, i64 %57, i32* %58)
  %60 = bitcast i8* %59 to %struct.rds_ib_mr*
  store %struct.rds_ib_mr* %60, %struct.rds_ib_mr** %13, align 8
  br label %68

61:                                               ; preds = %48
  %62 = load %struct.rds_ib_device*, %struct.rds_ib_device** %12, align 8
  %63 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = call i8* @rds_ib_reg_fmr(%struct.rds_ib_device* %62, %struct.scatterlist* %63, i64 %64, i32* %65)
  %67 = bitcast i8* %66 to %struct.rds_ib_mr*
  store %struct.rds_ib_mr* %67, %struct.rds_ib_mr** %13, align 8
  br label %68

68:                                               ; preds = %61, %53
  %69 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %13, align 8
  %70 = bitcast %struct.rds_ib_mr* %69 to i8*
  %71 = call i64 @IS_ERR(i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %13, align 8
  %75 = bitcast %struct.rds_ib_mr* %74 to i8*
  %76 = call i32 @PTR_ERR(i8* %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %82

79:                                               ; preds = %68
  %80 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %13, align 8
  %81 = bitcast %struct.rds_ib_mr* %80 to i8*
  store i8* %81, i8** %6, align 8
  br label %92

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %45, %25
  %84 = load %struct.rds_ib_device*, %struct.rds_ib_device** %12, align 8
  %85 = icmp ne %struct.rds_ib_device* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load %struct.rds_ib_device*, %struct.rds_ib_device** %12, align 8
  %88 = call i32 @rds_ib_dev_put(%struct.rds_ib_device* %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* %15, align 4
  %91 = call i8* @ERR_PTR(i32 %90)
  store i8* %91, i8** %6, align 8
  br label %92

92:                                               ; preds = %89, %79
  %93 = load i8*, i8** %6, align 8
  ret i8* %93
}

declare dso_local %struct.rds_ib_device* @rds_ib_get_device(i32) #1

declare dso_local i8* @rds_ib_reg_frmr(%struct.rds_ib_device*, %struct.rds_ib_connection*, %struct.scatterlist*, i64, i32*) #1

declare dso_local i8* @rds_ib_reg_fmr(%struct.rds_ib_device*, %struct.scatterlist*, i64, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @rds_ib_dev_put(%struct.rds_ib_device*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
