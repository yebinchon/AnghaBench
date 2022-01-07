; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_iaddr_entry.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_iaddr_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_hpp_fmt = type { i32 }
%struct.perf_hpp = type { i32, i32 }
%struct.hist_entry = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_hpp_fmt*, %struct.perf_hpp*, %struct.hist_entry*)* @iaddr_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iaddr_entry(%struct.perf_hpp_fmt* %0, %struct.perf_hpp* %1, %struct.hist_entry* %2) #0 {
  %4 = alloca %struct.perf_hpp_fmt*, align 8
  %5 = alloca %struct.perf_hpp*, align 8
  %6 = alloca %struct.hist_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [20 x i8], align 16
  store %struct.perf_hpp_fmt* %0, %struct.perf_hpp_fmt** %4, align 8
  store %struct.perf_hpp* %1, %struct.perf_hpp** %5, align 8
  store %struct.hist_entry* %2, %struct.hist_entry** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %4, align 8
  %11 = load %struct.perf_hpp*, %struct.perf_hpp** %5, align 8
  %12 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %13 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @c2c_width(%struct.perf_hpp_fmt* %10, %struct.perf_hpp* %11, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %17 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %22 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %20, %3
  %28 = load %struct.perf_hpp*, %struct.perf_hpp** %5, align 8
  %29 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.perf_hpp*, %struct.perf_hpp** %5, align 8
  %32 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @HEX_STR(i8* %35, i32 %36)
  %38 = call i32 @scnprintf(i32 %30, i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37)
  ret i32 %38
}

declare dso_local i32 @c2c_width(%struct.perf_hpp_fmt*, %struct.perf_hpp*, i32) #1

declare dso_local i32 @scnprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @HEX_STR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
