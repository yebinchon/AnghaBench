; ModuleID = '/home/carl/AnghaBench/linux/fs/qnx6/extr_dir.c_qnx6_long_match.c'
source_filename = "/home/carl/AnghaBench/linux/fs/qnx6/extr_dir.c_qnx6_long_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qnx6_long_dir_entry = type { i32 }
%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.qnx6_sb_info = type { i32 }
%struct.page = type { i32 }
%struct.qnx6_long_filename = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.qnx6_long_dir_entry*, %struct.inode*)* @qnx6_long_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qnx6_long_match(i32 %0, i8* %1, %struct.qnx6_long_dir_entry* %2, %struct.inode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.qnx6_long_dir_entry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.qnx6_sb_info*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.qnx6_long_filename*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.qnx6_long_dir_entry* %2, %struct.qnx6_long_dir_entry** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %9, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %10, align 8
  %18 = load %struct.super_block*, %struct.super_block** %10, align 8
  %19 = call %struct.qnx6_sb_info* @QNX6_SB(%struct.super_block* %18)
  store %struct.qnx6_sb_info* %19, %struct.qnx6_sb_info** %11, align 8
  %20 = load %struct.super_block*, %struct.super_block** %10, align 8
  %21 = load %struct.qnx6_long_dir_entry*, %struct.qnx6_long_dir_entry** %8, align 8
  %22 = call %struct.qnx6_long_filename* @qnx6_longname(%struct.super_block* %20, %struct.qnx6_long_dir_entry* %21, %struct.page** %12)
  store %struct.qnx6_long_filename* %22, %struct.qnx6_long_filename** %14, align 8
  %23 = load %struct.qnx6_long_filename*, %struct.qnx6_long_filename** %14, align 8
  %24 = call i64 @IS_ERR(%struct.qnx6_long_filename* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %58

27:                                               ; preds = %4
  %28 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %11, align 8
  %29 = load %struct.qnx6_long_filename*, %struct.qnx6_long_filename** %14, align 8
  %30 = getelementptr inbounds %struct.qnx6_long_filename, %struct.qnx6_long_filename* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @fs16_to_cpu(%struct.qnx6_sb_info* %28, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.page*, %struct.page** %12, align 8
  %38 = call i32 @qnx6_put_page(%struct.page* %37)
  store i32 0, i32* %5, align 4
  br label %58

39:                                               ; preds = %27
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.qnx6_long_filename*, %struct.qnx6_long_filename** %14, align 8
  %42 = getelementptr inbounds %struct.qnx6_long_filename, %struct.qnx6_long_filename* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @memcmp(i8* %40, i32 %43, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load %struct.page*, %struct.page** %12, align 8
  %49 = call i32 @qnx6_put_page(%struct.page* %48)
  %50 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %11, align 8
  %51 = load %struct.qnx6_long_dir_entry*, %struct.qnx6_long_dir_entry** %8, align 8
  %52 = getelementptr inbounds %struct.qnx6_long_dir_entry, %struct.qnx6_long_dir_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @fs32_to_cpu(%struct.qnx6_sb_info* %50, i32 %53)
  store i32 %54, i32* %5, align 4
  br label %58

55:                                               ; preds = %39
  %56 = load %struct.page*, %struct.page** %12, align 8
  %57 = call i32 @qnx6_put_page(%struct.page* %56)
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %47, %36, %26
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.qnx6_sb_info* @QNX6_SB(%struct.super_block*) #1

declare dso_local %struct.qnx6_long_filename* @qnx6_longname(%struct.super_block*, %struct.qnx6_long_dir_entry*, %struct.page**) #1

declare dso_local i64 @IS_ERR(%struct.qnx6_long_filename*) #1

declare dso_local i32 @fs16_to_cpu(%struct.qnx6_sb_info*, i32) #1

declare dso_local i32 @qnx6_put_page(%struct.page*) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @fs32_to_cpu(%struct.qnx6_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
