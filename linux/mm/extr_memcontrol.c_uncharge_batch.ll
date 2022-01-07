; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_uncharge_batch.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_uncharge_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uncharge_gather = type { i64, i64, i64, i64, i64, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@memory_cgrp_subsys = common dso_local global i32 0, align 4
@MEMCG_RSS = common dso_local global i32 0, align 4
@MEMCG_CACHE = common dso_local global i32 0, align 4
@MEMCG_RSS_HUGE = common dso_local global i32 0, align 4
@NR_SHMEM = common dso_local global i32 0, align 4
@PGPGOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uncharge_gather*)* @uncharge_batch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uncharge_batch(%struct.uncharge_gather* %0) #0 {
  %2 = alloca %struct.uncharge_gather*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.uncharge_gather* %0, %struct.uncharge_gather** %2, align 8
  %5 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %6 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %9 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = add i64 %7, %10
  %12 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %13 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %11, %14
  store i64 %15, i64* %3, align 8
  %16 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %17 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %16, i32 0, i32 5
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = call i32 @mem_cgroup_is_root(%struct.TYPE_8__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %60, label %21

21:                                               ; preds = %1
  %22 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %23 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %22, i32 0, i32 5
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @page_counter_uncharge(i32* %25, i64 %26)
  %28 = call i64 (...) @do_memsw_account()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %32 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %31, i32 0, i32 5
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @page_counter_uncharge(i32* %34, i64 %35)
  br label %37

37:                                               ; preds = %30, %21
  %38 = load i32, i32* @memory_cgrp_subsys, align 4
  %39 = call i32 @cgroup_subsys_on_dfl(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %37
  %42 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %43 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %48 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %47, i32 0, i32 5
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %52 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @page_counter_uncharge(i32* %50, i64 %53)
  br label %55

55:                                               ; preds = %46, %41, %37
  %56 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %57 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %56, i32 0, i32 5
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = call i32 @memcg_oom_recover(%struct.TYPE_8__* %58)
  br label %60

60:                                               ; preds = %55, %1
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @local_irq_save(i64 %61)
  %63 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %64 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %63, i32 0, i32 5
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = load i32, i32* @MEMCG_RSS, align 4
  %67 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %68 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub i64 0, %69
  %71 = call i32 @__mod_memcg_state(%struct.TYPE_8__* %65, i32 %66, i64 %70)
  %72 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %73 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %72, i32 0, i32 5
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = load i32, i32* @MEMCG_CACHE, align 4
  %76 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %77 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 0, %78
  %80 = call i32 @__mod_memcg_state(%struct.TYPE_8__* %74, i32 %75, i64 %79)
  %81 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %82 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %81, i32 0, i32 5
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load i32, i32* @MEMCG_RSS_HUGE, align 4
  %85 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %86 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 0, %87
  %89 = call i32 @__mod_memcg_state(%struct.TYPE_8__* %83, i32 %84, i64 %88)
  %90 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %91 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %90, i32 0, i32 5
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load i32, i32* @NR_SHMEM, align 4
  %94 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %95 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = sub i64 0, %96
  %98 = call i32 @__mod_memcg_state(%struct.TYPE_8__* %92, i32 %93, i64 %97)
  %99 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %100 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %99, i32 0, i32 5
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = load i32, i32* @PGPGOUT, align 4
  %103 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %104 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @__count_memcg_events(%struct.TYPE_8__* %101, i32 %102, i32 %105)
  %107 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %108 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %107, i32 0, i32 5
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i64, i64* %3, align 8
  %115 = call i32 @__this_cpu_add(i32 %113, i64 %114)
  %116 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %117 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %116, i32 0, i32 5
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %120 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @memcg_check_events(%struct.TYPE_8__* %118, i32 %121)
  %123 = load i64, i64* %4, align 8
  %124 = call i32 @local_irq_restore(i64 %123)
  %125 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %126 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %125, i32 0, i32 5
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = call i32 @mem_cgroup_is_root(%struct.TYPE_8__* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %60
  %131 = load %struct.uncharge_gather*, %struct.uncharge_gather** %2, align 8
  %132 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %131, i32 0, i32 5
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i64, i64* %3, align 8
  %136 = call i32 @css_put_many(i32* %134, i64 %135)
  br label %137

137:                                              ; preds = %130, %60
  ret void
}

declare dso_local i32 @mem_cgroup_is_root(%struct.TYPE_8__*) #1

declare dso_local i32 @page_counter_uncharge(i32*, i64) #1

declare dso_local i64 @do_memsw_account(...) #1

declare dso_local i32 @cgroup_subsys_on_dfl(i32) #1

declare dso_local i32 @memcg_oom_recover(%struct.TYPE_8__*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__mod_memcg_state(%struct.TYPE_8__*, i32, i64) #1

declare dso_local i32 @__count_memcg_events(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @__this_cpu_add(i32, i64) #1

declare dso_local i32 @memcg_check_events(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @css_put_many(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
