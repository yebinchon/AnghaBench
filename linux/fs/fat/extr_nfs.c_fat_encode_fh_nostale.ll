; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_nfs.c_fat_encode_fh_nostale.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_nfs.c_fat_encode_fh_nostale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.msdos_sb_info = type { i32 }
%struct.fat_fid = type { i32, i32, i32, i32, i32, i32 }

@FILEID_FAT_WITHOUT_PARENT = common dso_local global i32 0, align 4
@FAT_FID_SIZE_WITH_PARENT = common dso_local global i32 0, align 4
@FILEID_INVALID = common dso_local global i32 0, align 4
@FAT_FID_SIZE_WITHOUT_PARENT = common dso_local global i32 0, align 4
@FILEID_FAT_WITH_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, i32*, %struct.inode*)* @fat_encode_fh_nostale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_encode_fh_nostale(%struct.inode* %0, i32* %1, i32* %2, %struct.inode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.msdos_sb_info*, align 8
  %12 = alloca %struct.fat_fid*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.msdos_sb_info* @MSDOS_SB(i32 %19)
  store %struct.msdos_sb_info* %20, %struct.msdos_sb_info** %11, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = bitcast i32* %21 to %struct.fat_fid*
  store %struct.fat_fid* %22, %struct.fat_fid** %12, align 8
  %23 = load i32, i32* @FILEID_FAT_WITHOUT_PARENT, align 4
  store i32 %23, i32* %14, align 4
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = icmp ne %struct.inode* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @FAT_FID_SIZE_WITH_PARENT, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @FAT_FID_SIZE_WITH_PARENT, align 4
  %32 = load i32*, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @FILEID_INVALID, align 4
  store i32 %33, i32* %5, align 4
  br label %87

34:                                               ; preds = %26
  br label %44

35:                                               ; preds = %4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @FAT_FID_SIZE_WITHOUT_PARENT, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @FAT_FID_SIZE_WITHOUT_PARENT, align 4
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @FILEID_INVALID, align 4
  store i32 %42, i32* %5, align 4
  br label %87

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %34
  %45 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %11, align 8
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = call i32 @fat_i_pos_read(%struct.msdos_sb_info* %45, %struct.inode* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* @FAT_FID_SIZE_WITHOUT_PARENT, align 4
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fat_fid*, %struct.fat_fid** %12, align 8
  %54 = getelementptr inbounds %struct.fat_fid, %struct.fat_fid* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.fat_fid*, %struct.fat_fid** %12, align 8
  %57 = getelementptr inbounds %struct.fat_fid, %struct.fat_fid* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %13, align 4
  %59 = ashr i32 %58, 32
  %60 = and i32 %59, 65535
  %61 = load %struct.fat_fid*, %struct.fat_fid** %12, align 8
  %62 = getelementptr inbounds %struct.fat_fid, %struct.fat_fid* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.inode*, %struct.inode** %9, align 8
  %64 = icmp ne %struct.inode* %63, null
  br i1 %64, label %65, label %85

65:                                               ; preds = %44
  %66 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %11, align 8
  %67 = load %struct.inode*, %struct.inode** %9, align 8
  %68 = call i32 @fat_i_pos_read(%struct.msdos_sb_info* %66, %struct.inode* %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = ashr i32 %69, 32
  %71 = and i32 %70, 65535
  %72 = load %struct.fat_fid*, %struct.fat_fid** %12, align 8
  %73 = getelementptr inbounds %struct.fat_fid, %struct.fat_fid* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.fat_fid*, %struct.fat_fid** %12, align 8
  %76 = getelementptr inbounds %struct.fat_fid, %struct.fat_fid* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.inode*, %struct.inode** %9, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.fat_fid*, %struct.fat_fid** %12, align 8
  %81 = getelementptr inbounds %struct.fat_fid, %struct.fat_fid* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @FILEID_FAT_WITH_PARENT, align 4
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* @FAT_FID_SIZE_WITH_PARENT, align 4
  %84 = load i32*, i32** %8, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %65, %44
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %39, %30
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(i32) #1

declare dso_local i32 @fat_i_pos_read(%struct.msdos_sb_info*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
