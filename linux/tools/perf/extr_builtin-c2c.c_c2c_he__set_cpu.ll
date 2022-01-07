; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_c2c_he__set_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_c2c_he__set_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2c_hist_entry = type { i32 }
%struct.perf_sample = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"WARNING: no sample cpu value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c2c_hist_entry*, %struct.perf_sample*)* @c2c_he__set_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c2c_he__set_cpu(%struct.c2c_hist_entry* %0, %struct.perf_sample* %1) #0 {
  %3 = alloca %struct.c2c_hist_entry*, align 8
  %4 = alloca %struct.perf_sample*, align 8
  store %struct.c2c_hist_entry* %0, %struct.c2c_hist_entry** %3, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %4, align 8
  %5 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %6 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, -1
  %9 = zext i1 %8 to i32
  %10 = call i64 @WARN_ONCE(i32 %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %21

13:                                               ; preds = %2
  %14 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %15 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.c2c_hist_entry*, %struct.c2c_hist_entry** %3, align 8
  %18 = getelementptr inbounds %struct.c2c_hist_entry, %struct.c2c_hist_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @set_bit(i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %13, %12
  ret void
}

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
