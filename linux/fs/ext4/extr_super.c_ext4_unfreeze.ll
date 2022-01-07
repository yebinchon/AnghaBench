; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_unfreeze.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_unfreeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @ext4_unfreeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_unfreeze(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %4 = load %struct.super_block*, %struct.super_block** %3, align 8
  %5 = call i64 @sb_rdonly(%struct.super_block* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.TYPE_3__* @EXT4_SB(%struct.super_block* %8)
  %10 = call i64 @ext4_forced_shutdown(%struct.TYPE_3__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %25

13:                                               ; preds = %7
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = call %struct.TYPE_3__* @EXT4_SB(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.super_block*, %struct.super_block** %3, align 8
  %21 = call i32 @ext4_set_feature_journal_needs_recovery(%struct.super_block* %20)
  br label %22

22:                                               ; preds = %19, %13
  %23 = load %struct.super_block*, %struct.super_block** %3, align 8
  %24 = call i32 @ext4_commit_super(%struct.super_block* %23, i32 1)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %12
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local i64 @ext4_forced_shutdown(%struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_3__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_set_feature_journal_needs_recovery(%struct.super_block*) #1

declare dso_local i32 @ext4_commit_super(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
