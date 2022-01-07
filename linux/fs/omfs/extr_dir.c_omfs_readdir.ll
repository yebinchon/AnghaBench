; ModuleID = '/home/carl/AnghaBench/linux/fs/omfs/extr_dir.c_omfs_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/omfs/extr_dir.c_omfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dir_context = type { i32 }
%struct.inode = type { i32, i32, i32 }
%struct.buffer_head = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OMFS_DIR_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @omfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omfs_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = call %struct.inode* @file_inode(%struct.file* %13)
  store %struct.inode* %14, %struct.inode** %6, align 8
  %15 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %16 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %104

23:                                               ; preds = %2
  %24 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %25 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 1048576
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.file*, %struct.file** %4, align 8
  %30 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %31 = call i32 @dir_emit_dots(%struct.file* %29, %struct.dir_context* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %104

34:                                               ; preds = %28
  %35 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %36 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %35, i32 0, i32 0
  store i32 1048576, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %23
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @OMFS_DIR_START, align 4
  %42 = sub nsw i32 %40, %41
  %43 = sdiv i32 %42, 8
  store i32 %43, i32* %11, align 4
  %44 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %45 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 20
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  %49 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %50 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 1048575
  store i32 %52, i32* %10, align 4
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.buffer_head* @omfs_bread(i32 %55, i32 %58)
  store %struct.buffer_head* %59, %struct.buffer_head** %7, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %61 = icmp ne %struct.buffer_head* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %37
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %104

65:                                               ; preds = %37
  %66 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %67 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @OMFS_DIR_START, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i32*
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32* %75, i32** %8, align 8
  br label %76

76:                                               ; preds = %98, %65
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %76
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %8, align 8
  %83 = load i32, i32* %81, align 4
  %84 = call i32 @be64_to_cpu(i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load %struct.inode*, %struct.inode** %6, align 8
  %86 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @omfs_fill_chain(%struct.inode* %85, %struct.dir_context* %86, i32 %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %80
  br label %101

92:                                               ; preds = %80
  store i32 0, i32* %10, align 4
  %93 = load i32, i32* %9, align 4
  %94 = add i32 %93, 2
  %95 = shl i32 %94, 20
  %96 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %97 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %9, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %76

101:                                              ; preds = %91, %76
  %102 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %103 = call i32 @brelse(%struct.buffer_head* %102)
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %101, %62, %33, %20
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @dir_emit_dots(%struct.file*, %struct.dir_context*) #1

declare dso_local %struct.buffer_head* @omfs_bread(i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @omfs_fill_chain(%struct.inode*, %struct.dir_context*, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
