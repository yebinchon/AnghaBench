; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_create_hw_devs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_create_hw_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.hw*, i32*)* }
%struct.hw = type { i32 (%struct.hw*, %struct.card_conf*)*, %struct.TYPE_3__* }
%struct.card_conf = type opaque
%struct.TYPE_3__ = type { i32 }
%struct.ct_atc = type { %struct.TYPE_3__*, i32*, %struct.hw*, i32, i32, i32, i32, i32 }
%struct.card_conf.0 = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to create hw obj!!!\0A\00", align 1
@NUM_RSCTYP = common dso_local global i32 0, align 4
@rsc_mgr_funcs = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to create rsc_mgr %d!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_atc*)* @atc_create_hw_devs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atc_create_hw_devs(%struct.ct_atc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ct_atc*, align 8
  %4 = alloca %struct.hw*, align 8
  %5 = alloca %struct.card_conf.0, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ct_atc* %0, %struct.ct_atc** %3, align 8
  %8 = bitcast %struct.card_conf.0* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 16, i1 false)
  %9 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %10 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %13 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %16 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @create_hw_obj(i32 %11, i32 %14, i32 %17, %struct.hw** %4)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %23 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %106

29:                                               ; preds = %1
  %30 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %31 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load %struct.hw*, %struct.hw** %4, align 8
  %34 = getelementptr inbounds %struct.hw, %struct.hw* %33, i32 0, i32 1
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %34, align 8
  %35 = load %struct.hw*, %struct.hw** %4, align 8
  %36 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %37 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %36, i32 0, i32 2
  store %struct.hw* %35, %struct.hw** %37, align 8
  %38 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %39 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.card_conf.0, %struct.card_conf.0* %5, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %43 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.card_conf.0, %struct.card_conf.0* %5, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %47 = call i32 @atc_get_ptp_phys(%struct.ct_atc* %46, i32 0)
  %48 = getelementptr inbounds %struct.card_conf.0, %struct.card_conf.0* %5, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.hw*, %struct.hw** %4, align 8
  %50 = getelementptr inbounds %struct.hw, %struct.hw* %49, i32 0, i32 0
  %51 = load i32 (%struct.hw*, %struct.card_conf*)*, i32 (%struct.hw*, %struct.card_conf*)** %50, align 8
  %52 = load %struct.hw*, %struct.hw** %4, align 8
  %53 = bitcast %struct.card_conf.0* %5 to %struct.card_conf*
  %54 = call i32 %51(%struct.hw* %52, %struct.card_conf* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %29
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %106

59:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %102, %59
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @NUM_RSCTYP, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %105

64:                                               ; preds = %60
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rsc_mgr_funcs, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32 (%struct.hw*, i32*)*, i32 (%struct.hw*, i32*)** %69, align 8
  %71 = icmp ne i32 (%struct.hw*, i32*)* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %64
  br label %102

73:                                               ; preds = %64
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rsc_mgr_funcs, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32 (%struct.hw*, i32*)*, i32 (%struct.hw*, i32*)** %78, align 8
  %80 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %81 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %80, i32 0, i32 2
  %82 = load %struct.hw*, %struct.hw** %81, align 8
  %83 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %84 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = call i32 %79(%struct.hw* %82, i32* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %73
  %93 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %94 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %93, i32 0, i32 0
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 (i32, i8*, ...) @dev_err(i32 %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %106

101:                                              ; preds = %73
  br label %102

102:                                              ; preds = %101, %72
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %60

105:                                              ; preds = %60
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %92, %57, %21
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @create_hw_obj(i32, i32, i32, %struct.hw**) #2

declare dso_local i32 @dev_err(i32, i8*, ...) #2

declare dso_local i32 @atc_get_ptp_phys(%struct.ct_atc*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
