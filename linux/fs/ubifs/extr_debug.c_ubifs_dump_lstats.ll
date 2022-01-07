; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_ubifs_dump_lstats.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_ubifs_dump_lstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@dbg_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"(pid %d) Lprops statistics: empty_lebs %d, idx_lebs  %d\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"\09taken_empty_lebs %d, total_free %lld, total_dirty %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"\09total_used %lld, total_dark %lld, total_dead %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_dump_lstats(%struct.ubifs_lp_stats* %0) #0 {
  %2 = alloca %struct.ubifs_lp_stats*, align 8
  store %struct.ubifs_lp_stats* %0, %struct.ubifs_lp_stats** %2, align 8
  %3 = call i32 @spin_lock(i32* @dbg_lock)
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.ubifs_lp_stats*, %struct.ubifs_lp_stats** %2, align 8
  %8 = getelementptr inbounds %struct.ubifs_lp_stats, %struct.ubifs_lp_stats* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ubifs_lp_stats*, %struct.ubifs_lp_stats** %2, align 8
  %11 = getelementptr inbounds %struct.ubifs_lp_stats, %struct.ubifs_lp_stats* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %9, i32 %12)
  %14 = load %struct.ubifs_lp_stats*, %struct.ubifs_lp_stats** %2, align 8
  %15 = getelementptr inbounds %struct.ubifs_lp_stats, %struct.ubifs_lp_stats* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ubifs_lp_stats*, %struct.ubifs_lp_stats** %2, align 8
  %18 = getelementptr inbounds %struct.ubifs_lp_stats, %struct.ubifs_lp_stats* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ubifs_lp_stats*, %struct.ubifs_lp_stats** %2, align 8
  %21 = getelementptr inbounds %struct.ubifs_lp_stats, %struct.ubifs_lp_stats* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %19, i32 %22)
  %24 = load %struct.ubifs_lp_stats*, %struct.ubifs_lp_stats** %2, align 8
  %25 = getelementptr inbounds %struct.ubifs_lp_stats, %struct.ubifs_lp_stats* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ubifs_lp_stats*, %struct.ubifs_lp_stats** %2, align 8
  %28 = getelementptr inbounds %struct.ubifs_lp_stats, %struct.ubifs_lp_stats* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ubifs_lp_stats*, %struct.ubifs_lp_stats** %2, align 8
  %31 = getelementptr inbounds %struct.ubifs_lp_stats, %struct.ubifs_lp_stats* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %26, i32 %29, i32 %32)
  %34 = call i32 @spin_unlock(i32* @dbg_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
