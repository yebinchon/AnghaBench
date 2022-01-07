; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_cylinder.c_ufs_put_cylinder.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_cylinder.c_ufs_put_cylinder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_sb_info = type { i64*, i32, %struct.ufs_cg_private_info**, %struct.ufs_sb_private_info* }
%struct.ufs_cg_private_info = type { i32, i32, i32 }
%struct.ufs_sb_private_info = type { i64 }
%struct.ufs_cylinder_group = type { i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [21 x i8] c"ENTER, bitmap_nr %u\0A\00", align 1
@UFS_CGNO_EMPTY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@UFS_MAX_GROUP_LOADED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"ufs_put_cylinder\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"internal error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ufs_put_cylinder(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ufs_sb_info*, align 8
  %6 = alloca %struct.ufs_sb_private_info*, align 8
  %7 = alloca %struct.ufs_cg_private_info*, align 8
  %8 = alloca %struct.ufs_cylinder_group*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = call %struct.ufs_sb_info* @UFS_SB(%struct.super_block* %10)
  store %struct.ufs_sb_info* %11, %struct.ufs_sb_info** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %5, align 8
  %15 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %14, i32 0, i32 3
  %16 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %15, align 8
  store %struct.ufs_sb_private_info* %16, %struct.ufs_sb_private_info** %6, align 8
  %17 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %5, align 8
  %18 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @UFS_CGNO_EMPTY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %107

28:                                               ; preds = %2
  %29 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %5, align 8
  %30 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %29, i32 0, i32 2
  %31 = load %struct.ufs_cg_private_info**, %struct.ufs_cg_private_info*** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %31, i64 %33
  %35 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %34, align 8
  store %struct.ufs_cg_private_info* %35, %struct.ufs_cg_private_info** %7, align 8
  %36 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %37 = call %struct.TYPE_4__* @UCPI_UBH(%struct.ufs_cg_private_info* %36)
  %38 = call %struct.ufs_cylinder_group* @ubh_get_ucg(%struct.TYPE_4__* %37)
  store %struct.ufs_cylinder_group* %38, %struct.ufs_cylinder_group** %8, align 8
  %39 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %40 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @UFS_MAX_GROUP_LOADED, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %28
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %5, align 8
  %47 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp uge i32 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.super_block*, %struct.super_block** %3, align 8
  %52 = call i32 @ufs_panic(%struct.super_block* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %107

53:                                               ; preds = %44, %28
  %54 = load %struct.super_block*, %struct.super_block** %3, align 8
  %55 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %56 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @cpu_to_fs32(%struct.super_block* %54, i32 %57)
  %59 = load %struct.ufs_cylinder_group*, %struct.ufs_cylinder_group** %8, align 8
  %60 = getelementptr inbounds %struct.ufs_cylinder_group, %struct.ufs_cylinder_group* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.super_block*, %struct.super_block** %3, align 8
  %62 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %63 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @cpu_to_fs32(%struct.super_block* %61, i32 %64)
  %66 = load %struct.ufs_cylinder_group*, %struct.ufs_cylinder_group** %8, align 8
  %67 = getelementptr inbounds %struct.ufs_cylinder_group, %struct.ufs_cylinder_group* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.super_block*, %struct.super_block** %3, align 8
  %69 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %70 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @cpu_to_fs32(%struct.super_block* %68, i32 %71)
  %73 = load %struct.ufs_cylinder_group*, %struct.ufs_cylinder_group** %8, align 8
  %74 = getelementptr inbounds %struct.ufs_cylinder_group, %struct.ufs_cylinder_group* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %76 = call %struct.TYPE_4__* @UCPI_UBH(%struct.ufs_cg_private_info* %75)
  %77 = call i32 @ubh_mark_buffer_dirty(%struct.TYPE_4__* %76)
  store i32 1, i32* %9, align 4
  br label %78

78:                                               ; preds = %95, %53
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %81 = call %struct.TYPE_4__* @UCPI_UBH(%struct.ufs_cg_private_info* %80)
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ult i32 %79, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %78
  %86 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %87 = call %struct.TYPE_4__* @UCPI_UBH(%struct.ufs_cg_private_info* %86)
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @brelse(i32 %93)
  br label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %9, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %78

98:                                               ; preds = %78
  %99 = load i64, i64* @UFS_CGNO_EMPTY, align 8
  %100 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %5, align 8
  %101 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  store i64 %99, i64* %105, align 8
  %106 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %107

107:                                              ; preds = %98, %50, %26
  ret void
}

declare dso_local %struct.ufs_sb_info* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @UFSD(i8*, ...) #1

declare dso_local %struct.ufs_cylinder_group* @ubh_get_ucg(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @UCPI_UBH(%struct.ufs_cg_private_info*) #1

declare dso_local i32 @ufs_panic(%struct.super_block*, i8*, i8*) #1

declare dso_local i8* @cpu_to_fs32(%struct.super_block*, i32) #1

declare dso_local i32 @ubh_mark_buffer_dirty(%struct.TYPE_4__*) #1

declare dso_local i32 @brelse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
