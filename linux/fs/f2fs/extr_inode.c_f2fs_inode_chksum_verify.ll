; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c_f2fs_inode_chksum_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c_f2fs_inode_chksum_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_inode = type { i32 }
%struct.TYPE_2__ = type { %struct.f2fs_inode }

@SBI_IS_SHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"checksum invalid, nid = %lu, ino_of_node = %x, %x vs. %x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_inode_chksum_verify(%struct.f2fs_sb_info* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.f2fs_inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %9 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %10 = load i32, i32* @SBI_IS_SHUTDOWN, align 4
  %11 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %9, i32 %10)
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %58

15:                                               ; preds = %2
  %16 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %17 = load %struct.page*, %struct.page** %5, align 8
  %18 = call i32 @f2fs_enable_inode_chksum(%struct.f2fs_sb_info* %16, %struct.page* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.page*, %struct.page** %5, align 8
  %22 = call i64 @PageDirty(%struct.page* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load %struct.page*, %struct.page** %5, align 8
  %26 = call i64 @PageWriteback(%struct.page* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %20, %15
  store i32 1, i32* %3, align 4
  br label %58

29:                                               ; preds = %24
  %30 = load %struct.page*, %struct.page** %5, align 8
  %31 = call %struct.TYPE_2__* @F2FS_NODE(%struct.page* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.f2fs_inode* %32, %struct.f2fs_inode** %6, align 8
  %33 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %34 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @le32_to_cpu(i32 %35)
  store i64 %36, i64* %7, align 8
  %37 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %38 = load %struct.page*, %struct.page** %5, align 8
  %39 = call i64 @f2fs_inode_chksum(%struct.f2fs_sb_info* %37, %struct.page* %38)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %29
  %44 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %45 = load %struct.page*, %struct.page** %5, align 8
  %46 = getelementptr inbounds %struct.page, %struct.page* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.page*, %struct.page** %5, align 8
  %49 = call i32 @ino_of_node(%struct.page* %48)
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @f2fs_warn(%struct.f2fs_sb_info* %44, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %49, i64 %50, i64 %51)
  br label %53

53:                                               ; preds = %43, %29
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %28, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_enable_inode_chksum(%struct.f2fs_sb_info*, %struct.page*) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local %struct.TYPE_2__* @F2FS_NODE(%struct.page*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @f2fs_inode_chksum(%struct.f2fs_sb_info*, %struct.page*) #1

declare dso_local i32 @f2fs_warn(%struct.f2fs_sb_info*, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @ino_of_node(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
