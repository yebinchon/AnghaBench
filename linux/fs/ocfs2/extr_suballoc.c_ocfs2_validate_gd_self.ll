; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_validate_gd_self.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_validate_gd_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_group_desc = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Group descriptor #%llu has bad signature %.*s\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Group descriptor #%llu has an invalid bg_blkno of %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Group descriptor #%llu has an invalid fs_generation of #%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"Group descriptor #%llu has bit count %u but claims that %u are free\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"Group descriptor #%llu has bit count %u but max bitmap bits of %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.buffer_head*, i32)* @ocfs2_validate_gd_self to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_validate_gd_self(%struct.super_block* %0, %struct.buffer_head* %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_group_desc*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %11, %struct.ocfs2_group_desc** %7, align 8
  %12 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %7, align 8
  %13 = call i32 @OCFS2_IS_VALID_GROUP_DESC(%struct.ocfs2_group_desc* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %7, align 8
  %20 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, i64, i32, ...) @do_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %18, i32 7, i32 %21)
  br label %23

23:                                               ; preds = %15, %3
  %24 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %7, align 8
  %25 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @le64_to_cpu(i32 %26)
  %28 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %7, align 8
  %37 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le64_to_cpu(i32 %38)
  %40 = trunc i64 %39 to i32
  %41 = call i32 (i8*, i64, i32, ...) @do_error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %35, i32 %40)
  br label %42

42:                                               ; preds = %32, %23
  %43 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %7, align 8
  %44 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = load %struct.super_block*, %struct.super_block** %4, align 8
  %48 = call %struct.TYPE_2__* @OCFS2_SB(%struct.super_block* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %46, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %42
  %53 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %54 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %7, align 8
  %57 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32_to_cpu(i32 %58)
  %60 = call i32 (i8*, i64, i32, ...) @do_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i64 %55, i32 %59)
  br label %61

61:                                               ; preds = %52, %42
  %62 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %7, align 8
  %63 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le16_to_cpu(i32 %64)
  %66 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %7, align 8
  %67 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le16_to_cpu(i32 %68)
  %70 = icmp sgt i32 %65, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %61
  %72 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %73 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %7, align 8
  %76 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le16_to_cpu(i32 %77)
  %79 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %7, align 8
  %80 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le16_to_cpu(i32 %81)
  %83 = call i32 (i8*, i64, i32, ...) @do_error(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i64 %74, i32 %78, i32 %82)
  br label %84

84:                                               ; preds = %71, %61
  %85 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %7, align 8
  %86 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le16_to_cpu(i32 %87)
  %89 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %7, align 8
  %90 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le16_to_cpu(i32 %91)
  %93 = mul nsw i32 8, %92
  %94 = icmp sgt i32 %88, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %84
  %96 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %97 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %7, align 8
  %100 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @le16_to_cpu(i32 %101)
  %103 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %7, align 8
  %104 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le16_to_cpu(i32 %105)
  %107 = mul nsw i32 8, %106
  %108 = call i32 (i8*, i64, i32, ...) @do_error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i64 %98, i32 %102, i32 %107)
  br label %109

109:                                              ; preds = %95, %84
  ret i32 0
}

declare dso_local i32 @OCFS2_IS_VALID_GROUP_DESC(%struct.ocfs2_group_desc*) #1

declare dso_local i32 @do_error(i8*, i64, i32, ...) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
