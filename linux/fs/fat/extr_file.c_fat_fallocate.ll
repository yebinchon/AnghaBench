; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_file.c_fat_fallocate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_file.c_fat_fallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.msdos_sb_info = type { i32, i32 }

@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i32, i32)* @fat_fallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fat_fallocate(%struct.file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.super_block*, align 8
  %15 = alloca %struct.msdos_sb_info*, align 8
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.file*, %struct.file** %6, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %13, align 8
  %22 = load %struct.inode*, %struct.inode** %13, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 2
  %24 = load %struct.super_block*, %struct.super_block** %23, align 8
  store %struct.super_block* %24, %struct.super_block** %14, align 8
  %25 = load %struct.super_block*, %struct.super_block** %14, align 8
  %26 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %25)
  store %struct.msdos_sb_info* %26, %struct.msdos_sb_info** %15, align 8
  store i32 0, i32* %16, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i64, i64* @EOPNOTSUPP, align 8
  %34 = sub nsw i64 0, %33
  store i64 %34, i64* %5, align 8
  br label %110

35:                                               ; preds = %4
  %36 = load %struct.inode*, %struct.inode** %13, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @S_ISREG(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i64, i64* @EOPNOTSUPP, align 8
  %43 = sub nsw i64 0, %42
  store i64 %43, i64* %5, align 8
  br label %110

44:                                               ; preds = %35
  %45 = load %struct.inode*, %struct.inode** %13, align 8
  %46 = call i32 @inode_lock(%struct.inode* %45)
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %90

51:                                               ; preds = %44
  %52 = load %struct.inode*, %struct.inode** %13, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = shl i32 %54, 9
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %12, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %105

62:                                               ; preds = %51
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* %12, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %15, align 8
  %70 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 1
  %73 = add nsw i32 %68, %72
  %74 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %15, align 8
  %75 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %73, %76
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %88, %62
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %10, align 4
  %81 = icmp sgt i32 %79, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load %struct.inode*, %struct.inode** %13, align 8
  %84 = call i32 @fat_add_cluster(%struct.inode* %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %105

88:                                               ; preds = %82
  br label %78

89:                                               ; preds = %78
  br label %104

90:                                               ; preds = %44
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %91, %92
  %94 = load %struct.inode*, %struct.inode** %13, align 8
  %95 = call i32 @i_size_read(%struct.inode* %94)
  %96 = icmp sle i32 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %105

98:                                               ; preds = %90
  %99 = load %struct.inode*, %struct.inode** %13, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %100, %101
  %103 = call i32 @fat_cont_expand(%struct.inode* %99, i32 %102)
  store i32 %103, i32* %16, align 4
  br label %104

104:                                              ; preds = %98, %89
  br label %105

105:                                              ; preds = %104, %97, %87, %61
  %106 = load %struct.inode*, %struct.inode** %13, align 8
  %107 = call i32 @inode_unlock(%struct.inode* %106)
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %5, align 8
  br label %110

110:                                              ; preds = %105, %41, %32
  %111 = load i64, i64* %5, align 8
  ret i64 %111
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @fat_add_cluster(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @fat_cont_expand(%struct.inode*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
