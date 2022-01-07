; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_hpi6000_update_control_cache.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_hpi6000_update_control_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { %struct.hpi_hw_obj* }
%struct.hpi_hw_obj = type { i32*, %struct.dsp_obj* }
%struct.dsp_obj = type { i32, i32 }
%struct.hpi_message = type { i32 }

@TIMEOUT = common dso_local global i32 0, align 4
@control_cache_is_dirty = common dso_local global i32 0, align 4
@H6READ = common dso_local global i32 0, align 4
@HPI6000_ERROR_CONTROL_CACHE_PARAMS = common dso_local global i64 0, align 8
@control_cache_address = common dso_local global i32 0, align 4
@control_cache_size_in_bytes = common dso_local global i32 0, align 4
@HPI6000_ERROR_CONTROL_CACHE_ADDRLEN = common dso_local global i64 0, align 8
@HPI6000_ERROR_CONTROL_CACHE_READ = common dso_local global i64 0, align 8
@host_cmd = common dso_local global i32 0, align 4
@H6WRITE = common dso_local global i32 0, align 4
@HPI6000_ERROR_CONTROL_CACHE_FLUSH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.hpi_adapter_obj*, %struct.hpi_message*)* @hpi6000_update_control_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @hpi6000_update_control_cache(%struct.hpi_adapter_obj* %0, %struct.hpi_message* %1) #0 {
  %3 = alloca %struct.hpi_adapter_obj*, align 8
  %4 = alloca %struct.hpi_message*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hpi_hw_obj*, align 8
  %7 = alloca %struct.dsp_obj*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %3, align 8
  store %struct.hpi_message* %1, %struct.hpi_message** %4, align 8
  store i64 0, i64* %5, align 8
  %13 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %3, align 8
  %14 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %13, i32 0, i32 0
  %15 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %14, align 8
  store %struct.hpi_hw_obj* %15, %struct.hpi_hw_obj** %6, align 8
  %16 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %6, align 8
  %17 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %16, i32 0, i32 1
  %18 = load %struct.dsp_obj*, %struct.dsp_obj** %17, align 8
  %19 = getelementptr inbounds %struct.dsp_obj, %struct.dsp_obj* %18, i64 0
  store %struct.dsp_obj* %19, %struct.dsp_obj** %7, align 8
  %20 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %3, align 8
  %21 = call i32 @hpios_dsplock_lock(%struct.hpi_adapter_obj* %20)
  %22 = load i32, i32* @TIMEOUT, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %37, %2
  %24 = load %struct.dsp_obj*, %struct.dsp_obj** %7, align 8
  %25 = load i32, i32* @control_cache_is_dirty, align 4
  %26 = call i32 @HPI_HIF_ADDR(i32 %25)
  %27 = call i32 @hpi_read_word(%struct.dsp_obj* %24, i32 %26)
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %23
  %29 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %3, align 8
  %30 = load i32, i32* @H6READ, align 4
  %31 = call i64 @hpi6000_check_PCI2040_error_flag(%struct.hpi_adapter_obj* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi i1 [ false, %28 ], [ %36, %33 ]
  br i1 %38, label %23, label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* @HPI6000_ERROR_CONTROL_CACHE_PARAMS, align 8
  store i64 %43, i64* %10, align 8
  br label %136

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %135

47:                                               ; preds = %44
  %48 = load i32, i32* @TIMEOUT, align 4
  store i32 %48, i32* %8, align 4
  %49 = load %struct.dsp_obj*, %struct.dsp_obj** %7, align 8
  %50 = getelementptr inbounds %struct.dsp_obj, %struct.dsp_obj* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %86

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %72, %53
  %55 = load %struct.dsp_obj*, %struct.dsp_obj** %7, align 8
  %56 = load i32, i32* @control_cache_address, align 4
  %57 = call i32 @HPI_HIF_ADDR(i32 %56)
  %58 = call i32 @hpi_read_word(%struct.dsp_obj* %55, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load %struct.dsp_obj*, %struct.dsp_obj** %7, align 8
  %60 = load i32, i32* @control_cache_size_in_bytes, align 4
  %61 = call i32 @HPI_HIF_ADDR(i32 %60)
  %62 = call i32 @hpi_read_word(%struct.dsp_obj* %59, i32 %61)
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %54
  %64 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %3, align 8
  %65 = load i32, i32* @H6READ, align 4
  %66 = call i64 @hpi6000_check_PCI2040_error_flag(%struct.hpi_adapter_obj* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br label %72

72:                                               ; preds = %68, %63
  %73 = phi i1 [ false, %63 ], [ %71, %68 ]
  br i1 %73, label %54, label %74

74:                                               ; preds = %72
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = load i64, i64* @HPI6000_ERROR_CONTROL_CACHE_ADDRLEN, align 8
  store i64 %78, i64* %10, align 8
  br label %136

79:                                               ; preds = %74
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.dsp_obj*, %struct.dsp_obj** %7, align 8
  %82 = getelementptr inbounds %struct.dsp_obj, %struct.dsp_obj* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.dsp_obj*, %struct.dsp_obj** %7, align 8
  %85 = getelementptr inbounds %struct.dsp_obj, %struct.dsp_obj* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %93

86:                                               ; preds = %47
  %87 = load %struct.dsp_obj*, %struct.dsp_obj** %7, align 8
  %88 = getelementptr inbounds %struct.dsp_obj, %struct.dsp_obj* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %11, align 4
  %90 = load %struct.dsp_obj*, %struct.dsp_obj** %7, align 8
  %91 = getelementptr inbounds %struct.dsp_obj, %struct.dsp_obj* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %86, %79
  %94 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %3, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %6, align 8
  %97 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = udiv i64 %101, 4
  %103 = trunc i64 %102 to i32
  %104 = call i64 @hpi6000_dsp_block_read32(%struct.hpi_adapter_obj* %94, i64 0, i32 %95, i32* %99, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %93
  %107 = load i64, i64* @HPI6000_ERROR_CONTROL_CACHE_READ, align 8
  store i64 %107, i64* %10, align 8
  br label %136

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %127, %108
  %110 = load %struct.dsp_obj*, %struct.dsp_obj** %7, align 8
  %111 = load i32, i32* @control_cache_is_dirty, align 4
  %112 = call i32 @HPI_HIF_ADDR(i32 %111)
  %113 = call i32 @hpi_write_word(%struct.dsp_obj* %110, i32 %112, i32 0)
  %114 = load %struct.dsp_obj*, %struct.dsp_obj** %7, align 8
  %115 = load i32, i32* @host_cmd, align 4
  %116 = call i32 @HPI_HIF_ADDR(i32 %115)
  %117 = call i32 @hpi_set_address(%struct.dsp_obj* %114, i32 %116)
  br label %118

118:                                              ; preds = %109
  %119 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %3, align 8
  %120 = load i32, i32* @H6WRITE, align 4
  %121 = call i64 @hpi6000_check_PCI2040_error_flag(%struct.hpi_adapter_obj* %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br label %127

127:                                              ; preds = %123, %118
  %128 = phi i1 [ false, %118 ], [ %126, %123 ]
  br i1 %128, label %109, label %129

129:                                              ; preds = %127
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %129
  %133 = load i64, i64* @HPI6000_ERROR_CONTROL_CACHE_FLUSH, align 8
  store i64 %133, i64* %10, align 8
  br label %136

134:                                              ; preds = %129
  br label %135

135:                                              ; preds = %134, %44
  store i64 0, i64* %10, align 8
  br label %136

136:                                              ; preds = %135, %132, %106, %77, %42
  %137 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %3, align 8
  %138 = call i32 @hpios_dsplock_unlock(%struct.hpi_adapter_obj* %137)
  %139 = load i64, i64* %10, align 8
  %140 = trunc i64 %139 to i16
  ret i16 %140
}

declare dso_local i32 @hpios_dsplock_lock(%struct.hpi_adapter_obj*) #1

declare dso_local i32 @hpi_read_word(%struct.dsp_obj*, i32) #1

declare dso_local i32 @HPI_HIF_ADDR(i32) #1

declare dso_local i64 @hpi6000_check_PCI2040_error_flag(%struct.hpi_adapter_obj*, i32) #1

declare dso_local i64 @hpi6000_dsp_block_read32(%struct.hpi_adapter_obj*, i64, i32, i32*, i32) #1

declare dso_local i32 @hpi_write_word(%struct.dsp_obj*, i32, i32) #1

declare dso_local i32 @hpi_set_address(%struct.dsp_obj*, i32) #1

declare dso_local i32 @hpios_dsplock_unlock(%struct.hpi_adapter_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
