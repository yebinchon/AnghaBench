; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_npages_for_summary_flush.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_npages_for_summary_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }
%struct.TYPE_4__ = type { i32* }

@CURSEG_HOT_DATA = common dso_local global i32 0, align 4
@CURSEG_COLD_DATA = common dso_local global i32 0, align 4
@SSR = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@SUM_JOURNAL_SIZE = common dso_local global i32 0, align 4
@SUM_FOOTER_SIZE = common dso_local global i32 0, align 4
@SUMMARY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_npages_for_summary_flush(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @CURSEG_HOT_DATA, align 4
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %61, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @CURSEG_COLD_DATA, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %64

14:                                               ; preds = %10
  %15 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %16 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SSR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %14
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %28 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  br label %60

34:                                               ; preds = %14
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %39 = call %struct.TYPE_4__* @F2FS_CKPT(%struct.f2fs_sb_info* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @le16_to_cpu(i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %6, align 4
  br label %59

51:                                               ; preds = %34
  %52 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @curseg_blkoff(%struct.f2fs_sb_info* %52, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %51, %37
  br label %60

60:                                               ; preds = %59, %26
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %10

64:                                               ; preds = %10
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = load i32, i32* @SUM_JOURNAL_SIZE, align 4
  %67 = mul nsw i32 2, %66
  %68 = sub nsw i32 %65, %67
  %69 = load i32, i32* @SUM_FOOTER_SIZE, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load i32, i32* @SUMMARY_SIZE, align 4
  %72 = sdiv i32 %70, %71
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %90

77:                                               ; preds = %64
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %8, align 4
  %80 = sub nsw i32 %78, %79
  %81 = load i32, i32* @PAGE_SIZE, align 4
  %82 = load i32, i32* @SUM_FOOTER_SIZE, align 4
  %83 = sub nsw i32 %81, %82
  %84 = load i32, i32* @SUMMARY_SIZE, align 4
  %85 = sdiv i32 %83, %84
  %86 = icmp sle i32 %80, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  store i32 2, i32* %3, align 4
  br label %90

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88
  store i32 3, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %87, %76
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @F2FS_CKPT(%struct.f2fs_sb_info*) #1

declare dso_local i64 @curseg_blkoff(%struct.f2fs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
