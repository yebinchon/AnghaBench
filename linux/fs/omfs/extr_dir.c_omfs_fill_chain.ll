; ModuleID = '/home/carl/AnghaBench/linux/fs/omfs/extr_dir.c_omfs_fill_chain.c'
source_filename = "/home/carl/AnghaBench/linux/fs/omfs/extr_dir.c_omfs_fill_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dir_context = type { i32 }
%struct.buffer_head = type { i64 }
%struct.omfs_inode = type { i64, i32, i32, i32 }

@OMFS_DIR = common dso_local global i64 0, align 8
@DT_DIR = common dso_local global i8 0, align 1
@DT_REG = common dso_local global i8 0, align 1
@OMFS_NAMELEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dir_context*, i32, i32)* @omfs_fill_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omfs_fill_chain(%struct.inode* %0, %struct.dir_context* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dir_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.omfs_inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dir_context* %1, %struct.dir_context** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  br label %14

14:                                               ; preds = %87, %51, %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %94

17:                                               ; preds = %14
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.buffer_head* @omfs_bread(i32 %20, i32 %21)
  store %struct.buffer_head* %22, %struct.buffer_head** %10, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %24 = icmp ne %struct.buffer_head* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i32 1, i32* %5, align 4
  br label %95

26:                                               ; preds = %17
  %27 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.omfs_inode*
  store %struct.omfs_inode* %30, %struct.omfs_inode** %11, align 8
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @OMFS_SB(i32 %33)
  %35 = load %struct.omfs_inode*, %struct.omfs_inode** %11, align 8
  %36 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %35, i32 0, i32 3
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @omfs_is_bad(i32 %34, i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %26
  %41 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %42 = call i32 @brelse(%struct.buffer_head* %41)
  store i32 1, i32* %5, align 4
  br label %95

43:                                               ; preds = %26
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %12, align 4
  %45 = load %struct.omfs_inode*, %struct.omfs_inode** %11, align 8
  %46 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be64_to_cpu(i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %9, align 4
  %54 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %55 = call i32 @brelse(%struct.buffer_head* %54)
  br label %14

56:                                               ; preds = %43
  %57 = load %struct.omfs_inode*, %struct.omfs_inode** %11, align 8
  %58 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @OMFS_DIR, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i8, i8* @DT_DIR, align 1
  %64 = zext i8 %63 to i32
  br label %68

65:                                               ; preds = %56
  %66 = load i8, i8* @DT_REG, align 1
  %67 = zext i8 %66 to i32
  br label %68

68:                                               ; preds = %65, %62
  %69 = phi i32 [ %64, %62 ], [ %67, %65 ]
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %13, align 1
  %71 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %72 = load %struct.omfs_inode*, %struct.omfs_inode** %11, align 8
  %73 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.omfs_inode*, %struct.omfs_inode** %11, align 8
  %76 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @OMFS_NAMELEN, align 4
  %79 = call i32 @strnlen(i32 %77, i32 %78)
  %80 = load i32, i32* %12, align 4
  %81 = load i8, i8* %13, align 1
  %82 = call i32 @dir_emit(%struct.dir_context* %71, i32 %74, i32 %79, i32 %80, i8 zeroext %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %68
  %85 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %86 = call i32 @brelse(%struct.buffer_head* %85)
  store i32 0, i32* %5, align 4
  br label %95

87:                                               ; preds = %68
  %88 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %89 = call i32 @brelse(%struct.buffer_head* %88)
  %90 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %91 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %14

94:                                               ; preds = %14
  store i32 1, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %84, %40, %25
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.buffer_head* @omfs_bread(i32, i32) #1

declare dso_local i64 @omfs_is_bad(i32, i32*, i32) #1

declare dso_local i32 @OMFS_SB(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i32, i32, i32, i8 zeroext) #1

declare dso_local i32 @strnlen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
