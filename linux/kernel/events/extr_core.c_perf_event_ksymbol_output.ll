; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_ksymbol_output.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_ksymbol_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.perf_ksymbol_event = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.perf_output_handle = type { i32 }
%struct.perf_sample_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i8*)* @perf_event_ksymbol_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event_ksymbol_output(%struct.perf_event* %0, i8* %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.perf_ksymbol_event*, align 8
  %6 = alloca %struct.perf_output_handle, align 4
  %7 = alloca %struct.perf_sample_data, align 4
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.perf_ksymbol_event*
  store %struct.perf_ksymbol_event* %10, %struct.perf_ksymbol_event** %5, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %12 = call i32 @perf_event_ksymbol_match(%struct.perf_event* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %48

15:                                               ; preds = %2
  %16 = load %struct.perf_ksymbol_event*, %struct.perf_ksymbol_event** %5, align 8
  %17 = getelementptr inbounds %struct.perf_ksymbol_event, %struct.perf_ksymbol_event* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %20 = call i32 @perf_event_header__init_id(%struct.TYPE_4__* %18, %struct.perf_sample_data* %7, %struct.perf_event* %19)
  %21 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %22 = load %struct.perf_ksymbol_event*, %struct.perf_ksymbol_event** %5, align 8
  %23 = getelementptr inbounds %struct.perf_ksymbol_event, %struct.perf_ksymbol_event* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @perf_output_begin(%struct.perf_output_handle* %6, %struct.perf_event* %21, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  br label %48

31:                                               ; preds = %15
  %32 = load %struct.perf_ksymbol_event*, %struct.perf_ksymbol_event** %5, align 8
  %33 = getelementptr inbounds %struct.perf_ksymbol_event, %struct.perf_ksymbol_event* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @perf_output_put(%struct.perf_output_handle* %6, i32 %36)
  %38 = load %struct.perf_ksymbol_event*, %struct.perf_ksymbol_event** %5, align 8
  %39 = getelementptr inbounds %struct.perf_ksymbol_event, %struct.perf_ksymbol_event* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.perf_ksymbol_event*, %struct.perf_ksymbol_event** %5, align 8
  %42 = getelementptr inbounds %struct.perf_ksymbol_event, %struct.perf_ksymbol_event* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @__output_copy(%struct.perf_output_handle* %6, i32 %40, i32 %43)
  %45 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %46 = call i32 @perf_event__output_id_sample(%struct.perf_event* %45, %struct.perf_output_handle* %6, %struct.perf_sample_data* %7)
  %47 = call i32 @perf_output_end(%struct.perf_output_handle* %6)
  br label %48

48:                                               ; preds = %31, %30, %14
  ret void
}

declare dso_local i32 @perf_event_ksymbol_match(%struct.perf_event*) #1

declare dso_local i32 @perf_event_header__init_id(%struct.TYPE_4__*, %struct.perf_sample_data*, %struct.perf_event*) #1

declare dso_local i32 @perf_output_begin(%struct.perf_output_handle*, %struct.perf_event*, i32) #1

declare dso_local i32 @perf_output_put(%struct.perf_output_handle*, i32) #1

declare dso_local i32 @__output_copy(%struct.perf_output_handle*, i32, i32) #1

declare dso_local i32 @perf_event__output_id_sample(%struct.perf_event*, %struct.perf_output_handle*, %struct.perf_sample_data*) #1

declare dso_local i32 @perf_output_end(%struct.perf_output_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
