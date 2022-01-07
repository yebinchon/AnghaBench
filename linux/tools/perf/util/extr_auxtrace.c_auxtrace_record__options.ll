; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_record__options.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_record__options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_record = type { {}* }
%struct.evlist = type { i32 }
%struct.record_opts = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auxtrace_record__options(%struct.auxtrace_record* %0, %struct.evlist* %1, %struct.record_opts* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.auxtrace_record*, align 8
  %6 = alloca %struct.evlist*, align 8
  %7 = alloca %struct.record_opts*, align 8
  store %struct.auxtrace_record* %0, %struct.auxtrace_record** %5, align 8
  store %struct.evlist* %1, %struct.evlist** %6, align 8
  store %struct.record_opts* %2, %struct.record_opts** %7, align 8
  %8 = load %struct.auxtrace_record*, %struct.auxtrace_record** %5, align 8
  %9 = icmp ne %struct.auxtrace_record* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load %struct.auxtrace_record*, %struct.auxtrace_record** %5, align 8
  %12 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.auxtrace_record*, %struct.evlist*, %struct.record_opts*)**
  %14 = load i32 (%struct.auxtrace_record*, %struct.evlist*, %struct.record_opts*)*, i32 (%struct.auxtrace_record*, %struct.evlist*, %struct.record_opts*)** %13, align 8
  %15 = load %struct.auxtrace_record*, %struct.auxtrace_record** %5, align 8
  %16 = load %struct.evlist*, %struct.evlist** %6, align 8
  %17 = load %struct.record_opts*, %struct.record_opts** %7, align 8
  %18 = call i32 %14(%struct.auxtrace_record* %15, %struct.evlist* %16, %struct.record_opts* %17)
  store i32 %18, i32* %4, align 4
  br label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %10
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
