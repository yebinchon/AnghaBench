; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpimsgx.c_instream_message.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpimsgx.c_instream_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.hpi_message = type { i64, i64, i32 }
%struct.hpi_response = type { i32 }

@aDAPTER_INFO = common dso_local global %struct.TYPE_2__* null, align 8
@HPI_OBJ_ISTREAM = common dso_local global i32 0, align 4
@HPI_ERROR_INVALID_OBJ_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_message*, %struct.hpi_response*, i8*)* @instream_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @instream_message(%struct.hpi_message* %0, %struct.hpi_response* %1, i8* %2) #0 {
  %4 = alloca %struct.hpi_message*, align 8
  %5 = alloca %struct.hpi_response*, align 8
  %6 = alloca i8*, align 8
  store %struct.hpi_message* %0, %struct.hpi_message** %4, align 8
  store %struct.hpi_response* %1, %struct.hpi_response** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %8 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @aDAPTER_INFO, align 8
  %11 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %12 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %9, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.hpi_response*, %struct.hpi_response** %5, align 8
  %20 = load i32, i32* @HPI_OBJ_ISTREAM, align 4
  %21 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %22 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @HPI_ERROR_INVALID_OBJ_INDEX, align 4
  %25 = call i32 @hpi_init_response(%struct.hpi_response* %19, i32 %20, i32 %23, i32 %24)
  br label %44

26:                                               ; preds = %3
  %27 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %28 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %40 [
    i32 128, label %30
    i32 129, label %35
  ]

30:                                               ; preds = %26
  %31 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %32 = load %struct.hpi_response*, %struct.hpi_response** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @instream_open(%struct.hpi_message* %31, %struct.hpi_response* %32, i8* %33)
  br label %44

35:                                               ; preds = %26
  %36 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %37 = load %struct.hpi_response*, %struct.hpi_response** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @instream_close(%struct.hpi_message* %36, %struct.hpi_response* %37, i8* %38)
  br label %44

40:                                               ; preds = %26
  %41 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %42 = load %struct.hpi_response*, %struct.hpi_response** %5, align 8
  %43 = call i32 @hw_entry_point(%struct.hpi_message* %41, %struct.hpi_response* %42)
  br label %44

44:                                               ; preds = %18, %40, %35, %30
  ret void
}

declare dso_local i32 @hpi_init_response(%struct.hpi_response*, i32, i32, i32) #1

declare dso_local i32 @instream_open(%struct.hpi_message*, %struct.hpi_response*, i8*) #1

declare dso_local i32 @instream_close(%struct.hpi_message*, %struct.hpi_response*, i8*) #1

declare dso_local i32 @hw_entry_point(%struct.hpi_message*, %struct.hpi_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
