; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_force_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_force_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_force_commit(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load %struct.super_block*, %struct.super_block** %3, align 8
  %6 = call i64 @sb_rdonly(%struct.super_block* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

9:                                                ; preds = %1
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @ext4_journal_force_commit(i32* %14)
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %9, %8
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local %struct.TYPE_2__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_journal_force_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
