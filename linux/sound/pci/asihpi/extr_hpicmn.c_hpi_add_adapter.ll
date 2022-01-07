; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpicmn.c_hpi_add_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpicmn.c_hpi_add_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.hpi_adapter_obj* }
%struct.hpi_adapter_obj = type { i32, i64 }

@adapters = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@HPI_MAX_ADAPTERS = common dso_local global i32 0, align 4
@HPI_ERROR_BAD_ADAPTER_NUMBER = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ASI%X duplicate index %d moved to %d\0A\00", align 1
@HPI_ERROR_DUPLICATE_ADAPTER_NUMBER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpi_add_adapter(%struct.hpi_adapter_obj* %0) #0 {
  %2 = alloca %struct.hpi_adapter_obj*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = call i32 @hpios_alistlock_lock(%struct.TYPE_4__* @adapters)
  %6 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %2, align 8
  %7 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @HPI_MAX_ADAPTERS, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @HPI_ERROR_BAD_ADAPTER_NUMBER, align 4
  store i32 %12, i32* %3, align 4
  br label %80

13:                                               ; preds = %1
  %14 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @adapters, i32 0, i32 1), align 8
  %15 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %2, align 8
  %16 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %14, i64 %18
  %20 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %13
  %24 = load i32, i32* @HPI_MAX_ADAPTERS, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %52, %23
  %27 = load i32, i32* %4, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @adapters, i32 0, i32 1), align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %30, i64 %32
  %34 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @WARNING, align 4
  %39 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %2, align 8
  %40 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %2, align 8
  %43 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @HPI_DEBUG_LOG(i32 %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %45, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %2, align 8
  %50 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %55

51:                                               ; preds = %29
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %4, align 4
  br label %26

55:                                               ; preds = %37, %26
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @HPI_ERROR_DUPLICATE_ADAPTER_NUMBER, align 4
  store i32 %59, i32* %3, align 4
  br label %80

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %13
  %62 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @adapters, i32 0, i32 1), align 8
  %63 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %2, align 8
  %64 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %62, i64 %66
  %68 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %2, align 8
  %69 = bitcast %struct.hpi_adapter_obj* %67 to i8*
  %70 = bitcast %struct.hpi_adapter_obj* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 16, i1 false)
  %71 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @adapters, i32 0, i32 1), align 8
  %72 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %2, align 8
  %73 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %71, i64 %75
  %77 = call i32 @hpios_dsplock_init(%struct.hpi_adapter_obj* %76)
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @adapters, i32 0, i32 0), align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @adapters, i32 0, i32 0), align 8
  br label %80

80:                                               ; preds = %61, %58, %11
  %81 = call i32 @hpios_alistlock_unlock(%struct.TYPE_4__* @adapters)
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @hpios_alistlock_lock(%struct.TYPE_4__*) #1

declare dso_local i32 @HPI_DEBUG_LOG(i32, i8*, i64, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hpios_dsplock_init(%struct.hpi_adapter_obj*) #1

declare dso_local i32 @hpios_alistlock_unlock(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
