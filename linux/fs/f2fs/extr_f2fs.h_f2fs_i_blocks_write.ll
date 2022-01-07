; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_f2fs_i_blocks_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_f2fs_i_blocks_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@FI_DIRTY_INODE = common dso_local global i32 0, align 4
@FI_AUTO_RECOVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32, i32, i32)* @f2fs_i_blocks_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f2fs_i_blocks_write(%struct.inode* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = load i32, i32* @FI_DIRTY_INODE, align 4
  %13 = call i32 @is_inode_flag_set(%struct.inode* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = load i32, i32* @FI_AUTO_RECOVER, align 4
  %19 = call i32 @is_inode_flag_set(%struct.inode* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dquot_claim_block(%struct.inode* %26, i32 %27)
  br label %33

29:                                               ; preds = %22
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dquot_alloc_block_nofail(%struct.inode* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %25
  br label %38

34:                                               ; preds = %4
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dquot_free_block(%struct.inode* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %33
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = call i32 @f2fs_mark_inode_dirty_sync(%struct.inode* %39, i32 1)
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43, %38
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = load i32, i32* @FI_AUTO_RECOVER, align 4
  %49 = call i32 @set_inode_flag(%struct.inode* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %43
  ret void
}

declare dso_local i32 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i32 @dquot_claim_block(%struct.inode*, i32) #1

declare dso_local i32 @dquot_alloc_block_nofail(%struct.inode*, i32) #1

declare dso_local i32 @dquot_free_block(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_mark_inode_dirty_sync(%struct.inode*, i32) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
