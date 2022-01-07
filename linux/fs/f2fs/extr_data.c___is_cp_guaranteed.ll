; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___is_cp_guaranteed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___is_cp_guaranteed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i64, i32 }
%struct.f2fs_sb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*)* @__is_cp_guaranteed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__is_cp_guaranteed(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.f2fs_sb_info*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = getelementptr inbounds %struct.page, %struct.page* %7, i32 0, i32 0
  %9 = load %struct.address_space*, %struct.address_space** %8, align 8
  store %struct.address_space* %9, %struct.address_space** %4, align 8
  %10 = load %struct.address_space*, %struct.address_space** %4, align 8
  %11 = icmp ne %struct.address_space* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

13:                                               ; preds = %1
  %14 = load %struct.address_space*, %struct.address_space** %4, align 8
  %15 = getelementptr inbounds %struct.address_space, %struct.address_space* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %5, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %17)
  store %struct.f2fs_sb_info* %18, %struct.f2fs_sb_info** %6, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %23 = call i64 @F2FS_META_INO(%struct.f2fs_sb_info* %22)
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %56, label %25

25:                                               ; preds = %13
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %30 = call i64 @F2FS_NODE_INO(%struct.f2fs_sb_info* %29)
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %56, label %32

32:                                               ; preds = %25
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @S_ISDIR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %32
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @S_ISREG(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = call i64 @f2fs_is_atomic_file(%struct.inode* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = call i64 @IS_NOQUOTA(%struct.inode* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48, %38
  %53 = load %struct.page*, %struct.page** %3, align 8
  %54 = call i64 @is_cold_data(%struct.page* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %48, %44, %32, %25, %13
  store i32 1, i32* %2, align 4
  br label %58

57:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %56, %12
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @F2FS_META_INO(%struct.f2fs_sb_info*) #1

declare dso_local i64 @F2FS_NODE_INO(%struct.f2fs_sb_info*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @f2fs_is_atomic_file(%struct.inode*) #1

declare dso_local i64 @IS_NOQUOTA(%struct.inode*) #1

declare dso_local i64 @is_cold_data(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
