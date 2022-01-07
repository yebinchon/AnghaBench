; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_preload.c_alloc_lock.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_preload.c_alloc_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_lookup = type { i32 }

@__init_state = common dso_local global i64 0, align 8
@done = common dso_local global i64 0, align 8
@__locks_nr = common dso_local global i32 0, align 4
@__locks = common dso_local global %struct.lock_lookup* null, align 8
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"LOCKDEP error: insufficient LIBLOCKDEP_STATIC_ENTRIES\0A\00", align 1
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lock_lookup* ()* @alloc_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lock_lookup* @alloc_lock() #0 {
  %1 = alloca %struct.lock_lookup*, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @__init_state, align 8
  %4 = load i64, i64* @done, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %23

6:                                                ; preds = %0
  %7 = load i32, i32* @__locks_nr, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @__locks_nr, align 4
  store i32 %7, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load %struct.lock_lookup*, %struct.lock_lookup** @__locks, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.lock_lookup* %10)
  %12 = icmp sge i32 %9, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %6
  %14 = load i32, i32* @STDERR_FILENO, align 4
  %15 = call i32 @dprintf(i32 %14, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EX_UNAVAILABLE, align 4
  %17 = call i32 @exit(i32 %16) #3
  unreachable

18:                                               ; preds = %6
  %19 = load %struct.lock_lookup*, %struct.lock_lookup** @__locks, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.lock_lookup, %struct.lock_lookup* %19, i64 %21
  store %struct.lock_lookup* %22, %struct.lock_lookup** %1, align 8
  br label %25

23:                                               ; preds = %0
  %24 = call %struct.lock_lookup* @malloc(i32 4)
  store %struct.lock_lookup* %24, %struct.lock_lookup** %1, align 8
  br label %25

25:                                               ; preds = %23, %18
  %26 = load %struct.lock_lookup*, %struct.lock_lookup** %1, align 8
  ret %struct.lock_lookup* %26
}

declare dso_local i32 @ARRAY_SIZE(%struct.lock_lookup*) #1

declare dso_local i32 @dprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.lock_lookup* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
