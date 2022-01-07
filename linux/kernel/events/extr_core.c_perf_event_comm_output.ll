; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_comm_output.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_comm_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.perf_comm_event = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.perf_output_handle = type { i32 }
%struct.perf_sample_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i8*)* @perf_event_comm_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event_comm_output(%struct.perf_event* %0, i8* %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.perf_comm_event*, align 8
  %6 = alloca %struct.perf_output_handle, align 4
  %7 = alloca %struct.perf_sample_data, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca { i64, i32 }, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.perf_comm_event*
  store %struct.perf_comm_event* %12, %struct.perf_comm_event** %5, align 8
  %13 = load %struct.perf_comm_event*, %struct.perf_comm_event** %5, align 8
  %14 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %19 = call i32 @perf_event_comm_match(%struct.perf_event* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %80

22:                                               ; preds = %2
  %23 = load %struct.perf_comm_event*, %struct.perf_comm_event** %5, align 8
  %24 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %27 = call i32 @perf_event_header__init_id(%struct.TYPE_4__* %25, %struct.perf_sample_data* %7, %struct.perf_event* %26)
  %28 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %29 = load %struct.perf_comm_event*, %struct.perf_comm_event** %5, align 8
  %30 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @perf_output_begin(%struct.perf_output_handle* %6, %struct.perf_event* %28, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  br label %74

38:                                               ; preds = %22
  %39 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %40 = load %struct.perf_comm_event*, %struct.perf_comm_event** %5, align 8
  %41 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @perf_event_pid(%struct.perf_event* %39, i32 %42)
  %44 = load %struct.perf_comm_event*, %struct.perf_comm_event** %5, align 8
  %45 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 4
  %47 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %48 = load %struct.perf_comm_event*, %struct.perf_comm_event** %5, align 8
  %49 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @perf_event_tid(%struct.perf_event* %47, i32 %50)
  %52 = load %struct.perf_comm_event*, %struct.perf_comm_event** %5, align 8
  %53 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.perf_comm_event*, %struct.perf_comm_event** %5, align 8
  %56 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %55, i32 0, i32 0
  %57 = bitcast { i64, i32 }* %10 to i8*
  %58 = bitcast %struct.TYPE_3__* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 12, i1 false)
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %60 = load i64, i64* %59, align 4
  %61 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @perf_output_put(%struct.perf_output_handle* %6, i64 %60, i32 %62)
  %64 = load %struct.perf_comm_event*, %struct.perf_comm_event** %5, align 8
  %65 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.perf_comm_event*, %struct.perf_comm_event** %5, align 8
  %68 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @__output_copy(%struct.perf_output_handle* %6, i32 %66, i32 %69)
  %71 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %72 = call i32 @perf_event__output_id_sample(%struct.perf_event* %71, %struct.perf_output_handle* %6, %struct.perf_sample_data* %7)
  %73 = call i32 @perf_output_end(%struct.perf_output_handle* %6)
  br label %74

74:                                               ; preds = %38, %37
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.perf_comm_event*, %struct.perf_comm_event** %5, align 8
  %77 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 4
  br label %80

80:                                               ; preds = %74, %21
  ret void
}

declare dso_local i32 @perf_event_comm_match(%struct.perf_event*) #1

declare dso_local i32 @perf_event_header__init_id(%struct.TYPE_4__*, %struct.perf_sample_data*, %struct.perf_event*) #1

declare dso_local i32 @perf_output_begin(%struct.perf_output_handle*, %struct.perf_event*, i32) #1

declare dso_local i32 @perf_event_pid(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_event_tid(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_output_put(%struct.perf_output_handle*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__output_copy(%struct.perf_output_handle*, i32, i32) #1

declare dso_local i32 @perf_event__output_id_sample(%struct.perf_event*, %struct.perf_output_handle*, %struct.perf_sample_data*) #1

declare dso_local i32 @perf_output_end(%struct.perf_output_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
