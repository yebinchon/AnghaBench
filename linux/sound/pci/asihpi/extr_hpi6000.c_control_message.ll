; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_control_message.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_control_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { i32, %struct.hpi_hw_obj* }
%struct.hpi_hw_obj = type { i32 }
%struct.hpi_message = type { i32 }
%struct.hpi_response = type { i8*, i8* }

@HPI_ERROR_BACKEND_BASE = common dso_local global i8* null, align 8
@HPI_ERROR_CONTROL_CACHING = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*)* @control_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @control_message(%struct.hpi_adapter_obj* %0, %struct.hpi_message* %1, %struct.hpi_response* %2) #0 {
  %4 = alloca %struct.hpi_adapter_obj*, align 8
  %5 = alloca %struct.hpi_message*, align 8
  %6 = alloca %struct.hpi_response*, align 8
  %7 = alloca %struct.hpi_hw_obj*, align 8
  %8 = alloca i8*, align 8
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %4, align 8
  store %struct.hpi_message* %1, %struct.hpi_message** %5, align 8
  store %struct.hpi_response* %2, %struct.hpi_response** %6, align 8
  %9 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %10 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %9, i32 0, i32 1
  %11 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %10, align 8
  store %struct.hpi_hw_obj* %11, %struct.hpi_hw_obj** %7, align 8
  %12 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %13 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %69 [
    i32 129, label %15
    i32 128, label %57
    i32 130, label %68
  ]

15:                                               ; preds = %3
  %16 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %17 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %15
  %21 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %22 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %23 = call i8* @hpi6000_update_control_cache(%struct.hpi_adapter_obj* %21, %struct.hpi_message* %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** @HPI_ERROR_BACKEND_BASE, align 8
  %29 = icmp uge i8* %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i8*, i8** @HPI_ERROR_CONTROL_CACHING, align 8
  %32 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %33 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %36 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  br label %41

37:                                               ; preds = %26
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %40 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %37, %30
  br label %74

42:                                               ; preds = %20
  %43 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %44 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %47 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %48 = call i32 @hpi_check_control_cache(i32 %45, %struct.hpi_message* %46, %struct.hpi_response* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %74

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %15
  %53 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %54 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %55 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %56 = call i32 @hw_message(%struct.hpi_adapter_obj* %53, %struct.hpi_message* %54, %struct.hpi_response* %55)
  br label %74

57:                                               ; preds = %3
  %58 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %59 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %60 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %61 = call i32 @hw_message(%struct.hpi_adapter_obj* %58, %struct.hpi_message* %59, %struct.hpi_response* %60)
  %62 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %63 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %66 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %67 = call i32 @hpi_cmn_control_cache_sync_to_msg(i32 %64, %struct.hpi_message* %65, %struct.hpi_response* %66)
  br label %74

68:                                               ; preds = %3
  br label %69

69:                                               ; preds = %3, %68
  %70 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %71 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %72 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %73 = call i32 @hw_message(%struct.hpi_adapter_obj* %70, %struct.hpi_message* %71, %struct.hpi_response* %72)
  br label %74

74:                                               ; preds = %69, %57, %52, %50, %41
  ret void
}

declare dso_local i8* @hpi6000_update_control_cache(%struct.hpi_adapter_obj*, %struct.hpi_message*) #1

declare dso_local i32 @hpi_check_control_cache(i32, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @hw_message(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @hpi_cmn_control_cache_sync_to_msg(i32, %struct.hpi_message*, %struct.hpi_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
