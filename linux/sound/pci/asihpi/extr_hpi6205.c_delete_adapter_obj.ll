; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_delete_adapter_obj.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_delete_adapter_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { %struct.hpi_hw_obj* }
%struct.hpi_hw_obj = type { i64*, i32*, i64*, i32*, i32*, i32, i32, i32 }

@HPI_MAX_STREAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_adapter_obj*)* @delete_adapter_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_adapter_obj(%struct.hpi_adapter_obj* %0) #0 {
  %2 = alloca %struct.hpi_adapter_obj*, align 8
  %3 = alloca %struct.hpi_hw_obj*, align 8
  %4 = alloca i32, align 4
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %2, align 8
  %5 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %2, align 8
  %6 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %5, i32 0, i32 0
  %7 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %6, align 8
  store %struct.hpi_hw_obj* %7, %struct.hpi_hw_obj** %3, align 8
  %8 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %3, align 8
  %9 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %8, i32 0, i32 7
  %10 = call i64 @hpios_locked_mem_valid(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %3, align 8
  %14 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %13, i32 0, i32 7
  %15 = call i32 @hpios_locked_mem_free(i32* %14)
  %16 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %3, align 8
  %17 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @hpi_free_control_cache(i32 %18)
  br label %20

20:                                               ; preds = %12, %1
  %21 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %3, align 8
  %22 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %21, i32 0, i32 5
  %23 = call i64 @hpios_locked_mem_valid(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %3, align 8
  %27 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %26, i32 0, i32 5
  %28 = call i32 @hpios_locked_mem_free(i32* %27)
  %29 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %3, align 8
  %30 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %29, i32 0, i32 4
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %25, %20
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %60, %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @HPI_MAX_STREAMS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %32
  %37 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %3, align 8
  %38 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i64 @hpios_locked_mem_valid(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %36
  %46 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %3, align 8
  %47 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @hpios_locked_mem_free(i32* %51)
  %53 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %3, align 8
  %54 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %53, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %45, %36
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %32

63:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %92, %63
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @HPI_MAX_STREAMS, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %95

68:                                               ; preds = %64
  %69 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %3, align 8
  %70 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i64 @hpios_locked_mem_valid(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %68
  %78 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %3, align 8
  %79 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = call i32 @hpios_locked_mem_free(i32* %83)
  %85 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %3, align 8
  %86 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %77, %68
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %64

95:                                               ; preds = %64
  %96 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %3, align 8
  %97 = call i32 @kfree(%struct.hpi_hw_obj* %96)
  ret void
}

declare dso_local i64 @hpios_locked_mem_valid(i32*) #1

declare dso_local i32 @hpios_locked_mem_free(i32*) #1

declare dso_local i32 @hpi_free_control_cache(i32) #1

declare dso_local i32 @kfree(%struct.hpi_hw_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
