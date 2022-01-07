; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c___ext4_ext_check.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c___ext4_ext_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_extent_header = type { i64, i64, i64, i64 }

@EFSCORRUPTED = common dso_local global i32 0, align 4
@EXT4_EXT_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"invalid magic\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"unexpected eh_depth\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"invalid eh_max\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"too large eh_max\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"invalid eh_entries\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"invalid extent entries\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"too large eh_depth\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"extent tree corrupted\00", align 1
@EFSBADCRC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [81 x i8] c"pblk %llu bad header/extent: %s - magic %x, entries %u, max %u(%u), depth %u(%u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.inode*, %struct.ext4_extent_header*, i32, i64)* @__ext4_ext_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ext4_ext_check(i8* %0, i32 %1, %struct.inode* %2, %struct.ext4_extent_header* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ext4_extent_header*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.inode* %2, %struct.inode** %10, align 8
  store %struct.ext4_extent_header* %3, %struct.ext4_extent_header** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* @EFSCORRUPTED, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %16, align 4
  %19 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %20 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @EXT4_EXT_MAGIC, align 8
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %104

28:                                               ; preds = %6
  %29 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %30 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @le16_to_cpu(i64 %31)
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %104

39:                                               ; preds = %28
  %40 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %41 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  br label %104

48:                                               ; preds = %39
  %49 = load %struct.inode*, %struct.inode** %10, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @ext4_ext_max_entries(%struct.inode* %49, i32 %50)
  store i32 %51, i32* %15, align 4
  %52 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %53 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @le16_to_cpu(i64 %54)
  %56 = load i32, i32* %15, align 4
  %57 = icmp sgt i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  br label %104

62:                                               ; preds = %48
  %63 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %64 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @le16_to_cpu(i64 %65)
  %67 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %68 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @le16_to_cpu(i64 %69)
  %71 = icmp sgt i32 %66, %70
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %14, align 8
  br label %104

76:                                               ; preds = %62
  %77 = load %struct.inode*, %struct.inode** %10, align 8
  %78 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @ext4_valid_extent_entries(%struct.inode* %77, %struct.ext4_extent_header* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8** %14, align 8
  br label %104

83:                                               ; preds = %76
  %84 = load i32, i32* %12, align 4
  %85 = icmp sgt i32 %84, 32
  %86 = zext i1 %85 to i32
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8** %14, align 8
  br label %104

90:                                               ; preds = %83
  %91 = load %struct.inode*, %struct.inode** %10, align 8
  %92 = call i32 @ext_depth(%struct.inode* %91)
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load %struct.inode*, %struct.inode** %10, align 8
  %97 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %98 = call i32 @ext4_extent_block_csum_verify(%struct.inode* %96, %struct.ext4_extent_header* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8** %14, align 8
  %101 = load i32, i32* @EFSBADCRC, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %16, align 4
  br label %104

103:                                              ; preds = %95, %90
  store i32 0, i32* %7, align 4
  br label %130

104:                                              ; preds = %100, %89, %82, %75, %61, %47, %38, %27
  %105 = load %struct.inode*, %struct.inode** %10, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i64, i64* %13, align 8
  %109 = load i8*, i8** %14, align 8
  %110 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %111 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @le16_to_cpu(i64 %112)
  %114 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %115 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @le16_to_cpu(i64 %116)
  %118 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %119 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @le16_to_cpu(i64 %120)
  %122 = load i32, i32* %15, align 4
  %123 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %124 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @le16_to_cpu(i64 %125)
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @ext4_error_inode(%struct.inode* %105, i8* %106, i32 %107, i32 0, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.8, i64 0, i64 0), i64 %108, i8* %109, i32 %113, i32 %117, i32 %121, i32 %122, i32 %126, i32 %127)
  %129 = load i32, i32* %16, align 4
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %104, %103
  %131 = load i32, i32* %7, align 4
  ret i32 %131
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @ext4_ext_max_entries(%struct.inode*, i32) #1

declare dso_local i32 @ext4_valid_extent_entries(%struct.inode*, %struct.ext4_extent_header*, i32) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i32 @ext4_extent_block_csum_verify(%struct.inode*, %struct.ext4_extent_header*) #1

declare dso_local i32 @ext4_error_inode(%struct.inode*, i8*, i32, i32, i8*, i64, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
