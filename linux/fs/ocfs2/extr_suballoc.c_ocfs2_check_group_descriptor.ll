; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_check_group_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_check_group_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_group_desc = type { i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Checksum failed for group descriptor %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_check_group_descriptor(%struct.super_block* %0, %struct.ocfs2_dinode* %1, %struct.buffer_head* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ocfs2_dinode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_group_desc*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.ocfs2_dinode* %1, %struct.ocfs2_dinode** %5, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %6, align 8
  %9 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %10 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %12, %struct.ocfs2_group_desc** %8, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %14 = call i32 @buffer_uptodate(%struct.buffer_head* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %21 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %8, align 8
  %24 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %23, i32 0, i32 0
  %25 = call i32 @ocfs2_validate_meta_ecc(%struct.super_block* %19, i64 %22, i32* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load i32, i32* @ML_ERROR, align 4
  %30 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %31 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @mlog(i32 %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %32)
  br label %38

34:                                               ; preds = %3
  %35 = load %struct.super_block*, %struct.super_block** %4, align 8
  %36 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %37 = call i32 @ocfs2_validate_gd_self(%struct.super_block* %35, %struct.buffer_head* %36, i32 1)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load %struct.super_block*, %struct.super_block** %4, align 8
  %43 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %45 = call i32 @ocfs2_validate_gd_parent(%struct.super_block* %42, %struct.ocfs2_dinode* %43, %struct.buffer_head* %44, i32 1)
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_validate_meta_ecc(%struct.super_block*, i64, i32*) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local i32 @ocfs2_validate_gd_self(%struct.super_block*, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_validate_gd_parent(%struct.super_block*, %struct.ocfs2_dinode*, %struct.buffer_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
