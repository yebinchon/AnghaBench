; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_set_file_temperature.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_set_file_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.inode = type { i32 }

@extlist = common dso_local global i32* null, align 8
@F2FS_EXTENSION_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, %struct.inode*, i8*)* @set_file_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_file_temperature(%struct.f2fs_sb_info* %0, %struct.inode* %1, i8* %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %11 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** @extlist, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @__u8(i32 %16)
  %18 = load i64, i64* @F2FS_EXTENSION_LEN, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32 %14, i32* %19, align 4
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %21 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %20, i32 0, i32 0
  %22 = call i32 @down_read(i32* %21)
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %24 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %30 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %51, %3
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %36, %37
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = load i8*, i8** %6, align 8
  %42 = load i32*, i32** @extlist, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @is_extension_exist(i8* %41, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %54

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %34

54:                                               ; preds = %49, %34
  %55 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %56 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %55, i32 0, i32 0
  %57 = call i32 @up_read(i32* %56)
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %59, %60
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %74

64:                                               ; preds = %54
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.inode*, %struct.inode** %5, align 8
  %70 = call i32 @file_set_cold(%struct.inode* %69)
  br label %74

71:                                               ; preds = %64
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = call i32 @file_set_hot(%struct.inode* %72)
  br label %74

74:                                               ; preds = %63, %71, %68
  ret void
}

declare dso_local i32* @__u8(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @is_extension_exist(i8*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @file_set_cold(%struct.inode*) #1

declare dso_local i32 @file_set_hot(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
