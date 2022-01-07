; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_lock.c_reiserfs_write_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_lock.c_reiserfs_write_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_sb_info = type { i32, i32, i32* }

@current = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reiserfs_write_unlock(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.reiserfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.reiserfs_sb_info* @REISERFS_SB(%struct.super_block* %4)
  store %struct.reiserfs_sb_info* %5, %struct.reiserfs_sb_info** %3, align 8
  %6 = load %struct.reiserfs_sb_info*, %struct.reiserfs_sb_info** %3, align 8
  %7 = getelementptr inbounds %struct.reiserfs_sb_info, %struct.reiserfs_sb_info* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = load i32*, i32** @current, align 8
  %10 = icmp ne i32* %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.reiserfs_sb_info*, %struct.reiserfs_sb_info** %3, align 8
  %14 = getelementptr inbounds %struct.reiserfs_sb_info, %struct.reiserfs_sb_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 8
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.reiserfs_sb_info*, %struct.reiserfs_sb_info** %3, align 8
  %20 = getelementptr inbounds %struct.reiserfs_sb_info, %struct.reiserfs_sb_info* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load %struct.reiserfs_sb_info*, %struct.reiserfs_sb_info** %3, align 8
  %22 = getelementptr inbounds %struct.reiserfs_sb_info, %struct.reiserfs_sb_info* %21, i32 0, i32 1
  %23 = call i32 @mutex_unlock(i32* %22)
  br label %24

24:                                               ; preds = %18, %1
  ret void
}

declare dso_local %struct.reiserfs_sb_info* @REISERFS_SB(%struct.super_block*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
