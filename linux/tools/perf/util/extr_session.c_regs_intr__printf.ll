; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_regs_intr__printf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_regs_intr__printf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sample = type { %struct.regs_dump }
%struct.regs_dump = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"intr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_sample*)* @regs_intr__printf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regs_intr__printf(%struct.perf_sample* %0) #0 {
  %2 = alloca %struct.perf_sample*, align 8
  %3 = alloca %struct.regs_dump*, align 8
  store %struct.perf_sample* %0, %struct.perf_sample** %2, align 8
  %4 = load %struct.perf_sample*, %struct.perf_sample** %2, align 8
  %5 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %4, i32 0, i32 0
  store %struct.regs_dump* %5, %struct.regs_dump** %3, align 8
  %6 = load %struct.regs_dump*, %struct.regs_dump** %3, align 8
  %7 = getelementptr inbounds %struct.regs_dump, %struct.regs_dump* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.regs_dump*, %struct.regs_dump** %3, align 8
  %12 = call i32 @regs__printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.regs_dump* %11)
  br label %13

13:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @regs__printf(i8*, %struct.regs_dump*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
