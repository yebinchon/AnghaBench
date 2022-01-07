; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events_term__clone.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events_term__clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_events_term = type { %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_events_term__clone(%struct.parse_events_term** %0, %struct.parse_events_term* %1) #0 {
  %3 = alloca %struct.parse_events_term**, align 8
  %4 = alloca %struct.parse_events_term*, align 8
  %5 = alloca %struct.parse_events_term, align 4
  store %struct.parse_events_term** %0, %struct.parse_events_term*** %3, align 8
  store %struct.parse_events_term* %1, %struct.parse_events_term** %4, align 8
  %6 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %5, i32 0, i32 0
  %7 = bitcast %struct.TYPE_2__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 8, i1 false)
  %8 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %5, i32 0, i32 1
  %9 = load %struct.parse_events_term*, %struct.parse_events_term** %4, align 8
  %10 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %5, i32 0, i32 2
  %13 = load %struct.parse_events_term*, %struct.parse_events_term** %4, align 8
  %14 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %5, i32 0, i32 3
  %17 = load %struct.parse_events_term*, %struct.parse_events_term** %4, align 8
  %18 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %5, i32 0, i32 4
  %21 = load %struct.parse_events_term*, %struct.parse_events_term** %4, align 8
  %22 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %5, i32 0, i32 5
  %25 = load %struct.parse_events_term*, %struct.parse_events_term** %4, align 8
  %26 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 4
  %28 = load %struct.parse_events_term**, %struct.parse_events_term*** %3, align 8
  %29 = load %struct.parse_events_term*, %struct.parse_events_term** %4, align 8
  %30 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.parse_events_term*, %struct.parse_events_term** %4, align 8
  %34 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @new_term(%struct.parse_events_term** %28, %struct.parse_events_term* %5, i32 %32, i32 %36)
  ret i32 %37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @new_term(%struct.parse_events_term**, %struct.parse_events_term*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
