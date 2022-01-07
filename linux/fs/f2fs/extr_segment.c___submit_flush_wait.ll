; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___submit_flush_wait.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___submit_flush_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.block_device = type { i32 }
%struct.bio = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@NOBARRIER = common dso_local global i32 0, align 4
@FLUSH_MERGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, %struct.block_device*)* @__submit_flush_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__submit_flush_wait(%struct.f2fs_sb_info* %0, %struct.block_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store %struct.block_device* %1, %struct.block_device** %5, align 8
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %9 = call %struct.bio* @f2fs_bio_alloc(%struct.f2fs_sb_info* %8, i32 0, i32 0)
  store %struct.bio* %9, %struct.bio** %6, align 8
  %10 = load %struct.bio*, %struct.bio** %6, align 8
  %11 = icmp ne %struct.bio* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %40

15:                                               ; preds = %2
  %16 = load i32, i32* @REQ_OP_WRITE, align 4
  %17 = load i32, i32* @REQ_SYNC, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @REQ_PREFLUSH, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.bio*, %struct.bio** %6, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.bio*, %struct.bio** %6, align 8
  %24 = load %struct.block_device*, %struct.block_device** %5, align 8
  %25 = call i32 @bio_set_dev(%struct.bio* %23, %struct.block_device* %24)
  %26 = load %struct.bio*, %struct.bio** %6, align 8
  %27 = call i32 @submit_bio_wait(%struct.bio* %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.bio*, %struct.bio** %6, align 8
  %29 = call i32 @bio_put(%struct.bio* %28)
  %30 = load %struct.block_device*, %struct.block_device** %5, align 8
  %31 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %32 = load i32, i32* @NOBARRIER, align 4
  %33 = call i32 @test_opt(%struct.f2fs_sb_info* %31, i32 %32)
  %34 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %35 = load i32, i32* @FLUSH_MERGE, align 4
  %36 = call i32 @test_opt(%struct.f2fs_sb_info* %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @trace_f2fs_issue_flush(%struct.block_device* %30, i32 %33, i32 %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %15, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.bio* @f2fs_bio_alloc(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, %struct.block_device*) #1

declare dso_local i32 @submit_bio_wait(%struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @trace_f2fs_issue_flush(%struct.block_device*, i32, i32, i32) #1

declare dso_local i32 @test_opt(%struct.f2fs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
