; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_validate_gd_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_validate_gd_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_dinode = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_group_desc = type { i64, i32, i32 }

@.str = private unnamed_addr constant [69 x i8] c"Group descriptor #%llu has bad parent pointer (%llu, expected %llu)\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Group descriptor #%llu has bit count of %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Group descriptor #%llu has bad chain %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ocfs2_dinode*, %struct.buffer_head*, i32)* @ocfs2_validate_gd_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_validate_gd_parent(%struct.super_block* %0, %struct.ocfs2_dinode* %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ocfs2_dinode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_group_desc*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.ocfs2_dinode* %1, %struct.ocfs2_dinode** %6, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %12 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %14, %struct.ocfs2_group_desc** %10, align 8
  %15 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %16 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %10, align 8
  %19 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %4
  %23 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %10, align 8
  %27 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @le64_to_cpu(i64 %28)
  %30 = trunc i64 %29 to i32
  %31 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %32 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @le64_to_cpu(i64 %33)
  %35 = call i32 (i8*, i64, i32, ...) @do_error(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i64 %25, i32 %30, i64 %34)
  br label %36

36:                                               ; preds = %22, %4
  %37 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %38 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @le16_to_cpu(i32 %41)
  %43 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %44 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le16_to_cpu(i32 %47)
  %49 = mul i32 %42, %48
  store i32 %49, i32* %9, align 4
  %50 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %10, align 8
  %51 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %36
  %57 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %58 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %10, align 8
  %61 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le16_to_cpu(i32 %62)
  %64 = call i32 (i8*, i64, i32, ...) @do_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %59, i32 %63)
  br label %65

65:                                               ; preds = %56, %36
  %66 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %10, align 8
  %67 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @le16_to_cpu(i32 %68)
  %70 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %71 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @le16_to_cpu(i32 %74)
  %76 = icmp ugt i32 %69, %75
  br i1 %76, label %92, label %77

77:                                               ; preds = %65
  %78 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %10, align 8
  %79 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @le16_to_cpu(i32 %80)
  %82 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %83 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @le16_to_cpu(i32 %86)
  %88 = icmp eq i32 %81, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %77
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %89, %65
  %93 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %94 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %10, align 8
  %97 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @le16_to_cpu(i32 %98)
  %100 = call i32 (i8*, i64, i32, ...) @do_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %95, i32 %99)
  br label %101

101:                                              ; preds = %92, %89, %77
  ret i32 0
}

declare dso_local i32 @do_error(i8*, i64, i32, ...) #1

declare dso_local i64 @le64_to_cpu(i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
