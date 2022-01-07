; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_outstream_host_buffer_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_outstream_host_buffer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { %struct.hpi_hw_obj* }
%struct.hpi_hw_obj = type { i32*, i64* }
%struct.hpi_message = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.hpi_response = type { i32 }

@HPI_BUFFER_CMD_EXTERNAL = common dso_local global i64 0, align 8
@HPI_BUFFER_CMD_INTERNAL_REVOKEADAPTER = common dso_local global i64 0, align 8
@HPI_BUFFER_CMD_INTERNAL_FREE = common dso_local global i64 0, align 8
@HPI_OBJ_OSTREAM = common dso_local global i32 0, align 4
@HPI_OSTREAM_HOSTBUFFER_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*)* @outstream_host_buffer_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @outstream_host_buffer_free(%struct.hpi_adapter_obj* %0, %struct.hpi_message* %1, %struct.hpi_response* %2) #0 {
  %4 = alloca %struct.hpi_adapter_obj*, align 8
  %5 = alloca %struct.hpi_message*, align 8
  %6 = alloca %struct.hpi_response*, align 8
  %7 = alloca %struct.hpi_hw_obj*, align 8
  %8 = alloca i64, align 8
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %4, align 8
  store %struct.hpi_message* %1, %struct.hpi_message** %5, align 8
  store %struct.hpi_response* %2, %struct.hpi_response** %6, align 8
  %9 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %10 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %9, i32 0, i32 0
  %11 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %10, align 8
  store %struct.hpi_hw_obj* %11, %struct.hpi_hw_obj** %7, align 8
  %12 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %13 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %20 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %23 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %66

28:                                               ; preds = %3
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @HPI_BUFFER_CMD_EXTERNAL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @HPI_BUFFER_CMD_INTERNAL_REVOKEADAPTER, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32, %28
  %37 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %38 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %41 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  store i64 0, i64* %43, align 8
  %44 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %45 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %46 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %47 = call i32 @hw_message(%struct.hpi_adapter_obj* %44, %struct.hpi_message* %45, %struct.hpi_response* %46)
  br label %48

48:                                               ; preds = %36, %32
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @HPI_BUFFER_CMD_EXTERNAL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @HPI_BUFFER_CMD_INTERNAL_FREE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52, %48
  %57 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %58 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %61 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = call i32 @hpios_locked_mem_free(i32* %63)
  br label %65

65:                                               ; preds = %56, %52
  br label %71

66:                                               ; preds = %3
  %67 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %68 = load i32, i32* @HPI_OBJ_OSTREAM, align 4
  %69 = load i32, i32* @HPI_OSTREAM_HOSTBUFFER_FREE, align 4
  %70 = call i32 @hpi_init_response(%struct.hpi_response* %67, i32 %68, i32 %69, i32 0)
  br label %71

71:                                               ; preds = %66, %65
  ret void
}

declare dso_local i32 @hw_message(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @hpios_locked_mem_free(i32*) #1

declare dso_local i32 @hpi_init_response(%struct.hpi_response*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
