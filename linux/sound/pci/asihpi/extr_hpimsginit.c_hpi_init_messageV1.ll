; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpimsginit.c_hpi_init_messageV1.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpimsginit.c_hpi_init_messageV1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message_header = type { i32, i64, i64, i32, i64 }

@HPI_OBJ_MAXINDEX = common dso_local global i64 0, align 8
@HPI_TYPE_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_message_header*, i64, i64, i64)* @hpi_init_messageV1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpi_init_messageV1(%struct.hpi_message_header* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.hpi_message_header*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.hpi_message_header* %0, %struct.hpi_message_header** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.hpi_message_header*, %struct.hpi_message_header** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @memset(%struct.hpi_message_header* %9, i32 0, i64 %10)
  %12 = load i64, i64* %7, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @HPI_OBJ_MAXINDEX, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.hpi_message_header*, %struct.hpi_message_header** %5, align 8
  %21 = getelementptr inbounds %struct.hpi_message_header, %struct.hpi_message_header* %20, i32 0, i32 4
  store i64 %19, i64* %21, align 8
  %22 = load i32, i32* @HPI_TYPE_REQUEST, align 4
  %23 = load %struct.hpi_message_header*, %struct.hpi_message_header** %5, align 8
  %24 = getelementptr inbounds %struct.hpi_message_header, %struct.hpi_message_header* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.hpi_message_header*, %struct.hpi_message_header** %5, align 8
  %27 = getelementptr inbounds %struct.hpi_message_header, %struct.hpi_message_header* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.hpi_message_header*, %struct.hpi_message_header** %5, align 8
  %30 = getelementptr inbounds %struct.hpi_message_header, %struct.hpi_message_header* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.hpi_message_header*, %struct.hpi_message_header** %5, align 8
  %32 = getelementptr inbounds %struct.hpi_message_header, %struct.hpi_message_header* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  br label %33

33:                                               ; preds = %18, %14, %4
  ret void
}

declare dso_local i32 @memset(%struct.hpi_message_header*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
