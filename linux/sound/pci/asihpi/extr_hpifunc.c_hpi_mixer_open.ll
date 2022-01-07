; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_mixer_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_mixer_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { i64 }
%struct.hpi_response = type { i64 }

@HPI_OBJ_MIXER = common dso_local global i32 0, align 4
@HPI_MIXER_OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hpi_mixer_open(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.hpi_message, align 8
  %6 = alloca %struct.hpi_response, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load i32, i32* @HPI_OBJ_MIXER, align 4
  %8 = load i32, i32* @HPI_MIXER_OPEN, align 4
  %9 = call i32 @hpi_init_message_response(%struct.hpi_message* %5, %struct.hpi_response* %6, i32 %7, i32 %8)
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %5, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = call i32 @hpi_send_recv(%struct.hpi_message* %5, %struct.hpi_response* %6)
  %13 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %6, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @HPI_OBJ_MIXER, align 4
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @hpi_indexes_to_handle(i32 %17, i64 %18, i32 0)
  %20 = load i64*, i64** %4, align 8
  store i64 %19, i64* %20, align 8
  br label %23

21:                                               ; preds = %2
  %22 = load i64*, i64** %4, align 8
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %21, %16
  %24 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %6, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  ret i64 %25
}

declare dso_local i32 @hpi_init_message_response(%struct.hpi_message*, %struct.hpi_response*, i32, i32) #1

declare dso_local i32 @hpi_send_recv(%struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i64 @hpi_indexes_to_handle(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
