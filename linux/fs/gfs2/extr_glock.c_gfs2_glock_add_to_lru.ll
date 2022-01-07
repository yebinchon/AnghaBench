; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_glock.c_gfs2_glock_add_to_lru.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_glock.c_gfs2_glock_add_to_lru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GLOF_LRU = common dso_local global i32 0, align 4
@lru_lock = common dso_local global i32 0, align 4
@lru_list = common dso_local global i32 0, align 4
@GLF_LRU = common dso_local global i32 0, align 4
@lru_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_glock_add_to_lru(%struct.gfs2_glock* %0) #0 {
  %2 = alloca %struct.gfs2_glock*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %2, align 8
  %3 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %4 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @GLOF_LRU, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %33

12:                                               ; preds = %1
  %13 = call i32 @spin_lock(i32* @lru_lock)
  %14 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %15 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %14, i32 0, i32 1
  %16 = call i32 @list_del(i32* %15)
  %17 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %18 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %17, i32 0, i32 1
  %19 = call i32 @list_add_tail(i32* %18, i32* @lru_list)
  %20 = load i32, i32* @GLF_LRU, align 4
  %21 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %22 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %21, i32 0, i32 0
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %12
  %26 = load i32, i32* @GLF_LRU, align 4
  %27 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %28 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %27, i32 0, i32 0
  %29 = call i32 @set_bit(i32 %26, i32* %28)
  %30 = call i32 @atomic_inc(i32* @lru_count)
  br label %31

31:                                               ; preds = %25, %12
  %32 = call i32 @spin_unlock(i32* @lru_lock)
  br label %33

33:                                               ; preds = %31, %11
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
