; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_platform.c_pstore_timefunc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_platform.c_pstore_timefunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }

@pstore_new_entry = common dso_local global i64 0, align 8
@pstore_work = common dso_local global i32 0, align 4
@pstore_update_ms = common dso_local global i64 0, align 8
@pstore_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @pstore_timefunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pstore_timefunc(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %3 = load i64, i64* @pstore_new_entry, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  store i64 0, i64* @pstore_new_entry, align 8
  %6 = call i32 @schedule_work(i32* @pstore_work)
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i64, i64* @pstore_update_ms, align 8
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i64, i64* @pstore_update_ms, align 8
  %13 = call i64 @msecs_to_jiffies(i64 %12)
  %14 = add nsw i64 %11, %13
  %15 = call i32 @mod_timer(i32* @pstore_timer, i64 %14)
  br label %16

16:                                               ; preds = %10, %7
  ret void
}

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
