; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_instream_group_add.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_instream_group_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8, i32 }
%struct.hpi_response = type { i64 }

@HPI_ISTREAM_GROUP_ADD = common dso_local global i32 0, align 4
@HPI_ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@HPI_ERROR_INVALID_OBJ = common dso_local global i64 0, align 8
@HPI_ERROR_NO_INTERADAPTER_GROUPS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hpi_instream_group_add(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hpi_message, align 8
  %7 = alloca %struct.hpi_response, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @HPI_ISTREAM_GROUP_ADD, align 4
  %11 = call i32 @hpi_init_message_response(%struct.hpi_message* %6, %struct.hpi_response* %7, i32 129, i32 %10)
  %12 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %7, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* %4, align 4
  %14 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %6, i32 0, i32 0
  %15 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %6, i32 0, i32 2
  %16 = call i64 @hpi_handle_indexes(i32 %13, i64* %14, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* @HPI_ERROR_INVALID_HANDLE, align 8
  store i64 %19, i64* %3, align 8
  br label %56

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %6, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = call i64 @hpi_handle_indexes(i32 %21, i64* %8, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i64, i64* @HPI_ERROR_INVALID_HANDLE, align 8
  store i64 %30, i64* %3, align 8
  br label %56

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4
  %33 = call signext i8 @hpi_handle_object(i32 %32)
  store i8 %33, i8* %9, align 1
  %34 = load i8, i8* %9, align 1
  %35 = sext i8 %34 to i32
  switch i32 %35, label %43 [
    i32 128, label %36
    i32 129, label %36
  ]

36:                                               ; preds = %31, %31
  %37 = load i8, i8* %9, align 1
  %38 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %6, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i8 %37, i8* %42, align 8
  br label %45

43:                                               ; preds = %31
  %44 = load i64, i64* @HPI_ERROR_INVALID_OBJ, align 8
  store i64 %44, i64* %3, align 8
  br label %56

45:                                               ; preds = %36
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %6, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i64, i64* @HPI_ERROR_NO_INTERADAPTER_GROUPS, align 8
  store i64 %51, i64* %3, align 8
  br label %56

52:                                               ; preds = %45
  %53 = call i32 @hpi_send_recv(%struct.hpi_message* %6, %struct.hpi_response* %7)
  %54 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %7, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %3, align 8
  br label %56

56:                                               ; preds = %52, %50, %43, %29, %18
  %57 = load i64, i64* %3, align 8
  ret i64 %57
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
