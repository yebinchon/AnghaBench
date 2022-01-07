; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_record__info_priv_size.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_record__info_priv_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_record = type { {}* }
%struct.evlist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @auxtrace_record__info_priv_size(%struct.auxtrace_record* %0, %struct.evlist* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.auxtrace_record*, align 8
  %5 = alloca %struct.evlist*, align 8
  store %struct.auxtrace_record* %0, %struct.auxtrace_record** %4, align 8
  store %struct.evlist* %1, %struct.evlist** %5, align 8
  %6 = load %struct.auxtrace_record*, %struct.auxtrace_record** %4, align 8
  %7 = icmp ne %struct.auxtrace_record* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load %struct.auxtrace_record*, %struct.auxtrace_record** %4, align 8
  %10 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i64 (%struct.auxtrace_record*, %struct.evlist*)**
  %12 = load i64 (%struct.auxtrace_record*, %struct.evlist*)*, i64 (%struct.auxtrace_record*, %struct.evlist*)** %11, align 8
  %13 = load %struct.auxtrace_record*, %struct.auxtrace_record** %4, align 8
  %14 = load %struct.evlist*, %struct.evlist** %5, align 8
  %15 = call i64 %12(%struct.auxtrace_record* %13, %struct.evlist* %14)
  store i64 %15, i64* %3, align 8
  br label %17

16:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %17

17:                                               ; preds = %16, %8
  %18 = load i64, i64* %3, align 8
  ret i64 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
