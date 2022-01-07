; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___submit_merged_write_cond.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___submit_merged_write_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { %struct.f2fs_bio_info** }
%struct.f2fs_bio_info = type { i32, i32 }
%struct.inode = type { i32 }
%struct.page = type { i32 }

@HOT = common dso_local global i32 0, align 4
@NR_TEMP_TYPE = common dso_local global i32 0, align 4
@META = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, %struct.inode*, %struct.page*, i32, i32, i32)* @__submit_merged_write_cond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__submit_merged_write_cond(%struct.f2fs_sb_info* %0, %struct.inode* %1, %struct.page* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.f2fs_sb_info*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.f2fs_bio_info*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.page* %2, %struct.page** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 1, i32* %14, align 4
  %17 = load i32, i32* @HOT, align 4
  store i32 %17, i32* %13, align 4
  br label %18

18:                                               ; preds = %65, %6
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @NR_TEMP_TYPE, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %68

22:                                               ; preds = %18
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %51, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @PAGE_TYPE_OF_BIO(i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %29 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %28, i32 0, i32 0
  %30 = load %struct.f2fs_bio_info**, %struct.f2fs_bio_info*** %29, align 8
  %31 = load i32, i32* %15, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %30, i64 %32
  %34 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %33, align 8
  %35 = load i32, i32* %13, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %34, i64 %36
  store %struct.f2fs_bio_info* %37, %struct.f2fs_bio_info** %16, align 8
  %38 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %16, align 8
  %39 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %38, i32 0, i32 0
  %40 = call i32 @down_read(i32* %39)
  %41 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %16, align 8
  %42 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = load %struct.page*, %struct.page** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @__has_merged_page(i32 %43, %struct.inode* %44, %struct.page* %45, i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %16, align 8
  %49 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %48, i32 0, i32 0
  %50 = call i32 @up_read(i32* %49)
  br label %51

51:                                               ; preds = %25, %22
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @__f2fs_submit_merged_write(%struct.f2fs_sb_info* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %51
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @META, align 4
  %62 = icmp uge i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %68

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %13, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %18

68:                                               ; preds = %63, %18
  ret void
}

declare dso_local i32 @PAGE_TYPE_OF_BIO(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @__has_merged_page(i32, %struct.inode*, %struct.page*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @__f2fs_submit_merged_write(%struct.f2fs_sb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
