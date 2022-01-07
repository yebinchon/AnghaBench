; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_freeze.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @ext4_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_freeze(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call i64 @sb_rdonly(%struct.super_block* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

10:                                               ; preds = %1
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %10
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @jbd2_journal_lock_updates(i32* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @jbd2_journal_flush(i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %31

25:                                               ; preds = %17
  %26 = load %struct.super_block*, %struct.super_block** %3, align 8
  %27 = call i32 @ext4_clear_feature_journal_needs_recovery(%struct.super_block* %26)
  br label %28

28:                                               ; preds = %25, %10
  %29 = load %struct.super_block*, %struct.super_block** %3, align 8
  %30 = call i32 @ext4_commit_super(%struct.super_block* %29, i32 1)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32*, i32** %5, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @jbd2_journal_unlock_updates(i32* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local %struct.TYPE_2__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @jbd2_journal_lock_updates(i32*) #1

declare dso_local i32 @jbd2_journal_flush(i32*) #1

declare dso_local i32 @ext4_clear_feature_journal_needs_recovery(%struct.super_block*) #1

declare dso_local i32 @ext4_commit_super(%struct.super_block*, i32) #1

declare dso_local i32 @jbd2_journal_unlock_updates(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
