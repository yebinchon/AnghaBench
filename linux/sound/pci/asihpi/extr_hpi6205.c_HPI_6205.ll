; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_HPI_6205.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_HPI_6205.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { i64, i32, i32 }
%struct.hpi_response = type { i32 }
%struct.hpi_adapter_obj = type { i32 }

@HPI_OBJ_SUBSYSTEM = common dso_local global i64 0, align 8
@HPI_ERROR_BAD_ADAPTER_NUMBER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HPI_6205(%struct.hpi_message* %0, %struct.hpi_response* %1) #0 {
  %3 = alloca %struct.hpi_message*, align 8
  %4 = alloca %struct.hpi_response*, align 8
  %5 = alloca %struct.hpi_adapter_obj*, align 8
  store %struct.hpi_message* %0, %struct.hpi_message** %3, align 8
  store %struct.hpi_response* %1, %struct.hpi_response** %4, align 8
  store %struct.hpi_adapter_obj* null, %struct.hpi_adapter_obj** %5, align 8
  %6 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %7 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HPI_OBJ_SUBSYSTEM, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %13 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.hpi_adapter_obj* @hpi_find_adapter(i32 %14)
  store %struct.hpi_adapter_obj* %15, %struct.hpi_adapter_obj** %5, align 8
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %18 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %19 = call i32 @_HPI_6205(%struct.hpi_adapter_obj* null, %struct.hpi_message* %17, %struct.hpi_response* %18)
  br label %38

20:                                               ; preds = %11
  %21 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %5, align 8
  %22 = icmp ne %struct.hpi_adapter_obj* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %5, align 8
  %25 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %26 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %27 = call i32 @_HPI_6205(%struct.hpi_adapter_obj* %24, %struct.hpi_message* %25, %struct.hpi_response* %26)
  br label %38

28:                                               ; preds = %20
  %29 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %30 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %31 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %34 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @HPI_ERROR_BAD_ADAPTER_NUMBER, align 4
  %37 = call i32 @hpi_init_response(%struct.hpi_response* %29, i64 %32, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %16, %28, %23
  ret void
}

declare dso_local %struct.hpi_adapter_obj* @hpi_find_adapter(i32) #1

declare dso_local i32 @_HPI_6205(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @hpi_init_response(%struct.hpi_response*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
