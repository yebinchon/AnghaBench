; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_sync_fs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_sync_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.udf_sb_info = type { i32, i64, %struct.buffer_head* }
%struct.buffer_head = type { i64 }
%struct.logicalVolIntegrityDesc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @udf_sync_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_sync_fs(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.udf_sb_info*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.logicalVolIntegrityDesc*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %8)
  store %struct.udf_sb_info* %9, %struct.udf_sb_info** %5, align 8
  %10 = load %struct.udf_sb_info*, %struct.udf_sb_info** %5, align 8
  %11 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.udf_sb_info*, %struct.udf_sb_info** %5, align 8
  %14 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load %struct.udf_sb_info*, %struct.udf_sb_info** %5, align 8
  %19 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %18, i32 0, i32 2
  %20 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  store %struct.buffer_head* %20, %struct.buffer_head** %6, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.logicalVolIntegrityDesc*
  store %struct.logicalVolIntegrityDesc* %24, %struct.logicalVolIntegrityDesc** %7, align 8
  %25 = load %struct.logicalVolIntegrityDesc*, %struct.logicalVolIntegrityDesc** %7, align 8
  %26 = call i32 @udf_finalize_lvid(%struct.logicalVolIntegrityDesc* %25)
  %27 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %28 = call i32 @mark_buffer_dirty(%struct.buffer_head* %27)
  %29 = load %struct.udf_sb_info*, %struct.udf_sb_info** %5, align 8
  %30 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %17, %2
  %32 = load %struct.udf_sb_info*, %struct.udf_sb_info** %5, align 8
  %33 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  ret i32 0
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @udf_finalize_lvid(%struct.logicalVolIntegrityDesc*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
