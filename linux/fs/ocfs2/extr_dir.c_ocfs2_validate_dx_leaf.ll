; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_validate_dx_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_validate_dx_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_dx_leaf = type { i32, i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Checksum failed for dir index leaf block %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Dir Index Leaf has bad signature %.*s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.buffer_head*)* @ocfs2_validate_dx_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_validate_dx_leaf(%struct.super_block* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_dx_leaf*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %8 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ocfs2_dx_leaf*
  store %struct.ocfs2_dx_leaf* %11, %struct.ocfs2_dx_leaf** %7, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %13 = call i32 @buffer_uptodate(%struct.buffer_head* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %7, align 8
  %23 = getelementptr inbounds %struct.ocfs2_dx_leaf, %struct.ocfs2_dx_leaf* %22, i32 0, i32 1
  %24 = call i32 @ocfs2_validate_meta_ecc(%struct.super_block* %18, i64 %21, i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load i32, i32* @ML_ERROR, align 4
  %29 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @mlog(i32 %28, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %46

34:                                               ; preds = %2
  %35 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %7, align 8
  %36 = call i32 @OCFS2_IS_VALID_DX_LEAF(%struct.ocfs2_dx_leaf* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load %struct.super_block*, %struct.super_block** %4, align 8
  %40 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %7, align 8
  %41 = getelementptr inbounds %struct.ocfs2_dx_leaf, %struct.ocfs2_dx_leaf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ocfs2_error(%struct.super_block* %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 7, i32 %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %27
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_validate_meta_ecc(%struct.super_block*, i64, i32*) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local i32 @OCFS2_IS_VALID_DX_LEAF(%struct.ocfs2_dx_leaf*) #1

declare dso_local i32 @ocfs2_error(%struct.super_block*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
