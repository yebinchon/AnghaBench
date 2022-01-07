; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_v1.c_v1_write_file_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_v1.c_v1_write_file_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.super_block*, i32, i8*, i32, i32)*, i32 (%struct.super_block*, i32, i8*, i32, i32)* }
%struct.quota_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.v1_disk_dqblk = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@dq_data_lock = common dso_local global i32 0, align 4
@DQF_INFO_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @v1_write_file_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v1_write_file_info(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.quota_info*, align 8
  %6 = alloca %struct.v1_disk_dqblk, align 4
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.quota_info* @sb_dqopt(%struct.super_block* %8)
  store %struct.quota_info* %9, %struct.quota_info** %5, align 8
  %10 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %11 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %10, i32 0, i32 0
  %12 = call i32 @down_write(i32* %11)
  %13 = load %struct.super_block*, %struct.super_block** %3, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (%struct.super_block*, i32, i8*, i32, i32)*, i32 (%struct.super_block*, i32, i8*, i32, i32)** %16, align 8
  %18 = load %struct.super_block*, %struct.super_block** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = bitcast %struct.v1_disk_dqblk* %6 to i8*
  %21 = call i32 @v1_dqoff(i32 0)
  %22 = call i32 %17(%struct.super_block* %18, i32 %19, i8* %20, i32 8, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 8
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
  br label %87

33:                                               ; preds = %2
  %34 = call i32 @spin_lock(i32* @dq_data_lock)
  %35 = load i32, i32* @DQF_INFO_DIRTY, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %38 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %36
  store i32 %45, i32* %43, align 4
  %46 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %47 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.v1_disk_dqblk, %struct.v1_disk_dqblk* %6, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %56 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.v1_disk_dqblk, %struct.v1_disk_dqblk* %6, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = call i32 @spin_unlock(i32* @dq_data_lock)
  %65 = load %struct.super_block*, %struct.super_block** %3, align 8
  %66 = getelementptr inbounds %struct.super_block, %struct.super_block* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32 (%struct.super_block*, i32, i8*, i32, i32)*, i32 (%struct.super_block*, i32, i8*, i32, i32)** %68, align 8
  %70 = load %struct.super_block*, %struct.super_block** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = bitcast %struct.v1_disk_dqblk* %6 to i8*
  %73 = call i32 @v1_dqoff(i32 0)
  %74 = call i32 %69(%struct.super_block* %70, i32 %71, i8* %72, i32 8, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp eq i64 %76, 8
  br i1 %77, label %78, label %79

78:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %86

79:                                               ; preds = %33
  %80 = load i32, i32* %7, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %82, %79
  br label %86

86:                                               ; preds = %85, %78
  br label %87

87:                                               ; preds = %86, %32
  %88 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %89 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %88, i32 0, i32 0
  %90 = call i32 @up_write(i32* %89)
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local %struct.quota_info* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @v1_dqoff(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
