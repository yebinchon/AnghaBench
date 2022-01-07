; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_glock.c_gfs2_glock_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_glock.c_gfs2_glock_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, i32 }

@gl_hash_table = common dso_local global i32 0, align 4
@ht_parms = common dso_local global i32 0, align 4
@gfs2_glock_dealloc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_glock_free(%struct.gfs2_glock* %0) #0 {
  %2 = alloca %struct.gfs2_glock*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %2, align 8
  %4 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %5 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  store %struct.gfs2_sbd* %7, %struct.gfs2_sbd** %3, align 8
  %8 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %9 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %8, i32 0, i32 2
  %10 = call i32 @atomic_read(i32* %9)
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %13 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %12, i32 0, i32 1
  %14 = load i32, i32* @ht_parms, align 4
  %15 = call i32 @rhashtable_remove_fast(i32* @gl_hash_table, i32* %13, i32 %14)
  %16 = call i32 (...) @smp_mb()
  %17 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %18 = call i32 @wake_up_glock(%struct.gfs2_glock* %17)
  %19 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %20 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %19, i32 0, i32 0
  %21 = load i32, i32* @gfs2_glock_dealloc, align 4
  %22 = call i32 @call_rcu(i32* %20, i32 %21)
  %23 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %24 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %23, i32 0, i32 1
  %25 = call i64 @atomic_dec_and_test(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %29 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %28, i32 0, i32 0
  %30 = call i32 @wake_up(i32* %29)
  br label %31

31:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @wake_up_glock(%struct.gfs2_glock*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
