; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_mark_recovery_complete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_mark_recovery_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_super_block = type { i32 }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.ext4_super_block*)* @ext4_mark_recovery_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_mark_recovery_complete(%struct.super_block* %0, %struct.ext4_super_block* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ext4_super_block*, align 8
  %5 = alloca i32*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.ext4_super_block* %1, %struct.ext4_super_block** %4, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %5, align 8
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = call i32 @ext4_has_feature_journal(%struct.super_block* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  br label %42

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @jbd2_journal_lock_updates(i32* %19)
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @jbd2_journal_flush(i32* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %39

25:                                               ; preds = %18
  %26 = load %struct.super_block*, %struct.super_block** %3, align 8
  %27 = call i64 @ext4_has_feature_journal_needs_recovery(%struct.super_block* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load %struct.super_block*, %struct.super_block** %3, align 8
  %31 = call i64 @sb_rdonly(%struct.super_block* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.super_block*, %struct.super_block** %3, align 8
  %35 = call i32 @ext4_clear_feature_journal_needs_recovery(%struct.super_block* %34)
  %36 = load %struct.super_block*, %struct.super_block** %3, align 8
  %37 = call i32 @ext4_commit_super(%struct.super_block* %36, i32 1)
  br label %38

38:                                               ; preds = %33, %29, %25
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @jbd2_journal_unlock_updates(i32* %40)
  br label %42

42:                                               ; preds = %39, %13
  ret void
}

declare dso_local %struct.TYPE_2__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_has_feature_journal(%struct.super_block*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @jbd2_journal_lock_updates(i32*) #1

declare dso_local i64 @jbd2_journal_flush(i32*) #1

declare dso_local i64 @ext4_has_feature_journal_needs_recovery(%struct.super_block*) #1

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @ext4_clear_feature_journal_needs_recovery(%struct.super_block*) #1

declare dso_local i32 @ext4_commit_super(%struct.super_block*, i32) #1

declare dso_local i32 @jbd2_journal_unlock_updates(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
