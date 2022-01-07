; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_glock.c_gfs2_glock_finish_truncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_glock.c_gfs2_glock_finish_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.gfs2_glock* }
%struct.gfs2_glock = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GLF_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_glock_finish_truncate(%struct.gfs2_inode* %0) #0 {
  %2 = alloca %struct.gfs2_inode*, align 8
  %3 = alloca %struct.gfs2_glock*, align 8
  %4 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %2, align 8
  %5 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %6 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %5, i32 0, i32 0
  %7 = load %struct.gfs2_glock*, %struct.gfs2_glock** %6, align 8
  store %struct.gfs2_glock* %7, %struct.gfs2_glock** %3, align 8
  %8 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %9 = call i32 @gfs2_truncatei_resume(%struct.gfs2_inode* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %11 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @gfs2_assert_withdraw(i32 %13, i32 %16)
  %18 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %19 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load i32, i32* @GLF_LOCK, align 4
  %23 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %24 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %23, i32 0, i32 1
  %25 = call i32 @clear_bit(i32 %22, i32* %24)
  %26 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %27 = call i32 @run_queue(%struct.gfs2_glock* %26, i32 1)
  %28 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %29 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  ret void
}

declare dso_local i32 @gfs2_truncatei_resume(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_assert_withdraw(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @run_queue(%struct.gfs2_glock*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
