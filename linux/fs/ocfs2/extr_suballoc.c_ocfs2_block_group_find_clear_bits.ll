; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_find_clear_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_find_clear_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_suballoc_result = type { i32, i32 }
%struct.ocfs2_group_desc = type { i8* }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.buffer_head*, i32, i32, %struct.ocfs2_suballoc_result*)* @ocfs2_block_group_find_clear_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_block_group_find_clear_bits(%struct.ocfs2_super* %0, %struct.buffer_head* %1, i32 %2, i32 %3, %struct.ocfs2_suballoc_result* %4) #0 {
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_suballoc_result*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ocfs2_group_desc*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.ocfs2_suballoc_result* %4, %struct.ocfs2_suballoc_result** %10, align 8
  store i32 0, i32* %17, align 4
  %19 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %22, %struct.ocfs2_group_desc** %18, align 8
  %23 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %24 = call i32 @OCFS2_IS_VALID_GROUP_DESC(%struct.ocfs2_group_desc* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %29 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %30 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %11, align 8
  br label %32

32:                                               ; preds = %78, %5
  %33 = load i8*, i8** %11, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @ocfs2_find_next_zero_bit(i8* %33, i32 %34, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %79

38:                                               ; preds = %32
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %79

43:                                               ; preds = %38
  %44 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @ocfs2_test_bg_bit_allocatable(%struct.buffer_head* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  store i32 0, i32* %16, align 4
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %15, align 4
  br label %64

51:                                               ; preds = %43
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* %16, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %15, align 4
  br label %63

60:                                               ; preds = %51
  store i32 1, i32* %16, align 4
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %15, align 4
  br label %63

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63, %48
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32, i32* %16, align 4
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %68, %64
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %79

78:                                               ; preds = %73
  br label %32

79:                                               ; preds = %77, %42, %32
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %10, align 8
  %85 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %10, align 8
  %88 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  br label %92

89:                                               ; preds = %79
  %90 = load i32, i32* @ENOSPC, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %17, align 4
  br label %92

92:                                               ; preds = %89, %82
  %93 = load i32, i32* %17, align 4
  ret i32 %93
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_GROUP_DESC(%struct.ocfs2_group_desc*) #1

declare dso_local i32 @ocfs2_find_next_zero_bit(i8*, i32, i32) #1

declare dso_local i32 @ocfs2_test_bg_bit_allocatable(%struct.buffer_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
