; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_lru_cache.c_lc_seq_printf_stats.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_lru_cache.c_lc_seq_printf_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.lru_cache = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [73 x i8] c"\09%s: used:%u/%u hits:%lu misses:%lu starving:%lu locked:%lu changed:%lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lc_seq_printf_stats(%struct.seq_file* %0, %struct.lru_cache* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.lru_cache*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.lru_cache* %1, %struct.lru_cache** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = load %struct.lru_cache*, %struct.lru_cache** %4, align 8
  %7 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.lru_cache*, %struct.lru_cache** %4, align 8
  %10 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.lru_cache*, %struct.lru_cache** %4, align 8
  %13 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.lru_cache*, %struct.lru_cache** %4, align 8
  %16 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.lru_cache*, %struct.lru_cache** %4, align 8
  %19 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.lru_cache*, %struct.lru_cache** %4, align 8
  %22 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.lru_cache*, %struct.lru_cache** %4, align 8
  %25 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.lru_cache*, %struct.lru_cache** %4, align 8
  %28 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @seq_printf(%struct.seq_file* %5, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11, i32 %14, i32 %17, i32 %20, i32 %23, i32 %26, i32 %29)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
