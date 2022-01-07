; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_glock.c_glock_hash_walk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_glock.c_glock_hash_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32 }
%struct.rhashtable_iter = type { i32 }

@gl_hash_table = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (%struct.gfs2_glock*)*, %struct.gfs2_sbd*)* @glock_hash_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glock_hash_walk(i32 (%struct.gfs2_glock*)* %0, %struct.gfs2_sbd* %1) #0 {
  %3 = alloca i32 (%struct.gfs2_glock*)*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.gfs2_glock*, align 8
  %6 = alloca %struct.rhashtable_iter, align 4
  store i32 (%struct.gfs2_glock*)* %0, i32 (%struct.gfs2_glock*)** %3, align 8
  store %struct.gfs2_sbd* %1, %struct.gfs2_sbd** %4, align 8
  %7 = call i32 @rhashtable_walk_enter(i32* @gl_hash_table, %struct.rhashtable_iter* %6)
  br label %8

8:                                                ; preds = %39, %2
  %9 = call i32 @rhashtable_walk_start(%struct.rhashtable_iter* %6)
  br label %10

10:                                               ; preds = %36, %8
  %11 = call %struct.gfs2_glock* @rhashtable_walk_next(%struct.rhashtable_iter* %6)
  store %struct.gfs2_glock* %11, %struct.gfs2_glock** %5, align 8
  %12 = icmp ne %struct.gfs2_glock* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %struct.gfs2_glock*, %struct.gfs2_glock** %5, align 8
  %15 = call i32 @IS_ERR(%struct.gfs2_glock* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi i1 [ false, %10 ], [ %17, %13 ]
  br i1 %19, label %20, label %37

20:                                               ; preds = %18
  %21 = load %struct.gfs2_glock*, %struct.gfs2_glock** %5, align 8
  %22 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %23, align 8
  %25 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %26 = icmp eq %struct.gfs2_sbd* %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.gfs2_glock*, %struct.gfs2_glock** %5, align 8
  %29 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %28, i32 0, i32 0
  %30 = call i64 @lockref_get_not_dead(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32 (%struct.gfs2_glock*)*, i32 (%struct.gfs2_glock*)** %3, align 8
  %34 = load %struct.gfs2_glock*, %struct.gfs2_glock** %5, align 8
  %35 = call i32 %33(%struct.gfs2_glock* %34)
  br label %36

36:                                               ; preds = %32, %27, %20
  br label %10

37:                                               ; preds = %18
  %38 = call i32 @rhashtable_walk_stop(%struct.rhashtable_iter* %6)
  br label %39

39:                                               ; preds = %37
  %40 = call i32 (...) @cond_resched()
  %41 = load %struct.gfs2_glock*, %struct.gfs2_glock** %5, align 8
  %42 = load i32, i32* @EAGAIN, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.gfs2_glock* @ERR_PTR(i32 %43)
  %45 = icmp eq %struct.gfs2_glock* %41, %44
  br i1 %45, label %8, label %46

46:                                               ; preds = %39
  %47 = call i32 @rhashtable_walk_exit(%struct.rhashtable_iter* %6)
  ret void
}

declare dso_local i32 @rhashtable_walk_enter(i32*, %struct.rhashtable_iter*) #1

declare dso_local i32 @rhashtable_walk_start(%struct.rhashtable_iter*) #1

declare dso_local %struct.gfs2_glock* @rhashtable_walk_next(%struct.rhashtable_iter*) #1

declare dso_local i32 @IS_ERR(%struct.gfs2_glock*) #1

declare dso_local i64 @lockref_get_not_dead(i32*) #1

declare dso_local i32 @rhashtable_walk_stop(%struct.rhashtable_iter*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local %struct.gfs2_glock* @ERR_PTR(i32) #1

declare dso_local i32 @rhashtable_walk_exit(%struct.rhashtable_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
