; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_switch_output_size_warn.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_switch_output_size_warn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record = type { %struct.switch_output, %struct.TYPE_2__ }
%struct.switch_output = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [106 x i8] c"WARNING: switch-output data size lower than wakeup kernel buffer size (%s) expect bigger perf.data sizes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.record*)* @switch_output_size_warn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_output_size_warn(%struct.record* %0) #0 {
  %2 = alloca %struct.record*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.switch_output*, align 8
  %5 = alloca [100 x i8], align 16
  store %struct.record* %0, %struct.record** %2, align 8
  %6 = load %struct.record*, %struct.record** %2, align 8
  %7 = getelementptr inbounds %struct.record, %struct.record* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @evlist__mmap_size(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.record*, %struct.record** %2, align 8
  %12 = getelementptr inbounds %struct.record, %struct.record* %11, i32 0, i32 0
  store %struct.switch_output* %12, %struct.switch_output** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sdiv i32 %13, 2
  store i32 %14, i32* %3, align 4
  %15 = load %struct.switch_output*, %struct.switch_output** %4, align 8
  %16 = getelementptr inbounds %struct.switch_output, %struct.switch_output* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @unit_number__scnprintf(i8* %21, i32 100, i32 %22)
  %24 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %25 = call i32 @pr_warning(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @evlist__mmap_size(i32) #1

declare dso_local i32 @unit_number__scnprintf(i8*, i32, i32) #1

declare dso_local i32 @pr_warning(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
