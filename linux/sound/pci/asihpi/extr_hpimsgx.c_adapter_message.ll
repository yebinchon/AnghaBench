; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpimsgx.c_adapter_message.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpimsgx.c_adapter_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { i32, i32 }
%struct.hpi_response = type { i32 }

@HPI_OBJ_ADAPTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_message*, %struct.hpi_response*, i8*)* @adapter_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adapter_message(%struct.hpi_message* %0, %struct.hpi_response* %1, i8* %2) #0 {
  %4 = alloca %struct.hpi_message*, align 8
  %5 = alloca %struct.hpi_response*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hpi_message, align 4
  %8 = alloca %struct.hpi_response, align 4
  store %struct.hpi_message* %0, %struct.hpi_message** %4, align 8
  store %struct.hpi_response* %1, %struct.hpi_response** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %10 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %36 [
    i32 128, label %12
    i32 130, label %16
    i32 129, label %20
  ]

12:                                               ; preds = %3
  %13 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %14 = load %struct.hpi_response*, %struct.hpi_response** %5, align 8
  %15 = call i32 @adapter_open(%struct.hpi_message* %13, %struct.hpi_response* %14)
  br label %40

16:                                               ; preds = %3
  %17 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %18 = load %struct.hpi_response*, %struct.hpi_response** %5, align 8
  %19 = call i32 @adapter_close(%struct.hpi_message* %17, %struct.hpi_response* %18)
  br label %40

20:                                               ; preds = %3
  %21 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %22 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @HPIMSGX__cleanup(i32 %23, i8* %24)
  %26 = load i32, i32* @HPI_OBJ_ADAPTER, align 4
  %27 = call i32 @hpi_init_message_response(%struct.hpi_message* %7, %struct.hpi_response* %8, i32 %26, i32 130)
  %28 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %29 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %7, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = call i32 @hw_entry_point(%struct.hpi_message* %7, %struct.hpi_response* %8)
  %33 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %34 = load %struct.hpi_response*, %struct.hpi_response** %5, align 8
  %35 = call i32 @hw_entry_point(%struct.hpi_message* %33, %struct.hpi_response* %34)
  br label %40

36:                                               ; preds = %3
  %37 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %38 = load %struct.hpi_response*, %struct.hpi_response** %5, align 8
  %39 = call i32 @hw_entry_point(%struct.hpi_message* %37, %struct.hpi_response* %38)
  br label %40

40:                                               ; preds = %36, %20, %16, %12
  ret void
}

declare dso_local i32 @adapter_open(%struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @adapter_close(%struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @HPIMSGX__cleanup(i32, i8*) #1

declare dso_local i32 @hpi_init_message_response(%struct.hpi_message*, %struct.hpi_response*, i32, i32) #1

declare dso_local i32 @hw_entry_point(%struct.hpi_message*, %struct.hpi_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
