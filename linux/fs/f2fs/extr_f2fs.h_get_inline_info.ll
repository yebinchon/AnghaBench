; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_get_inline_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_get_inline_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_inode = type { i32 }
%struct.f2fs_inode_info = type { i32 }

@F2FS_INLINE_XATTR = common dso_local global i32 0, align 4
@FI_INLINE_XATTR = common dso_local global i32 0, align 4
@F2FS_INLINE_DATA = common dso_local global i32 0, align 4
@FI_INLINE_DATA = common dso_local global i32 0, align 4
@F2FS_INLINE_DENTRY = common dso_local global i32 0, align 4
@FI_INLINE_DENTRY = common dso_local global i32 0, align 4
@F2FS_DATA_EXIST = common dso_local global i32 0, align 4
@FI_DATA_EXIST = common dso_local global i32 0, align 4
@F2FS_INLINE_DOTS = common dso_local global i32 0, align 4
@FI_INLINE_DOTS = common dso_local global i32 0, align 4
@F2FS_EXTRA_ATTR = common dso_local global i32 0, align 4
@FI_EXTRA_ATTR = common dso_local global i32 0, align 4
@F2FS_PIN_FILE = common dso_local global i32 0, align 4
@FI_PIN_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.f2fs_inode*)* @get_inline_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_inline_info(%struct.inode* %0, %struct.f2fs_inode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.f2fs_inode*, align 8
  %5 = alloca %struct.f2fs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.f2fs_inode* %1, %struct.f2fs_inode** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.f2fs_inode_info* @F2FS_I(%struct.inode* %6)
  store %struct.f2fs_inode_info* %7, %struct.f2fs_inode_info** %5, align 8
  %8 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %9 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @F2FS_INLINE_XATTR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @FI_INLINE_XATTR, align 4
  %16 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %17 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %16, i32 0, i32 0
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %21 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @F2FS_INLINE_DATA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32, i32* @FI_INLINE_DATA, align 4
  %28 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %29 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %28, i32 0, i32 0
  %30 = call i32 @set_bit(i32 %27, i32* %29)
  br label %31

31:                                               ; preds = %26, %19
  %32 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %33 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @F2FS_INLINE_DENTRY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i32, i32* @FI_INLINE_DENTRY, align 4
  %40 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %41 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %40, i32 0, i32 0
  %42 = call i32 @set_bit(i32 %39, i32* %41)
  br label %43

43:                                               ; preds = %38, %31
  %44 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %45 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @F2FS_DATA_EXIST, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i32, i32* @FI_DATA_EXIST, align 4
  %52 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %53 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %52, i32 0, i32 0
  %54 = call i32 @set_bit(i32 %51, i32* %53)
  br label %55

55:                                               ; preds = %50, %43
  %56 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %57 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @F2FS_INLINE_DOTS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load i32, i32* @FI_INLINE_DOTS, align 4
  %64 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %65 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %64, i32 0, i32 0
  %66 = call i32 @set_bit(i32 %63, i32* %65)
  br label %67

67:                                               ; preds = %62, %55
  %68 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %69 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @F2FS_EXTRA_ATTR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load i32, i32* @FI_EXTRA_ATTR, align 4
  %76 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %77 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %76, i32 0, i32 0
  %78 = call i32 @set_bit(i32 %75, i32* %77)
  br label %79

79:                                               ; preds = %74, %67
  %80 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %81 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @F2FS_PIN_FILE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load i32, i32* @FI_PIN_FILE, align 4
  %88 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %89 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %88, i32 0, i32 0
  %90 = call i32 @set_bit(i32 %87, i32* %89)
  br label %91

91:                                               ; preds = %86, %79
  ret void
}

declare dso_local %struct.f2fs_inode_info* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
