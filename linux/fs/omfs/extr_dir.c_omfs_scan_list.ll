; ModuleID = '/home/carl/AnghaBench/linux/fs/omfs/extr_dir.c_omfs_scan_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/omfs/extr_dir.c_omfs_scan_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }
%struct.inode = type { i32 }
%struct.omfs_inode = type { i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*, i32, i8*, i32, i32*)* @omfs_scan_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @omfs_scan_list(%struct.inode* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.omfs_inode*, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %14, align 4
  %17 = load i32*, i32** %11, align 8
  store i32 -1, i32* %17, align 4
  br label %18

18:                                               ; preds = %59, %5
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %68

21:                                               ; preds = %18
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.buffer_head* @omfs_bread(i32 %24, i32 %25)
  store %struct.buffer_head* %26, %struct.buffer_head** %12, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %28 = icmp ne %struct.buffer_head* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %14, align 4
  br label %69

32:                                               ; preds = %21
  %33 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.omfs_inode*
  store %struct.omfs_inode* %36, %struct.omfs_inode** %13, align 8
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @OMFS_SB(i32 %39)
  %41 = load %struct.omfs_inode*, %struct.omfs_inode** %13, align 8
  %42 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %41, i32 0, i32 2
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @omfs_is_bad(i32 %40, i32* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %32
  %47 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %48 = call i32 @brelse(%struct.buffer_head* %47)
  br label %69

49:                                               ; preds = %32
  %50 = load %struct.omfs_inode*, %struct.omfs_inode** %13, align 8
  %51 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @strncmp(i32 %52, i8* %53, i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %58, %struct.buffer_head** %6, align 8
  br label %72

59:                                               ; preds = %49
  %60 = load i32, i32* %8, align 4
  %61 = load i32*, i32** %11, align 8
  store i32 %60, i32* %61, align 4
  %62 = load %struct.omfs_inode*, %struct.omfs_inode** %13, align 8
  %63 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @be64_to_cpu(i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %67 = call i32 @brelse(%struct.buffer_head* %66)
  br label %18

68:                                               ; preds = %18
  br label %69

69:                                               ; preds = %68, %46, %29
  %70 = load i32, i32* %14, align 4
  %71 = call %struct.buffer_head* @ERR_PTR(i32 %70)
  store %struct.buffer_head* %71, %struct.buffer_head** %6, align 8
  br label %72

72:                                               ; preds = %69, %57
  %73 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  ret %struct.buffer_head* %73
}

declare dso_local %struct.buffer_head* @omfs_bread(i32, i32) #1

declare dso_local i64 @omfs_is_bad(i32, i32*, i32) #1

declare dso_local i32 @OMFS_SB(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local %struct.buffer_head* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
