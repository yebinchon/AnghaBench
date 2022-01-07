; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_insert_delayed_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_insert_delayed_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_sb_info = type { i32 }

@ext4_es_is_delonly = common dso_local global i32 0, align 4
@ext4_es_is_mapped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @ext4_insert_delayed_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_insert_delayed_block(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext4_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ext4_sb_info* @EXT4_SB(i32 %10)
  store %struct.ext4_sb_info* %11, %struct.ext4_sb_info** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %13 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = call i32 @ext4_da_reserve_space(%struct.inode* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %62

22:                                               ; preds = %16
  br label %57

23:                                               ; preds = %2
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ext4_es_scan_clu(%struct.inode* %24, i32* @ext4_es_is_delonly, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %56, label %28

28:                                               ; preds = %23
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @ext4_es_scan_clu(%struct.inode* %29, i32* @ext4_es_is_mapped, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %54, label %33

33:                                               ; preds = %28
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @EXT4_B2C(%struct.ext4_sb_info* %35, i32 %36)
  %38 = call i32 @ext4_clu_mapped(%struct.inode* %34, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %62

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = call i32 @ext4_da_reserve_space(%struct.inode* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %62

51:                                               ; preds = %45
  br label %53

52:                                               ; preds = %42
  store i32 1, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %51
  br label %55

54:                                               ; preds = %28
  store i32 1, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %53
  br label %56

56:                                               ; preds = %55, %23
  br label %57

57:                                               ; preds = %56, %22
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @ext4_es_insert_delayed_block(%struct.inode* %58, i32 %59, i32 %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %57, %50, %41, %21
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(i32) #1

declare dso_local i32 @ext4_da_reserve_space(%struct.inode*) #1

declare dso_local i32 @ext4_es_scan_clu(%struct.inode*, i32*, i32) #1

declare dso_local i32 @ext4_clu_mapped(%struct.inode*, i32) #1

declare dso_local i32 @EXT4_B2C(%struct.ext4_sb_info*, i32) #1

declare dso_local i32 @ext4_es_insert_delayed_block(%struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
