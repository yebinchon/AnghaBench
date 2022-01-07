; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_probe_cache_entry__compare.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_probe_cache_entry__compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_cache_entry = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.strfilter = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.probe_cache_entry*, %struct.strfilter*)* @probe_cache_entry__compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_cache_entry__compare(%struct.probe_cache_entry* %0, %struct.strfilter* %1) #0 {
  %3 = alloca %struct.probe_cache_entry*, align 8
  %4 = alloca %struct.strfilter*, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca i8*, align 8
  store %struct.probe_cache_entry* %0, %struct.probe_cache_entry** %3, align 8
  store %struct.strfilter* %1, %struct.strfilter** %4, align 8
  %7 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %3, align 8
  %8 = getelementptr inbounds %struct.probe_cache_entry, %struct.probe_cache_entry* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %3, align 8
  %11 = getelementptr inbounds %struct.probe_cache_entry, %struct.probe_cache_entry* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %17 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %3, align 8
  %18 = getelementptr inbounds %struct.probe_cache_entry, %struct.probe_cache_entry* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %3, align 8
  %22 = getelementptr inbounds %struct.probe_cache_entry, %struct.probe_cache_entry* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @snprintf(i8* %16, i32 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %24)
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  store i8* %26, i8** %6, align 8
  br label %27

27:                                               ; preds = %15, %2
  %28 = load %struct.strfilter*, %struct.strfilter** %4, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @strfilter__compare(%struct.strfilter* %28, i8* %29)
  ret i32 %30
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @strfilter__compare(%struct.strfilter*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
