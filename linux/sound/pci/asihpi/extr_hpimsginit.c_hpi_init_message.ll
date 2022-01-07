; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpimsginit.c_hpi_init_message.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpimsginit.c_hpi_init_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { i64, i64, i64, i32, i64, i32 }

@HPI_OBJ_MAXINDEX = common dso_local global i64 0, align 8
@msg_size = common dso_local global i64* null, align 8
@gwSSX2_bypass = common dso_local global i64 0, align 8
@HPI_TYPE_SSX2BYPASS_MESSAGE = common dso_local global i32 0, align 4
@HPI_TYPE_REQUEST = common dso_local global i32 0, align 4
@HPI_ADAPTER_INDEX_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_message*, i64, i64)* @hpi_init_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpi_init_message(%struct.hpi_message* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.hpi_message*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.hpi_message* %0, %struct.hpi_message** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ugt i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @HPI_OBJ_MAXINDEX, align 8
  %13 = icmp ule i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @HPI_OBJ_MAXINDEX, align 8
  %17 = add i64 %16, 1
  %18 = call i64 @array_index_nospec(i64 %15, i64 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64*, i64** @msg_size, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  br label %24

23:                                               ; preds = %10, %3
  store i64 48, i64* %7, align 8
  br label %24

24:                                               ; preds = %23, %14
  %25 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @memset(%struct.hpi_message* %25, i32 0, i64 %26)
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %30 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* @gwSSX2_bypass, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load i32, i32* @HPI_TYPE_SSX2BYPASS_MESSAGE, align 4
  %35 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %36 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  br label %41

37:                                               ; preds = %24
  %38 = load i32, i32* @HPI_TYPE_REQUEST, align 4
  %39 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %40 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %44 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %47 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %49 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @HPI_ADAPTER_INDEX_INVALID, align 4
  %51 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %52 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  ret void
}

declare dso_local i64 @array_index_nospec(i64, i64) #1

declare dso_local i32 @memset(%struct.hpi_message*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
