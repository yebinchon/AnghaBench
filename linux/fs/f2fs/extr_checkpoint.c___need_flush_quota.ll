; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c___need_flush_quota.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c___need_flush_quota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }

@SBI_QUOTA_SKIP_FLUSH = common dso_local global i32 0, align 4
@SBI_QUOTA_NEED_REPAIR = common dso_local global i32 0, align 4
@SBI_QUOTA_NEED_FLUSH = common dso_local global i32 0, align 4
@F2FS_DIRTY_QDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*)* @__need_flush_quota to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__need_flush_quota(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %6 = call i32 @is_journalled_quota(%struct.f2fs_sb_info* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

9:                                                ; preds = %1
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %11 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %10, i32 0, i32 0
  %12 = call i32 @down_write(i32* %11)
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %14 = load i32, i32* @SBI_QUOTA_SKIP_FLUSH, align 4
  %15 = call i64 @is_sbi_flag_set(%struct.f2fs_sb_info* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %42

18:                                               ; preds = %9
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %20 = load i32, i32* @SBI_QUOTA_NEED_REPAIR, align 4
  %21 = call i64 @is_sbi_flag_set(%struct.f2fs_sb_info* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %41

24:                                               ; preds = %18
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %26 = load i32, i32* @SBI_QUOTA_NEED_FLUSH, align 4
  %27 = call i64 @is_sbi_flag_set(%struct.f2fs_sb_info* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %31 = load i32, i32* @SBI_QUOTA_NEED_FLUSH, align 4
  %32 = call i32 @clear_sbi_flag(%struct.f2fs_sb_info* %30, i32 %31)
  store i32 1, i32* %4, align 4
  br label %40

33:                                               ; preds = %24
  %34 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %35 = load i32, i32* @F2FS_DIRTY_QDATA, align 4
  %36 = call i64 @get_pages(%struct.f2fs_sb_info* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %33
  br label %40

40:                                               ; preds = %39, %29
  br label %41

41:                                               ; preds = %40, %23
  br label %42

42:                                               ; preds = %41, %17
  %43 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %44 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %43, i32 0, i32 0
  %45 = call i32 @up_write(i32* %44)
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %42, %8
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @is_journalled_quota(%struct.f2fs_sb_info*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @clear_sbi_flag(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @get_pages(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
