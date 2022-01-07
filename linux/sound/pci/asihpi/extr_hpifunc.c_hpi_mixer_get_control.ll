; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_mixer_get_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_mixer_get_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.hpi_response = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@HPI_OBJ_MIXER = common dso_local global i32 0, align 4
@HPI_MIXER_GET_CONTROL = common dso_local global i32 0, align 4
@HPI_ERROR_INVALID_HANDLE = common dso_local global i8* null, align 8
@HPI_OBJ_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hpi_mixer_get_control(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.hpi_message, align 8
  %17 = alloca %struct.hpi_response, align 8
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load i32, i32* @HPI_OBJ_MIXER, align 4
  %19 = load i32, i32* @HPI_MIXER_GET_CONTROL, align 4
  %20 = call i32 @hpi_init_message_response(%struct.hpi_message* %16, %struct.hpi_response* %17, i32 %18, i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %16, i32 0, i32 0
  %23 = call i64 @hpi_handle_indexes(i32 %21, i32* %22, i32* null)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i8*, i8** @HPI_ERROR_INVALID_HANDLE, align 8
  store i8* %26, i8** %8, align 8
  br label %68

27:                                               ; preds = %7
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %16, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 4
  store i8* %28, i8** %31, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %16, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  store i8* %32, i8** %35, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %16, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i8* %36, i8** %39, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %16, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %16, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = call i32 @hpi_send_recv(%struct.hpi_message* %16, %struct.hpi_response* %17)
  %49 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %17, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %27
  %53 = load i32, i32* @HPI_OBJ_CONTROL, align 4
  %54 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %16, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %17, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @hpi_indexes_to_handle(i32 %53, i32 %55, i32 %59)
  %61 = load i32*, i32** %15, align 8
  store i32 %60, i32* %61, align 4
  br label %64

62:                                               ; preds = %27
  %63 = load i32*, i32** %15, align 8
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %62, %52
  %65 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %17, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  store i8* %67, i8** %8, align 8
  br label %68

68:                                               ; preds = %64, %25
  %69 = load i8*, i8** %8, align 8
  ret i8* %69
}

declare dso_local i32 @hpi_init_message_response(%struct.hpi_message*, %struct.hpi_response*, i32, i32) #1

declare dso_local i64 @hpi_handle_indexes(i32, i32*, i32*) #1

declare dso_local i32 @hpi_send_recv(%struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @hpi_indexes_to_handle(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
