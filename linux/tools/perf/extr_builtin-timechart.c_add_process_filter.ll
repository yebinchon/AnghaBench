; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_add_process_filter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_add_process_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process_filter = type { i32, %struct.process_filter*, i32 }

@process_filter = common dso_local global %struct.process_filter* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @add_process_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_process_filter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.process_filter*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @strtoull(i8* %5, i32* null, i32 10)
  store i32 %6, i32* %3, align 4
  %7 = call %struct.process_filter* @malloc(i32 24)
  store %struct.process_filter* %7, %struct.process_filter** %4, align 8
  %8 = load %struct.process_filter*, %struct.process_filter** %4, align 8
  %9 = icmp ne %struct.process_filter* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %23

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @strdup(i8* %12)
  %14 = load %struct.process_filter*, %struct.process_filter** %4, align 8
  %15 = getelementptr inbounds %struct.process_filter, %struct.process_filter* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.process_filter*, %struct.process_filter** %4, align 8
  %18 = getelementptr inbounds %struct.process_filter, %struct.process_filter* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.process_filter*, %struct.process_filter** @process_filter, align 8
  %20 = load %struct.process_filter*, %struct.process_filter** %4, align 8
  %21 = getelementptr inbounds %struct.process_filter, %struct.process_filter* %20, i32 0, i32 1
  store %struct.process_filter* %19, %struct.process_filter** %21, align 8
  %22 = load %struct.process_filter*, %struct.process_filter** %4, align 8
  store %struct.process_filter* %22, %struct.process_filter** @process_filter, align 8
  br label %23

23:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @strtoull(i8*, i32*, i32) #1

declare dso_local %struct.process_filter* @malloc(i32) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
