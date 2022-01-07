; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_outstream_message.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_outstream_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { i32 }
%struct.hpi_message = type { i64, i32, i32 }
%struct.hpi_response = type { i32 }

@HPI_MAX_STREAMS = common dso_local global i64 0, align 8
@HPI_ERROR_INVALID_OBJ_INDEX = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Message referencing invalid stream %d on adapter index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*)* @outstream_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @outstream_message(%struct.hpi_adapter_obj* %0, %struct.hpi_message* %1, %struct.hpi_response* %2) #0 {
  %4 = alloca %struct.hpi_adapter_obj*, align 8
  %5 = alloca %struct.hpi_message*, align 8
  %6 = alloca %struct.hpi_response*, align 8
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %4, align 8
  store %struct.hpi_message* %1, %struct.hpi_message** %5, align 8
  store %struct.hpi_response* %2, %struct.hpi_response** %6, align 8
  %7 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %8 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @HPI_MAX_STREAMS, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load i32, i32* @HPI_ERROR_INVALID_OBJ_INDEX, align 4
  %14 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %15 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @WARNING, align 4
  %17 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %18 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %21 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @HPI_DEBUG_LOG(i32 %16, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %19, i32 %22)
  br label %73

24:                                               ; preds = %3
  %25 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %26 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %68 [
    i32 128, label %28
    i32 135, label %33
    i32 134, label %38
    i32 132, label %43
    i32 133, label %48
    i32 129, label %53
    i32 131, label %58
    i32 130, label %63
  ]

28:                                               ; preds = %24
  %29 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %30 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %31 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %32 = call i32 @outstream_write(%struct.hpi_adapter_obj* %29, %struct.hpi_message* %30, %struct.hpi_response* %31)
  br label %73

33:                                               ; preds = %24
  %34 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %35 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %36 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %37 = call i32 @outstream_get_info(%struct.hpi_adapter_obj* %34, %struct.hpi_message* %35, %struct.hpi_response* %36)
  br label %73

38:                                               ; preds = %24
  %39 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %40 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %41 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %42 = call i32 @outstream_host_buffer_allocate(%struct.hpi_adapter_obj* %39, %struct.hpi_message* %40, %struct.hpi_response* %41)
  br label %73

43:                                               ; preds = %24
  %44 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %45 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %46 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %47 = call i32 @outstream_host_buffer_get_info(%struct.hpi_adapter_obj* %44, %struct.hpi_message* %45, %struct.hpi_response* %46)
  br label %73

48:                                               ; preds = %24
  %49 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %50 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %51 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %52 = call i32 @outstream_host_buffer_free(%struct.hpi_adapter_obj* %49, %struct.hpi_message* %50, %struct.hpi_response* %51)
  br label %73

53:                                               ; preds = %24
  %54 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %55 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %56 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %57 = call i32 @outstream_start(%struct.hpi_adapter_obj* %54, %struct.hpi_message* %55, %struct.hpi_response* %56)
  br label %73

58:                                               ; preds = %24
  %59 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %60 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %61 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %62 = call i32 @outstream_open(%struct.hpi_adapter_obj* %59, %struct.hpi_message* %60, %struct.hpi_response* %61)
  br label %73

63:                                               ; preds = %24
  %64 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %65 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %66 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %67 = call i32 @outstream_reset(%struct.hpi_adapter_obj* %64, %struct.hpi_message* %65, %struct.hpi_response* %66)
  br label %73

68:                                               ; preds = %24
  %69 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %70 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %71 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %72 = call i32 @hw_message(%struct.hpi_adapter_obj* %69, %struct.hpi_message* %70, %struct.hpi_response* %71)
  br label %73

73:                                               ; preds = %12, %68, %63, %58, %53, %48, %43, %38, %33, %28
  ret void
}

declare dso_local i32 @HPI_DEBUG_LOG(i32, i8*, i64, i32) #1

declare dso_local i32 @outstream_write(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @outstream_get_info(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @outstream_host_buffer_allocate(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @outstream_host_buffer_get_info(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @outstream_host_buffer_free(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @outstream_start(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @outstream_open(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @outstream_reset(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @hw_message(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
