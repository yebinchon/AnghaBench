; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_validate_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_validate_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64 }
%struct.inode = type { i64, i32, i32 }
%struct.ubifs_inode = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"inode is too large (%lld)\00", align 1
@UBIFS_COMPR_TYPES_CNT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"unknown compression type %d\00", align 1
@XATTR_LIST_MAX = common dso_local global i64 0, align 8
@UBIFS_MAX_INO_DATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"inode %lu uses '%s' compression, but it was not compiled in\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.inode*)* @validate_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_inode(%struct.ubifs_info* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_inode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %5, align 8
  %9 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %8)
  store %struct.ubifs_inode* %9, %struct.ubifs_inode** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %12, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @ubifs_err(%struct.ubifs_info* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %21)
  store i32 1, i32* %3, align 4
  br label %93

23:                                               ; preds = %2
  %24 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %25 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @UBIFS_COMPR_TYPES_CNT, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %31 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %32 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @ubifs_err(%struct.ubifs_info* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  store i32 2, i32* %3, align 4
  br label %93

35:                                               ; preds = %23
  %36 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %37 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %40 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = load i64, i64* @XATTR_LIST_MAX, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 3, i32* %3, align 4
  br label %93

46:                                               ; preds = %35
  %47 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %48 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %53 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @UBIFS_MAX_INO_DATA, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51, %46
  store i32 4, i32* %3, align 4
  br label %93

58:                                               ; preds = %51
  %59 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %60 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @S_ISREG(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  store i32 5, i32* %3, align 4
  br label %93

70:                                               ; preds = %63, %58
  %71 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %72 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %73 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ubifs_compr_present(%struct.ubifs_info* %71, i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %70
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %79 = load %struct.inode*, %struct.inode** %5, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %83 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %84 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @ubifs_compr_name(%struct.ubifs_info* %82, i64 %85)
  %87 = call i32 @ubifs_warn(%struct.ubifs_info* %78, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %86)
  br label %88

88:                                               ; preds = %77, %70
  %89 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %90 = load %struct.inode*, %struct.inode** %5, align 8
  %91 = call i32 @dbg_check_dir(%struct.ubifs_info* %89, %struct.inode* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %88, %69, %57, %45, %29, %17
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i64) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @ubifs_compr_present(%struct.ubifs_info*, i64) #1

declare dso_local i32 @ubifs_warn(%struct.ubifs_info*, i8*, i32, i32) #1

declare dso_local i32 @ubifs_compr_name(%struct.ubifs_info*, i64) #1

declare dso_local i32 @dbg_check_dir(%struct.ubifs_info*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
