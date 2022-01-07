; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_validate_dir_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_validate_dir_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i32 }
%struct.ocfs2_dir_block_trailer = type { i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Checksum failed for dinode %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.buffer_head*)* @ocfs2_validate_dir_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_validate_dir_block(%struct.super_block* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_dir_block_trailer*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %7 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.ocfs2_dir_block_trailer* @ocfs2_trailer_from_bh(%struct.buffer_head* %7, %struct.super_block* %8)
  store %struct.ocfs2_dir_block_trailer* %9, %struct.ocfs2_dir_block_trailer** %6, align 8
  %10 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %11 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @trace_ocfs2_validate_dir_block(i64 %12)
  %14 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %15 = call i32 @buffer_uptodate(%struct.buffer_head* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.super_block*, %struct.super_block** %3, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %6, align 8
  %25 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %24, i32 0, i32 0
  %26 = call i32 @ocfs2_validate_meta_ecc(%struct.super_block* %20, i32 %23, i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load i32, i32* @ML_ERROR, align 4
  %31 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %32 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @mlog(i32 %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %33)
  br label %35

35:                                               ; preds = %29, %2
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.ocfs2_dir_block_trailer* @ocfs2_trailer_from_bh(%struct.buffer_head*, %struct.super_block*) #1

declare dso_local i32 @trace_ocfs2_validate_dir_block(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_validate_meta_ecc(%struct.super_block*, i32, i32*) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
