; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_close_dir.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_close_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_data_file = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_data_file*, i32)* @close_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_dir(%struct.perf_data_file* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_data_file*, align 8
  %4 = alloca i32, align 4
  store %struct.perf_data_file* %0, %struct.perf_data_file** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %9, %2
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %4, align 4
  %8 = icmp sge i32 %7, 1
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load %struct.perf_data_file*, %struct.perf_data_file** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.perf_data_file, %struct.perf_data_file* %10, i64 %12
  %14 = getelementptr inbounds %struct.perf_data_file, %struct.perf_data_file* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @close(i32 %15)
  %17 = load %struct.perf_data_file*, %struct.perf_data_file** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.perf_data_file, %struct.perf_data_file* %17, i64 %19
  %21 = getelementptr inbounds %struct.perf_data_file, %struct.perf_data_file* %20, i32 0, i32 0
  %22 = call i32 @zfree(i32* %21)
  br label %5

23:                                               ; preds = %5
  %24 = load %struct.perf_data_file*, %struct.perf_data_file** %3, align 8
  %25 = call i32 @free(%struct.perf_data_file* %24)
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @zfree(i32*) #1

declare dso_local i32 @free(%struct.perf_data_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
