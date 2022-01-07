; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_tuner_get_rds.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_tuner_get_rds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.hpi_response = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32* }

@HPI_OBJ_CONTROL = common dso_local global i32 0, align 4
@HPI_CONTROL_GET_STATE = common dso_local global i32 0, align 4
@HPI_ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@HPI_TUNER_RDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpi_tuner_get_rds(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hpi_message, align 4
  %7 = alloca %struct.hpi_response, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @HPI_OBJ_CONTROL, align 4
  %9 = load i32, i32* @HPI_CONTROL_GET_STATE, align 4
  %10 = call i32 @hpi_init_message_response(%struct.hpi_message* %6, %struct.hpi_response* %7, i32 %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %6, i32 0, i32 2
  %13 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %6, i32 0, i32 1
  %14 = call i64 @hpi_handle_indexes(i32 %11, i32* %12, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @HPI_ERROR_INVALID_HANDLE, align 4
  store i32 %17, i32* %3, align 4
  br label %61

18:                                               ; preds = %2
  %19 = load i32, i32* @HPI_TUNER_RDS, align 4
  %20 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %6, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = call i32 @hpi_send_recv(%struct.hpi_message* %6, %struct.hpi_response* %7)
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %58

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %7, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = bitcast i8* %36 to i32*
  store i32 %34, i32* %37, align 4
  %38 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %7, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 4
  %48 = bitcast i8* %47 to i32*
  store i32 %45, i32* %48, align 4
  %49 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %7, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 8
  %57 = bitcast i8* %56 to i32*
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %26, %18
  %59 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %7, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %16
  %62 = load i32, i32* %3, align 4
  ret i32 %62
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
