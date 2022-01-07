; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_build_curseg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_build_curseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.curseg_info = type { i64, i32, i8*, i32, i8*, i32 }
%struct.TYPE_2__ = type { %struct.curseg_info* }

@NR_CURSEG_TYPE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@NULL_SEGNO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*)* @build_curseg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_curseg(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.curseg_info*, align 8
  %5 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  %6 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %7 = load i32, i32* @NR_CURSEG_TYPE, align 4
  %8 = call i32 @array_size(i32 %7, i32 48)
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @f2fs_kzalloc(%struct.f2fs_sb_info* %6, i32 %8, i32 %9)
  %11 = bitcast i8* %10 to %struct.curseg_info*
  store %struct.curseg_info* %11, %struct.curseg_info** %4, align 8
  %12 = load %struct.curseg_info*, %struct.curseg_info** %4, align 8
  %13 = icmp ne %struct.curseg_info* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %95

17:                                               ; preds = %1
  %18 = load %struct.curseg_info*, %struct.curseg_info** %4, align 8
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %20 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.curseg_info* %18, %struct.curseg_info** %21, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %89, %17
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @NR_CURSEG_TYPE, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %92

26:                                               ; preds = %22
  %27 = load %struct.curseg_info*, %struct.curseg_info** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %27, i64 %29
  %31 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %30, i32 0, i32 5
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @f2fs_kzalloc(%struct.f2fs_sb_info* %33, i32 %34, i32 %35)
  %37 = load %struct.curseg_info*, %struct.curseg_info** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %37, i64 %39
  %41 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %40, i32 0, i32 4
  store i8* %36, i8** %41, align 8
  %42 = load %struct.curseg_info*, %struct.curseg_info** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %42, i64 %44
  %46 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %45, i32 0, i32 4
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %26
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %95

52:                                               ; preds = %26
  %53 = load %struct.curseg_info*, %struct.curseg_info** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %53, i64 %55
  %57 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %56, i32 0, i32 3
  %58 = call i32 @init_rwsem(i32* %57)
  %59 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @f2fs_kzalloc(%struct.f2fs_sb_info* %59, i32 4, i32 %60)
  %62 = load %struct.curseg_info*, %struct.curseg_info** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %62, i64 %64
  %66 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %65, i32 0, i32 2
  store i8* %61, i8** %66, align 8
  %67 = load %struct.curseg_info*, %struct.curseg_info** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %67, i64 %69
  %71 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %52
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %95

77:                                               ; preds = %52
  %78 = load i32, i32* @NULL_SEGNO, align 4
  %79 = load %struct.curseg_info*, %struct.curseg_info** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %79, i64 %81
  %83 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %82, i32 0, i32 1
  store i32 %78, i32* %83, align 8
  %84 = load %struct.curseg_info*, %struct.curseg_info** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %84, i64 %86
  %88 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %77
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %22

92:                                               ; preds = %22
  %93 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %94 = call i32 @restore_curseg_summaries(%struct.f2fs_sb_info* %93)
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %92, %74, %49, %14
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i8* @f2fs_kzalloc(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @restore_curseg_summaries(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
