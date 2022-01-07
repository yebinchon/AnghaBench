; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_probe_cache_entry__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_probe_cache_entry__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_cache_entry = type { i32, i32, i32, i32 }
%struct.perf_probe_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.probe_cache_entry* (%struct.perf_probe_event*)* @probe_cache_entry__new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.probe_cache_entry* @probe_cache_entry__new(%struct.perf_probe_event* %0) #0 {
  %2 = alloca %struct.probe_cache_entry*, align 8
  %3 = alloca %struct.perf_probe_event*, align 8
  %4 = alloca %struct.probe_cache_entry*, align 8
  store %struct.perf_probe_event* %0, %struct.perf_probe_event** %3, align 8
  %5 = call %struct.probe_cache_entry* @zalloc(i32 16)
  store %struct.probe_cache_entry* %5, %struct.probe_cache_entry** %4, align 8
  %6 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %4, align 8
  %7 = icmp ne %struct.probe_cache_entry* %6, null
  br i1 %7, label %8, label %45

8:                                                ; preds = %1
  %9 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %4, align 8
  %10 = getelementptr inbounds %struct.probe_cache_entry, %struct.probe_cache_entry* %9, i32 0, i32 3
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = call i32 @strlist__new(i32* null, i32* null)
  %13 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %4, align 8
  %14 = getelementptr inbounds %struct.probe_cache_entry, %struct.probe_cache_entry* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %4, align 8
  %16 = getelementptr inbounds %struct.probe_cache_entry, %struct.probe_cache_entry* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  %20 = call i32 @zfree(%struct.probe_cache_entry** %4)
  br label %44

21:                                               ; preds = %8
  %22 = load %struct.perf_probe_event*, %struct.perf_probe_event** %3, align 8
  %23 = icmp ne %struct.perf_probe_event* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load %struct.perf_probe_event*, %struct.perf_probe_event** %3, align 8
  %26 = call i32 @synthesize_perf_probe_command(%struct.perf_probe_event* %25)
  %27 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %4, align 8
  %28 = getelementptr inbounds %struct.probe_cache_entry, %struct.probe_cache_entry* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %4, align 8
  %30 = getelementptr inbounds %struct.probe_cache_entry, %struct.probe_cache_entry* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %4, align 8
  %35 = getelementptr inbounds %struct.probe_cache_entry, %struct.probe_cache_entry* %34, i32 0, i32 0
  %36 = load %struct.perf_probe_event*, %struct.perf_probe_event** %3, align 8
  %37 = call i64 @perf_probe_event__copy(i32* %35, %struct.perf_probe_event* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33, %24
  %40 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %4, align 8
  %41 = call i32 @probe_cache_entry__delete(%struct.probe_cache_entry* %40)
  store %struct.probe_cache_entry* null, %struct.probe_cache_entry** %2, align 8
  br label %47

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %21
  br label %44

44:                                               ; preds = %43, %19
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %4, align 8
  store %struct.probe_cache_entry* %46, %struct.probe_cache_entry** %2, align 8
  br label %47

47:                                               ; preds = %45, %39
  %48 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %2, align 8
  ret %struct.probe_cache_entry* %48
}

declare dso_local %struct.probe_cache_entry* @zalloc(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @strlist__new(i32*, i32*) #1

declare dso_local i32 @zfree(%struct.probe_cache_entry**) #1

declare dso_local i32 @synthesize_perf_probe_command(%struct.perf_probe_event*) #1

declare dso_local i64 @perf_probe_event__copy(i32*, %struct.perf_probe_event*) #1

declare dso_local i32 @probe_cache_entry__delete(%struct.probe_cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
