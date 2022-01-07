; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_v1.c_v1_read_file_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_v1.c_v1_read_file_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.super_block*, i32, i8*, i32, i32)* }
%struct.quota_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.v1_disk_dqblk = type { i64, i64 }

@EIO = common dso_local global i32 0, align 4
@QUOTABLOCK_BITS = common dso_local global i32 0, align 4
@MAX_IQ_TIME = common dso_local global i64 0, align 8
@MAX_DQ_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @v1_read_file_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v1_read_file_info(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.quota_info*, align 8
  %6 = alloca %struct.v1_disk_dqblk, align 8
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.quota_info* @sb_dqopt(%struct.super_block* %8)
  store %struct.quota_info* %9, %struct.quota_info** %5, align 8
  %10 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %11 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %10, i32 0, i32 0
  %12 = call i32 @down_read(i32* %11)
  %13 = load %struct.super_block*, %struct.super_block** %3, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.super_block*, i32, i8*, i32, i32)*, i32 (%struct.super_block*, i32, i8*, i32, i32)** %16, align 8
  %18 = load %struct.super_block*, %struct.super_block** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = bitcast %struct.v1_disk_dqblk* %6 to i8*
  %21 = call i32 @v1_dqoff(i32 0)
  %22 = call i32 %17(%struct.super_block* %18, i32 %19, i8* %20, i32 16, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 16
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %29, %26
  br label %86

33:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %34 = load i32, i32* @QUOTABLOCK_BITS, align 4
  %35 = zext i32 %34 to i64
  %36 = shl i64 4294967295, %35
  %37 = trunc i64 %36 to i32
  %38 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %39 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %37, i32* %44, align 8
  %45 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %46 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 -1, i32* %51, align 4
  %52 = getelementptr inbounds %struct.v1_disk_dqblk, %struct.v1_disk_dqblk* %6, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %33
  %56 = getelementptr inbounds %struct.v1_disk_dqblk, %struct.v1_disk_dqblk* %6, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  br label %60

58:                                               ; preds = %33
  %59 = load i64, i64* @MAX_IQ_TIME, align 8
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i64 [ %57, %55 ], [ %59, %58 ]
  %62 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %63 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  store i64 %61, i64* %68, align 8
  %69 = getelementptr inbounds %struct.v1_disk_dqblk, %struct.v1_disk_dqblk* %6, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.v1_disk_dqblk, %struct.v1_disk_dqblk* %6, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  br label %77

75:                                               ; preds = %60
  %76 = load i64, i64* @MAX_DQ_TIME, align 8
  br label %77

77:                                               ; preds = %75, %72
  %78 = phi i64 [ %74, %72 ], [ %76, %75 ]
  %79 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %80 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  store i64 %78, i64* %85, align 8
  br label %86

86:                                               ; preds = %77, %32
  %87 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %88 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %87, i32 0, i32 0
  %89 = call i32 @up_read(i32* %88)
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local %struct.quota_info* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @v1_dqoff(i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
