; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___f2fs_submit_merged_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___f2fs_submit_merged_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { %struct.f2fs_bio_info** }
%struct.f2fs_bio_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@META_FLUSH = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@NOBARRIER = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32, i32)* @__f2fs_submit_merged_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__f2fs_submit_merged_write(%struct.f2fs_sb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.f2fs_bio_info*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @PAGE_TYPE_OF_BIO(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %12 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %11, i32 0, i32 0
  %13 = load %struct.f2fs_bio_info**, %struct.f2fs_bio_info*** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %13, i64 %15
  %17 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %17, i64 %19
  store %struct.f2fs_bio_info* %20, %struct.f2fs_bio_info** %8, align 8
  %21 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %8, align 8
  %22 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %21, i32 0, i32 0
  %23 = call i32 @down_write(i32* %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @META_FLUSH, align 4
  %26 = icmp uge i32 %24, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %3
  %28 = load i32, i32* @META_FLUSH, align 4
  %29 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %8, align 8
  %30 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @REQ_OP_WRITE, align 4
  %33 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %8, align 8
  %34 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @REQ_META, align 4
  %37 = load i32, i32* @REQ_PRIO, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @REQ_SYNC, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %8, align 8
  %42 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %45 = load i32, i32* @NOBARRIER, align 4
  %46 = call i32 @test_opt(%struct.f2fs_sb_info* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %27
  %49 = load i32, i32* @REQ_PREFLUSH, align 4
  %50 = load i32, i32* @REQ_FUA, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %8, align 8
  %53 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %51
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %48, %27
  br label %58

58:                                               ; preds = %57, %3
  %59 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %8, align 8
  %60 = call i32 @__submit_merged_bio(%struct.f2fs_bio_info* %59)
  %61 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %8, align 8
  %62 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %61, i32 0, i32 0
  %63 = call i32 @up_write(i32* %62)
  ret void
}

declare dso_local i32 @PAGE_TYPE_OF_BIO(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @test_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @__submit_merged_bio(%struct.f2fs_bio_info*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
