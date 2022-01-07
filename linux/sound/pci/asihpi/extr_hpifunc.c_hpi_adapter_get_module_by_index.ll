; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_adapter_get_module_by_index.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_adapter_get_module_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { %struct.TYPE_9__, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.hpi_response = type { i8*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i8*, i8*, i8*, i8* }

@HPI_OBJ_ADAPTER = common dso_local global i32 0, align 4
@HPI_ADAPTER_MODULE_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hpi_adapter_get_module_by_index(i8* %0, i8* %1, i8** %2, i8** %3, i8** %4, i64* %5, i8** %6, i64* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i64*, align 8
  %17 = alloca %struct.hpi_message, align 8
  %18 = alloca %struct.hpi_response, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8** %2, i8*** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i8** %4, i8*** %13, align 8
  store i64* %5, i64** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i64* %7, i64** %16, align 8
  %19 = load i32, i32* @HPI_OBJ_ADAPTER, align 4
  %20 = load i32, i32* @HPI_ADAPTER_MODULE_INFO, align 4
  %21 = call i32 @hpi_init_message_response(%struct.hpi_message* %17, %struct.hpi_response* %18, i32 %19, i32 %20)
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %17, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %17, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i8* %24, i8** %28, align 8
  %29 = call i32 @hpi_send_recv(%struct.hpi_message* %17, %struct.hpi_response* %18)
  %30 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %18, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 4
  %34 = load i8*, i8** %33, align 8
  %35 = load i8**, i8*** %15, align 8
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %18, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = load i8**, i8*** %11, align 8
  store i8* %40, i8** %41, align 8
  %42 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %18, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = load i8**, i8*** %12, align 8
  store i8* %46, i8** %47, align 8
  %48 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %18, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i8**, i8*** %13, align 8
  store i8* %52, i8** %53, align 8
  %54 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %18, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %14, align 8
  store i64 %58, i64* %59, align 8
  %60 = load i64*, i64** %16, align 8
  store i64 0, i64* %60, align 8
  %61 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %18, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  ret i8* %62
}

declare dso_local i32 @hpi_init_message_response(%struct.hpi_message*, %struct.hpi_response*, i32, i32) #1

declare dso_local i32 @hpi_send_recv(%struct.hpi_message*, %struct.hpi_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
