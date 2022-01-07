; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_validate_refcount_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_validate_refcount_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_refcount_block = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Checksum failed for refcount block %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Refcount block #%llu has bad signature %.*s\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Refcount block #%llu has an invalid rf_blkno of %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Refcount block #%llu has an invalid rf_fs_generation of #%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.buffer_head*)* @ocfs2_validate_refcount_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_validate_refcount_block(%struct.super_block* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_refcount_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %8 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %11, %struct.ocfs2_refcount_block** %7, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @trace_ocfs2_validate_refcount_block(i64 %14)
  %16 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %17 = call i32 @buffer_uptodate(%struct.buffer_head* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.super_block*, %struct.super_block** %4, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %7, align 8
  %27 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %26, i32 0, i32 3
  %28 = call i32 @ocfs2_validate_meta_ecc(%struct.super_block* %22, i64 %25, i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load i32, i32* @ML_ERROR, align 4
  %33 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @mlog(i32 %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %93

38:                                               ; preds = %2
  %39 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %7, align 8
  %40 = call i32 @OCFS2_IS_VALID_REFCOUNT_BLOCK(%struct.ocfs2_refcount_block* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = load %struct.super_block*, %struct.super_block** %4, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %7, align 8
  %48 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (%struct.super_block*, i8*, i64, i64, ...) @ocfs2_error(%struct.super_block* %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %46, i64 7, i32 %49)
  store i32 %50, i32* %6, align 4
  br label %91

51:                                               ; preds = %38
  %52 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %7, align 8
  %53 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @le64_to_cpu(i32 %54)
  %56 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %51
  %61 = load %struct.super_block*, %struct.super_block** %4, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %63 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %7, align 8
  %66 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @le64_to_cpu(i32 %67)
  %69 = call i32 (%struct.super_block*, i8*, i64, i64, ...) @ocfs2_error(%struct.super_block* %61, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %64, i64 %68)
  store i32 %69, i32* %6, align 4
  br label %91

70:                                               ; preds = %51
  %71 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %7, align 8
  %72 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @le32_to_cpu(i32 %73)
  %75 = load %struct.super_block*, %struct.super_block** %4, align 8
  %76 = call %struct.TYPE_2__* @OCFS2_SB(%struct.super_block* %75)
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %74, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %70
  %81 = load %struct.super_block*, %struct.super_block** %4, align 8
  %82 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %83 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %7, align 8
  %86 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @le32_to_cpu(i32 %87)
  %89 = call i32 (%struct.super_block*, i8*, i64, i64, ...) @ocfs2_error(%struct.super_block* %81, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i64 %84, i64 %88)
  store i32 %89, i32* %6, align 4
  br label %91

90:                                               ; preds = %70
  br label %91

91:                                               ; preds = %90, %80, %60, %42
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %31
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @trace_ocfs2_validate_refcount_block(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_validate_meta_ecc(%struct.super_block*, i64, i32*) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local i32 @OCFS2_IS_VALID_REFCOUNT_BLOCK(%struct.ocfs2_refcount_block*) #1

declare dso_local i32 @ocfs2_error(%struct.super_block*, i8*, i64, i64, ...) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
