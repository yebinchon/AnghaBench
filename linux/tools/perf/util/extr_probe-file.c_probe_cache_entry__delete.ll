; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_probe_cache_entry__delete.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_probe_cache_entry__delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_cache_entry = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.probe_cache_entry*)* @probe_cache_entry__delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_cache_entry__delete(%struct.probe_cache_entry* %0) #0 {
  %2 = alloca %struct.probe_cache_entry*, align 8
  store %struct.probe_cache_entry* %0, %struct.probe_cache_entry** %2, align 8
  %3 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %2, align 8
  %4 = icmp ne %struct.probe_cache_entry* %3, null
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %2, align 8
  %7 = getelementptr inbounds %struct.probe_cache_entry, %struct.probe_cache_entry* %6, i32 0, i32 3
  %8 = call i32 @list_empty(i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %2, align 8
  %14 = getelementptr inbounds %struct.probe_cache_entry, %struct.probe_cache_entry* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @strlist__delete(i32 %15)
  %17 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %2, align 8
  %18 = getelementptr inbounds %struct.probe_cache_entry, %struct.probe_cache_entry* %17, i32 0, i32 1
  %19 = call i32 @clear_perf_probe_event(i32* %18)
  %20 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %2, align 8
  %21 = getelementptr inbounds %struct.probe_cache_entry, %struct.probe_cache_entry* %20, i32 0, i32 0
  %22 = call i32 @zfree(i32* %21)
  %23 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %2, align 8
  %24 = call i32 @free(%struct.probe_cache_entry* %23)
  br label %25

25:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @strlist__delete(i32) #1

declare dso_local i32 @clear_perf_probe_event(i32*) #1

declare dso_local i32 @zfree(i32*) #1

declare dso_local i32 @free(%struct.probe_cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
