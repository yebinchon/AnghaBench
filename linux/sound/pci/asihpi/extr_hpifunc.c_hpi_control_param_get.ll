; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_control_param_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_control_param_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8*, i32 }
%struct.hpi_response = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8* }

@HPI_OBJ_CONTROL = common dso_local global i32 0, align 4
@HPI_CONTROL_GET_STATE = common dso_local global i32 0, align 4
@HPI_ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*, i8**, i8**)* @hpi_control_param_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpi_control_param_get(i8* %0, i32 %1, i8* %2, i8* %3, i8** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.hpi_message, align 8
  %15 = alloca %struct.hpi_response, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %16 = load i32, i32* @HPI_OBJ_CONTROL, align 4
  %17 = load i32, i32* @HPI_CONTROL_GET_STATE, align 4
  %18 = call i32 @hpi_init_message_response(%struct.hpi_message* %14, %struct.hpi_response* %15, i32 %16, i32 %17)
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %14, i32 0, i32 2
  %21 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %14, i32 0, i32 1
  %22 = call i64 @hpi_handle_indexes(i8* %19, i32* %20, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* @HPI_ERROR_INVALID_HANDLE, align 4
  store i32 %25, i32* %7, align 4
  br label %56

26:                                               ; preds = %6
  %27 = load i32, i32* %9, align 4
  %28 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %14, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %14, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i8* %31, i8** %34, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %14, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  %39 = call i32 @hpi_send_recv(%struct.hpi_message* %14, %struct.hpi_response* %15)
  %40 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %15, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i8**, i8*** %12, align 8
  store i8* %43, i8** %44, align 8
  %45 = load i8**, i8*** %13, align 8
  %46 = icmp ne i8** %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %26
  %48 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %15, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8**, i8*** %13, align 8
  store i8* %51, i8** %52, align 8
  br label %53

53:                                               ; preds = %47, %26
  %54 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %15, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %24
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @hpi_init_message_response(%struct.hpi_message*, %struct.hpi_response*, i32, i32) #1

declare dso_local i64 @hpi_handle_indexes(i8*, i32*, i32*) #1

declare dso_local i32 @hpi_send_recv(%struct.hpi_message*, %struct.hpi_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
