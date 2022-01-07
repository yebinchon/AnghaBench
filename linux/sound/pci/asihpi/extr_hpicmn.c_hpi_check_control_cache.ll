; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpicmn.c_hpi_check_control_cache.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpicmn.c_hpi_check_control_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_control_cache = type { i32 }
%struct.hpi_message = type { i32, i32 }
%struct.hpi_response = type { i64, i64, i64 }
%struct.hpi_control_cache_info = type { i32 }
%struct.hpi_control_cache_single = type { i32 }

@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"HPICMN find_control() failed for adap %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @hpi_check_control_cache(%struct.hpi_control_cache* %0, %struct.hpi_message* %1, %struct.hpi_response* %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca %struct.hpi_control_cache*, align 8
  %6 = alloca %struct.hpi_message*, align 8
  %7 = alloca %struct.hpi_response*, align 8
  %8 = alloca %struct.hpi_control_cache_info*, align 8
  store %struct.hpi_control_cache* %0, %struct.hpi_control_cache** %5, align 8
  store %struct.hpi_message* %1, %struct.hpi_message** %6, align 8
  store %struct.hpi_response* %2, %struct.hpi_response** %7, align 8
  %9 = load %struct.hpi_message*, %struct.hpi_message** %6, align 8
  %10 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %5, align 8
  %13 = call i32 @find_control(i32 %11, %struct.hpi_control_cache* %12, %struct.hpi_control_cache_info** %8)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @VERBOSE, align 4
  %17 = load %struct.hpi_message*, %struct.hpi_message** %6, align 8
  %18 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @HPI_DEBUG_LOG(i32 %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i16 0, i16* %4, align 2
  br label %33

21:                                               ; preds = %3
  %22 = load %struct.hpi_response*, %struct.hpi_response** %7, align 8
  %23 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.hpi_response*, %struct.hpi_response** %7, align 8
  %25 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.hpi_response*, %struct.hpi_response** %7, align 8
  %27 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.hpi_control_cache_info*, %struct.hpi_control_cache_info** %8, align 8
  %29 = bitcast %struct.hpi_control_cache_info* %28 to %struct.hpi_control_cache_single*
  %30 = load %struct.hpi_message*, %struct.hpi_message** %6, align 8
  %31 = load %struct.hpi_response*, %struct.hpi_response** %7, align 8
  %32 = call signext i16 @hpi_check_control_cache_single(%struct.hpi_control_cache_single* %29, %struct.hpi_message* %30, %struct.hpi_response* %31)
  store i16 %32, i16* %4, align 2
  br label %33

33:                                               ; preds = %21, %15
  %34 = load i16, i16* %4, align 2
  ret i16 %34
}

declare dso_local i32 @find_control(i32, %struct.hpi_control_cache*, %struct.hpi_control_cache_info**) #1

declare dso_local i32 @HPI_DEBUG_LOG(i32, i8*, i32) #1

declare dso_local signext i16 @hpi_check_control_cache_single(%struct.hpi_control_cache_single*, %struct.hpi_message*, %struct.hpi_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
