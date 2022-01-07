; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_instream_ancillary_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_instream_ancillary_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_anc_frame = type { i32 }
%struct.hpi_message = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.hpi_response = type { i32 }

@HPI_OBJ_ISTREAM = common dso_local global i32 0, align 4
@HPI_ISTREAM_ANC_WRITE = common dso_local global i32 0, align 4
@HPI_ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@HPI_ERROR_INVALID_DATASIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpi_instream_ancillary_write(i32 %0, %struct.hpi_anc_frame* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hpi_anc_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hpi_message, align 8
  %11 = alloca %struct.hpi_response, align 4
  store i32 %0, i32* %6, align 4
  store %struct.hpi_anc_frame* %1, %struct.hpi_anc_frame** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @HPI_OBJ_ISTREAM, align 4
  %13 = load i32, i32* @HPI_ISTREAM_ANC_WRITE, align 4
  %14 = call i32 @hpi_init_message_response(%struct.hpi_message* %10, %struct.hpi_response* %11, i32 %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %10, i32 0, i32 2
  %17 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %10, i32 0, i32 1
  %18 = call i64 @hpi_handle_indexes(i32 %15, i32* %16, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @HPI_ERROR_INVALID_HANDLE, align 4
  store i32 %21, i32* %5, align 4
  br label %55

22:                                               ; preds = %4
  %23 = load %struct.hpi_anc_frame*, %struct.hpi_anc_frame** %7, align 8
  %24 = bitcast %struct.hpi_anc_frame* %23 to i32*
  %25 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %10, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i32* %24, i32** %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %10, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %33, i32* %38, align 8
  %39 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %10, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %22
  %48 = call i32 @hpi_send_recv(%struct.hpi_message* %10, %struct.hpi_response* %11)
  br label %52

49:                                               ; preds = %22
  %50 = load i32, i32* @HPI_ERROR_INVALID_DATASIZE, align 4
  %51 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %11, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %47
  %53 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %11, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %52, %20
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @hpi_init_message_response(%struct.hpi_message*, %struct.hpi_response*, i32, i32) #1

declare dso_local i64 @hpi_handle_indexes(i32, i32*, i32*) #1

declare dso_local i32 @hpi_send_recv(%struct.hpi_message*, %struct.hpi_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
