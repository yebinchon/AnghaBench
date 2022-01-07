; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_correct_indexes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_correct_indexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { %struct.TYPE_2__*, %struct.ext4_extent_header*, %struct.ext4_extent* }
%struct.TYPE_2__ = type { i8* }
%struct.ext4_extent_header = type { i32 }
%struct.ext4_extent = type { i8* }

@.str = private unnamed_addr constant [31 x i8] c"ex %p == NULL or eh %p == NULL\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_ext_path*)* @ext4_ext_correct_indexes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_correct_indexes(i32* %0, %struct.inode* %1, %struct.ext4_ext_path* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext4_ext_path*, align 8
  %8 = alloca %struct.ext4_extent_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext4_extent*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.ext4_ext_path* %2, %struct.ext4_ext_path** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call i32 @ext_depth(%struct.inode* %14)
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %16, i64 %18
  %20 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %19, i32 0, i32 1
  %21 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %20, align 8
  store %struct.ext4_extent_header* %21, %struct.ext4_extent_header** %8, align 8
  %22 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %22, i64 %24
  %26 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %25, i32 0, i32 2
  %27 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  store %struct.ext4_extent* %27, %struct.ext4_extent** %10, align 8
  %28 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %29 = icmp eq %struct.ext4_extent* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %32 = icmp eq %struct.ext4_extent_header* %31, null
  br label %33

33:                                               ; preds = %30, %3
  %34 = phi i1 [ true, %3 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %41 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %42 = call i32 @EXT4_ERROR_INODE(%struct.inode* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.ext4_extent* %40, %struct.ext4_extent_header* %41)
  %43 = load i32, i32* @EFSCORRUPTED, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %153

45:                                               ; preds = %33
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %153

49:                                               ; preds = %45
  %50 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %51 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %52 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %51)
  %53 = icmp ne %struct.ext4_extent* %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %153

55:                                               ; preds = %49
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  %58 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %58, i64 %60
  %62 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %61, i32 0, i32 2
  %63 = load %struct.ext4_extent*, %struct.ext4_extent** %62, align 8
  %64 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %11, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %68, i64 %70
  %72 = call i32 @ext4_ext_get_access(i32* %66, %struct.inode* %67, %struct.ext4_ext_path* %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %55
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %4, align 4
  br label %153

77:                                               ; preds = %55
  %78 = load i8*, i8** %11, align 8
  %79 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %79, i64 %81
  %83 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i8* %78, i8** %85, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = load %struct.inode*, %struct.inode** %6, align 8
  %88 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %88, i64 %90
  %92 = call i32 @ext4_ext_dirty(i32* %86, %struct.inode* %87, %struct.ext4_ext_path* %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %77
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %4, align 4
  br label %153

97:                                               ; preds = %77
  br label %98

98:                                               ; preds = %150, %97
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %12, align 4
  %101 = icmp ne i32 %99, 0
  br i1 %101, label %102, label %151

102:                                              ; preds = %98
  %103 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %103, i64 %106
  %108 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %110, i64 %113
  %115 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %114, i32 0, i32 1
  %116 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %115, align 8
  %117 = call %struct.TYPE_2__* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %116)
  %118 = icmp ne %struct.TYPE_2__* %109, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %102
  br label %151

120:                                              ; preds = %102
  %121 = load i32*, i32** %5, align 8
  %122 = load %struct.inode*, %struct.inode** %6, align 8
  %123 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %123, i64 %125
  %127 = call i32 @ext4_ext_get_access(i32* %121, %struct.inode* %122, %struct.ext4_ext_path* %126)
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  br label %151

131:                                              ; preds = %120
  %132 = load i8*, i8** %11, align 8
  %133 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %133, i64 %135
  %137 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  store i8* %132, i8** %139, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = load %struct.inode*, %struct.inode** %6, align 8
  %142 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %142, i64 %144
  %146 = call i32 @ext4_ext_dirty(i32* %140, %struct.inode* %141, %struct.ext4_ext_path* %145)
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %13, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %131
  br label %151

150:                                              ; preds = %131
  br label %98

151:                                              ; preds = %149, %130, %119, %98
  %152 = load i32, i32* %13, align 4
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %151, %95, %75, %54, %48, %38
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, %struct.ext4_extent*, %struct.ext4_extent_header*) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i32 @ext4_ext_get_access(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_dirty(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local %struct.TYPE_2__* @EXT_FIRST_INDEX(%struct.ext4_extent_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
