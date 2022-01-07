; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_validate_xattr_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_validate_xattr_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_xattr_block = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [55 x i8] c"Extended attribute block #%llu has bad signature %.*s\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"Extended attribute block #%llu has an invalid xb_blkno of %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"Extended attribute block #%llu has an invalid xb_fs_generation of #%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.buffer_head*)* @ocfs2_validate_xattr_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_validate_xattr_block(%struct.super_block* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_xattr_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %8 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ocfs2_xattr_block*
  store %struct.ocfs2_xattr_block* %11, %struct.ocfs2_xattr_block** %7, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @trace_ocfs2_validate_xattr_block(i64 %14)
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
  %26 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %7, align 8
  %27 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %26, i32 0, i32 3
  %28 = call i32 @ocfs2_validate_meta_ecc(%struct.super_block* %22, i64 %25, i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %86

33:                                               ; preds = %2
  %34 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %7, align 8
  %35 = call i32 @OCFS2_IS_VALID_XATTR_BLOCK(%struct.ocfs2_xattr_block* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = load %struct.super_block*, %struct.super_block** %4, align 8
  %39 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %40 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %7, align 8
  %43 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.super_block*, i8*, i64, i64, ...) @ocfs2_error(%struct.super_block* %38, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %41, i64 7, i32 %44)
  store i32 %45, i32* %3, align 4
  br label %86

46:                                               ; preds = %33
  %47 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %7, align 8
  %48 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @le64_to_cpu(i32 %49)
  %51 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %52 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %46
  %56 = load %struct.super_block*, %struct.super_block** %4, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %58 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %7, align 8
  %61 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @le64_to_cpu(i32 %62)
  %64 = call i32 (%struct.super_block*, i8*, i64, i64, ...) @ocfs2_error(%struct.super_block* %56, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %59, i64 %63)
  store i32 %64, i32* %3, align 4
  br label %86

65:                                               ; preds = %46
  %66 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %7, align 8
  %67 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @le32_to_cpu(i32 %68)
  %70 = load %struct.super_block*, %struct.super_block** %4, align 8
  %71 = call %struct.TYPE_2__* @OCFS2_SB(%struct.super_block* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %69, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %65
  %76 = load %struct.super_block*, %struct.super_block** %4, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %78 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %7, align 8
  %81 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @le32_to_cpu(i32 %82)
  %84 = call i32 (%struct.super_block*, i8*, i64, i64, ...) @ocfs2_error(%struct.super_block* %76, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i64 %79, i64 %83)
  store i32 %84, i32* %3, align 4
  br label %86

85:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %75, %55, %37, %31
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @trace_ocfs2_validate_xattr_block(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_validate_meta_ecc(%struct.super_block*, i64, i32*) #1

declare dso_local i32 @OCFS2_IS_VALID_XATTR_BLOCK(%struct.ocfs2_xattr_block*) #1

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
