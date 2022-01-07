; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_instream_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_instream_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { i8*, i8* }
%struct.hpi_response = type { i64 }

@HPI_OBJ_ISTREAM = common dso_local global i32 0, align 4
@HPI_ISTREAM_OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hpi_instream_open(i8* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.hpi_message, align 8
  %8 = alloca %struct.hpi_response, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i32, i32* @HPI_OBJ_ISTREAM, align 4
  %10 = load i32, i32* @HPI_ISTREAM_OPEN, align 4
  %11 = call i32 @hpi_init_message_response(%struct.hpi_message* %7, %struct.hpi_response* %8, i32 %9, i32 %10)
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %7, i32 0, i32 1
  store i8* %12, i8** %13, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %7, i32 0, i32 0
  store i8* %14, i8** %15, align 8
  %16 = call i32 @hpi_send_recv(%struct.hpi_message* %7, %struct.hpi_response* %8)
  %17 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %8, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32, i32* @HPI_OBJ_ISTREAM, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @hpi_indexes_to_handle(i32 %21, i8* %22, i8* %23)
  %25 = load i64*, i64** %6, align 8
  store i64 %24, i64* %25, align 8
  br label %28

26:                                               ; preds = %3
  %27 = load i64*, i64** %6, align 8
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %26, %20
  %29 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %8, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  ret i8* %31
}

declare dso_local i32 @hpi_init_message_response(%struct.hpi_message*, %struct.hpi_response*, i32, i32) #1

declare dso_local i32 @hpi_send_recv(%struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i64 @hpi_indexes_to_handle(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
