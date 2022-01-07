; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_is_dir.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_is_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_data = type { i32 }
%struct.stat = type { i32 }

@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_data*)* @is_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_dir(%struct.perf_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_data*, align 8
  %4 = alloca %struct.stat, align 4
  store %struct.perf_data* %0, %struct.perf_data** %3, align 8
  %5 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %6 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @stat(i32 %7, %struct.stat* %4)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @S_IFMT, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @S_IFDIR, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %11, %10
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i64 @stat(i32, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
