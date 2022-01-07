; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_set_raw_inline.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_set_raw_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_inode = type { i32 }

@FI_INLINE_XATTR = common dso_local global i32 0, align 4
@F2FS_INLINE_XATTR = common dso_local global i32 0, align 4
@FI_INLINE_DATA = common dso_local global i32 0, align 4
@F2FS_INLINE_DATA = common dso_local global i32 0, align 4
@FI_INLINE_DENTRY = common dso_local global i32 0, align 4
@F2FS_INLINE_DENTRY = common dso_local global i32 0, align 4
@FI_DATA_EXIST = common dso_local global i32 0, align 4
@F2FS_DATA_EXIST = common dso_local global i32 0, align 4
@FI_INLINE_DOTS = common dso_local global i32 0, align 4
@F2FS_INLINE_DOTS = common dso_local global i32 0, align 4
@FI_EXTRA_ATTR = common dso_local global i32 0, align 4
@F2FS_EXTRA_ATTR = common dso_local global i32 0, align 4
@FI_PIN_FILE = common dso_local global i32 0, align 4
@F2FS_PIN_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.f2fs_inode*)* @set_raw_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_raw_inline(%struct.inode* %0, %struct.f2fs_inode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.f2fs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.f2fs_inode* %1, %struct.f2fs_inode** %4, align 8
  %5 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %6 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = load i32, i32* @FI_INLINE_XATTR, align 4
  %9 = call i64 @is_inode_flag_set(%struct.inode* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @F2FS_INLINE_XATTR, align 4
  %13 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %14 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = load i32, i32* @FI_INLINE_DATA, align 4
  %20 = call i64 @is_inode_flag_set(%struct.inode* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32, i32* @F2FS_INLINE_DATA, align 4
  %24 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %25 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %17
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = load i32, i32* @FI_INLINE_DENTRY, align 4
  %31 = call i64 @is_inode_flag_set(%struct.inode* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @F2FS_INLINE_DENTRY, align 4
  %35 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %36 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = load i32, i32* @FI_DATA_EXIST, align 4
  %42 = call i64 @is_inode_flag_set(%struct.inode* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32, i32* @F2FS_DATA_EXIST, align 4
  %46 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %47 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %39
  %51 = load %struct.inode*, %struct.inode** %3, align 8
  %52 = load i32, i32* @FI_INLINE_DOTS, align 4
  %53 = call i64 @is_inode_flag_set(%struct.inode* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* @F2FS_INLINE_DOTS, align 4
  %57 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %58 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %50
  %62 = load %struct.inode*, %struct.inode** %3, align 8
  %63 = load i32, i32* @FI_EXTRA_ATTR, align 4
  %64 = call i64 @is_inode_flag_set(%struct.inode* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* @F2FS_EXTRA_ATTR, align 4
  %68 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %69 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %61
  %73 = load %struct.inode*, %struct.inode** %3, align 8
  %74 = load i32, i32* @FI_PIN_FILE, align 4
  %75 = call i64 @is_inode_flag_set(%struct.inode* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* @F2FS_PIN_FILE, align 4
  %79 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %80 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %72
  ret void
}

declare dso_local i64 @is_inode_flag_set(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
