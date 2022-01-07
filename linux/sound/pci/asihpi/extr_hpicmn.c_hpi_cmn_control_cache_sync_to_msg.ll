; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpicmn.c_hpi_cmn_control_cache_sync_to_msg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpicmn.c_hpi_cmn_control_cache_sync_to_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_control_cache = type { i32 }
%struct.hpi_message = type { i32, i32 }
%struct.hpi_response = type { i64 }
%struct.hpi_control_cache_single = type { i32 }
%struct.hpi_control_cache_info = type { i32 }

@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"HPICMN find_control() failed for adap %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpi_cmn_control_cache_sync_to_msg(%struct.hpi_control_cache* %0, %struct.hpi_message* %1, %struct.hpi_response* %2) #0 {
  %4 = alloca %struct.hpi_control_cache*, align 8
  %5 = alloca %struct.hpi_message*, align 8
  %6 = alloca %struct.hpi_response*, align 8
  %7 = alloca %struct.hpi_control_cache_single*, align 8
  %8 = alloca %struct.hpi_control_cache_info*, align 8
  store %struct.hpi_control_cache* %0, %struct.hpi_control_cache** %4, align 8
  store %struct.hpi_message* %1, %struct.hpi_message** %5, align 8
  store %struct.hpi_response* %2, %struct.hpi_response** %6, align 8
  %9 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %10 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %34

14:                                               ; preds = %3
  %15 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %16 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %4, align 8
  %19 = call i32 @find_control(i32 %17, %struct.hpi_control_cache* %18, %struct.hpi_control_cache_info** %8)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @VERBOSE, align 4
  %23 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %24 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @HPI_DEBUG_LOG(i32 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %34

27:                                               ; preds = %14
  %28 = load %struct.hpi_control_cache_info*, %struct.hpi_control_cache_info** %8, align 8
  %29 = bitcast %struct.hpi_control_cache_info* %28 to %struct.hpi_control_cache_single*
  store %struct.hpi_control_cache_single* %29, %struct.hpi_control_cache_single** %7, align 8
  %30 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %7, align 8
  %31 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %32 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %33 = call i32 @hpi_cmn_control_cache_sync_to_msg_single(%struct.hpi_control_cache_single* %30, %struct.hpi_message* %31, %struct.hpi_response* %32)
  br label %34

34:                                               ; preds = %27, %21, %13
  ret void
}

declare dso_local i32 @find_control(i32, %struct.hpi_control_cache*, %struct.hpi_control_cache_info**) #1

declare dso_local i32 @HPI_DEBUG_LOG(i32, i8*, i32) #1

declare dso_local i32 @hpi_cmn_control_cache_sync_to_msg_single(%struct.hpi_control_cache_single*, %struct.hpi_message*, %struct.hpi_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
