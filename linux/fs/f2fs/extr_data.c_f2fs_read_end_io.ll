; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_read_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_read_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.bio_post_read_ctx*, i32 }
%struct.bio_post_read_ctx = type { i32 }

@FAULT_READ_IO = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@STEP_INITIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @f2fs_read_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f2fs_read_end_io(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.bio_post_read_ctx*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = call i32 @bio_first_page_all(%struct.bio* %4)
  %6 = call i32 @F2FS_P_SB(i32 %5)
  %7 = load i32, i32* @FAULT_READ_IO, align 4
  %8 = call i64 @time_to_inject(i32 %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* @FAULT_READ_IO, align 4
  %12 = call i32 @f2fs_show_injection_info(i32 %11)
  %13 = load i32, i32* @BLK_STS_IOERR, align 4
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.bio*, %struct.bio** %2, align 8
  %18 = call i64 @f2fs_bio_post_read_required(%struct.bio* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load %struct.bio*, %struct.bio** %2, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 0
  %23 = load %struct.bio_post_read_ctx*, %struct.bio_post_read_ctx** %22, align 8
  store %struct.bio_post_read_ctx* %23, %struct.bio_post_read_ctx** %3, align 8
  %24 = load i32, i32* @STEP_INITIAL, align 4
  %25 = load %struct.bio_post_read_ctx*, %struct.bio_post_read_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.bio_post_read_ctx, %struct.bio_post_read_ctx* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.bio_post_read_ctx*, %struct.bio_post_read_ctx** %3, align 8
  %28 = call i32 @bio_post_read_processing(%struct.bio_post_read_ctx* %27)
  br label %32

29:                                               ; preds = %16
  %30 = load %struct.bio*, %struct.bio** %2, align 8
  %31 = call i32 @__read_end_io(%struct.bio* %30)
  br label %32

32:                                               ; preds = %29, %20
  ret void
}

declare dso_local i64 @time_to_inject(i32, i32) #1

declare dso_local i32 @F2FS_P_SB(i32) #1

declare dso_local i32 @bio_first_page_all(%struct.bio*) #1

declare dso_local i32 @f2fs_show_injection_info(i32) #1

declare dso_local i64 @f2fs_bio_post_read_required(%struct.bio*) #1

declare dso_local i32 @bio_post_read_processing(%struct.bio_post_read_ctx*) #1

declare dso_local i32 @__read_end_io(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
