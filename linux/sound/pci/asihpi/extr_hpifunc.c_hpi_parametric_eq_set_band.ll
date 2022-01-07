; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_parametric_eq_set_band.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_parametric_eq_set_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i16*, i32 }
%struct.hpi_response = type { i32 }

@HPI_OBJ_CONTROL = common dso_local global i32 0, align 4
@HPI_CONTROL_SET_STATE = common dso_local global i32 0, align 4
@HPI_ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@HPI_EQUALIZER_FILTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpi_parametric_eq_set_band(i32 %0, i32 %1, i32 %2, i32 %3, i16 signext %4, i16 signext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca %struct.hpi_message, align 8
  %15 = alloca %struct.hpi_response, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i16 %4, i16* %12, align 2
  store i16 %5, i16* %13, align 2
  %16 = load i32, i32* @HPI_OBJ_CONTROL, align 4
  %17 = load i32, i32* @HPI_CONTROL_SET_STATE, align 4
  %18 = call i32 @hpi_init_message_response(%struct.hpi_message* %14, %struct.hpi_response* %15, i32 %16, i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %14, i32 0, i32 2
  %21 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %14, i32 0, i32 1
  %22 = call i64 @hpi_handle_indexes(i32 %19, i32* %20, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* @HPI_ERROR_INVALID_HANDLE, align 4
  store i32 %25, i32* %7, align 4
  br label %61

26:                                               ; preds = %6
  %27 = load i32, i32* %11, align 4
  %28 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %14, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = and i64 %32, 65535
  %34 = load i32, i32* %10, align 4
  %35 = shl i32 %34, 16
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = trunc i64 %37 to i32
  %39 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %14, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load i16, i16* %13, align 2
  %43 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %14, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i16*, i16** %45, align 8
  %47 = getelementptr inbounds i16, i16* %46, i64 0
  store i16 %42, i16* %47, align 2
  %48 = load i16, i16* %12, align 2
  %49 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %14, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i16*, i16** %51, align 8
  %53 = getelementptr inbounds i16, i16* %52, i64 1
  store i16 %48, i16* %53, align 2
  %54 = load i32, i32* @HPI_EQUALIZER_FILTER, align 4
  %55 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %14, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 8
  %58 = call i32 @hpi_send_recv(%struct.hpi_message* %14, %struct.hpi_response* %15)
  %59 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %15, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %26, %24
  %62 = load i32, i32* %7, align 4
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
