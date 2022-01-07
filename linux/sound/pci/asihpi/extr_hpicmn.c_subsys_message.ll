; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpicmn.c_subsys_message.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpicmn.c_subsys_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.hpi_message = type { i32 }
%struct.hpi_response = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@HPI_OBJ_SUBSYSTEM = common dso_local global i32 0, align 4
@adapters = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@HPI_ERROR_INVALID_FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_message*, %struct.hpi_response*)* @subsys_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subsys_message(%struct.hpi_message* %0, %struct.hpi_response* %1) #0 {
  %3 = alloca %struct.hpi_message*, align 8
  %4 = alloca %struct.hpi_response*, align 8
  store %struct.hpi_message* %0, %struct.hpi_message** %3, align 8
  store %struct.hpi_response* %1, %struct.hpi_response** %4, align 8
  %5 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %6 = load i32, i32* @HPI_OBJ_SUBSYSTEM, align 4
  %7 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %8 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @hpi_init_response(%struct.hpi_response* %5, i32 %6, i32 %9, i32 0)
  %11 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %12 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %29 [
    i32 128, label %14
    i32 134, label %14
    i32 131, label %14
    i32 132, label %15
    i32 130, label %18
    i32 129, label %22
    i32 133, label %28
  ]

14:                                               ; preds = %2, %2, %2
  br label %33

15:                                               ; preds = %2
  %16 = call i32 (...) @wipe_adapter_list()
  %17 = call i32 @hpios_alistlock_init(%struct.TYPE_7__* @adapters)
  br label %33

18:                                               ; preds = %2
  %19 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %20 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %21 = call i32 @subsys_get_adapter(%struct.hpi_message* %19, %struct.hpi_response* %20)
  br label %33

22:                                               ; preds = %2
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @adapters, i32 0, i32 0), align 4
  %24 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %25 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  br label %33

28:                                               ; preds = %2
  br label %33

29:                                               ; preds = %2
  %30 = load i32, i32* @HPI_ERROR_INVALID_FUNC, align 4
  %31 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %32 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %28, %22, %18, %15, %14
  ret void
}

declare dso_local i32 @hpi_init_response(%struct.hpi_response*, i32, i32, i32) #1

declare dso_local i32 @wipe_adapter_list(...) #1

declare dso_local i32 @hpios_alistlock_init(%struct.TYPE_7__*) #1

declare dso_local i32 @subsys_get_adapter(%struct.hpi_message*, %struct.hpi_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
