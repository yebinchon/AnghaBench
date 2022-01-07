; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_outstream_group_add.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_outstream_group_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8, i32 }
%struct.hpi_response = type { i64 }

@HPI_OSTREAM_GROUP_ADD = common dso_local global i32 0, align 4
@HPI_ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@HPI_ERROR_INVALID_OBJ = common dso_local global i64 0, align 8
@HPI_ERROR_NO_INTERADAPTER_GROUPS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hpi_outstream_group_add(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hpi_message, align 8
  %7 = alloca %struct.hpi_response, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @HPI_OSTREAM_GROUP_ADD, align 4
  %11 = call i32 @hpi_init_message_response(%struct.hpi_message* %6, %struct.hpi_response* %7, i32 128, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %6, i32 0, i32 0
  %14 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %6, i32 0, i32 2
  %15 = call i64 @hpi_handle_indexes(i32 %12, i64* %13, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @HPI_ERROR_INVALID_HANDLE, align 8
  store i64 %18, i64* %3, align 8
  br label %55

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %6, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = call i64 @hpi_handle_indexes(i32 %20, i64* %8, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i64, i64* @HPI_ERROR_INVALID_HANDLE, align 8
  store i64 %29, i64* %3, align 8
  br label %55

30:                                               ; preds = %19
  %31 = load i32, i32* %5, align 4
  %32 = call signext i8 @hpi_handle_object(i32 %31)
  store i8 %32, i8* %9, align 1
  %33 = load i8, i8* %9, align 1
  %34 = sext i8 %33 to i32
  switch i32 %34, label %42 [
    i32 128, label %35
    i32 129, label %35
  ]

35:                                               ; preds = %30, %30
  %36 = load i8, i8* %9, align 1
  %37 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %6, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i8 %36, i8* %41, align 8
  br label %44

42:                                               ; preds = %30
  %43 = load i64, i64* @HPI_ERROR_INVALID_OBJ, align 8
  store i64 %43, i64* %3, align 8
  br label %55

44:                                               ; preds = %35
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %6, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i64, i64* @HPI_ERROR_NO_INTERADAPTER_GROUPS, align 8
  store i64 %50, i64* %3, align 8
  br label %55

51:                                               ; preds = %44
  %52 = call i32 @hpi_send_recv(%struct.hpi_message* %6, %struct.hpi_response* %7)
  %53 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %7, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %3, align 8
  br label %55

55:                                               ; preds = %51, %49, %42, %28, %17
  %56 = load i64, i64* %3, align 8
  ret i64 %56
}

declare dso_local i32 @hpi_init_message_response(%struct.hpi_message*, %struct.hpi_response*, i32, i32) #1

declare dso_local i64 @hpi_handle_indexes(i32, i64*, i32*) #1

declare dso_local signext i8 @hpi_handle_object(i32) #1

declare dso_local i32 @hpi_send_recv(%struct.hpi_message*, %struct.hpi_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
