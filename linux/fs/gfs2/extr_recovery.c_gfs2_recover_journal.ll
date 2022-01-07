; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_recovery.c_gfs2_recover_journal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_recovery.c_gfs2_recover_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_jdesc = type { i32, i32, i32 }

@JDF_RECOVERY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@gfs_recovery_wq = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_recover_journal(%struct.gfs2_jdesc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_jdesc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gfs2_jdesc* %0, %struct.gfs2_jdesc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @JDF_RECOVERY, align 4
  %8 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %4, align 8
  %9 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %8, i32 0, i32 1
  %10 = call i64 @test_and_set_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %43

15:                                               ; preds = %2
  %16 = load i32, i32* @gfs_recovery_wq, align 4
  %17 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %4, align 8
  %18 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %17, i32 0, i32 2
  %19 = call i32 @queue_work(i32 %16, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %15
  %28 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %4, align 8
  %29 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %28, i32 0, i32 1
  %30 = load i32, i32* @JDF_RECOVERY, align 4
  %31 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %32 = call i32 @wait_on_bit(i32* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %15
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %4, align 8
  %38 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  br label %41

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i32 [ %39, %36 ], [ 0, %40 ]
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wait_on_bit(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
