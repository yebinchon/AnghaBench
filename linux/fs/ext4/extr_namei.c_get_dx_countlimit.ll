; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_get_dx_countlimit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_get_dx_countlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dx_countlimit = type { i32 }
%struct.inode = type { i32 }
%struct.ext4_dir_entry = type { i32 }
%struct.dx_root_info = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dx_countlimit* (%struct.inode*, %struct.ext4_dir_entry*, i32*)* @get_dx_countlimit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dx_countlimit* @get_dx_countlimit(%struct.inode* %0, %struct.ext4_dir_entry* %1, i32* %2) #0 {
  %4 = alloca %struct.dx_countlimit*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_dir_entry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ext4_dir_entry*, align 8
  %9 = alloca %struct.dx_root_info*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext4_dir_entry* %1, %struct.ext4_dir_entry** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.ext4_dir_entry*, %struct.ext4_dir_entry** %6, align 8
  %12 = getelementptr inbounds %struct.ext4_dir_entry, %struct.ext4_dir_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le16_to_cpu(i32 %13)
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @EXT4_BLOCK_SIZE(i32 %17)
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 8, i32* %10, align 4
  br label %62

21:                                               ; preds = %3
  %22 = load %struct.ext4_dir_entry*, %struct.ext4_dir_entry** %6, align 8
  %23 = getelementptr inbounds %struct.ext4_dir_entry, %struct.ext4_dir_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16_to_cpu(i32 %24)
  %26 = icmp eq i32 %25, 12
  br i1 %26, label %27, label %60

27:                                               ; preds = %21
  %28 = load %struct.ext4_dir_entry*, %struct.ext4_dir_entry** %6, align 8
  %29 = bitcast %struct.ext4_dir_entry* %28 to i8*
  %30 = getelementptr i8, i8* %29, i64 12
  %31 = bitcast i8* %30 to %struct.ext4_dir_entry*
  store %struct.ext4_dir_entry* %31, %struct.ext4_dir_entry** %8, align 8
  %32 = load %struct.ext4_dir_entry*, %struct.ext4_dir_entry** %8, align 8
  %33 = getelementptr inbounds %struct.ext4_dir_entry, %struct.ext4_dir_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le16_to_cpu(i32 %34)
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @EXT4_BLOCK_SIZE(i32 %38)
  %40 = sub nsw i32 %39, 12
  %41 = icmp ne i32 %35, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  store %struct.dx_countlimit* null, %struct.dx_countlimit** %4, align 8
  br label %75

43:                                               ; preds = %27
  %44 = load %struct.ext4_dir_entry*, %struct.ext4_dir_entry** %8, align 8
  %45 = bitcast %struct.ext4_dir_entry* %44 to i8*
  %46 = getelementptr i8, i8* %45, i64 12
  %47 = bitcast i8* %46 to %struct.dx_root_info*
  store %struct.dx_root_info* %47, %struct.dx_root_info** %9, align 8
  %48 = load %struct.dx_root_info*, %struct.dx_root_info** %9, align 8
  %49 = getelementptr inbounds %struct.dx_root_info, %struct.dx_root_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %43
  %53 = load %struct.dx_root_info*, %struct.dx_root_info** %9, align 8
  %54 = getelementptr inbounds %struct.dx_root_info, %struct.dx_root_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = icmp ne i64 %56, 16
  br i1 %57, label %58, label %59

58:                                               ; preds = %52, %43
  store %struct.dx_countlimit* null, %struct.dx_countlimit** %4, align 8
  br label %75

59:                                               ; preds = %52
  store i32 32, i32* %10, align 4
  br label %61

60:                                               ; preds = %21
  store %struct.dx_countlimit* null, %struct.dx_countlimit** %4, align 8
  br label %75

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %61, %20
  %63 = load i32*, i32** %7, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.ext4_dir_entry*, %struct.ext4_dir_entry** %6, align 8
  %70 = bitcast %struct.ext4_dir_entry* %69 to i8*
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr i8, i8* %70, i64 %72
  %74 = bitcast i8* %73 to %struct.dx_countlimit*
  store %struct.dx_countlimit* %74, %struct.dx_countlimit** %4, align 8
  br label %75

75:                                               ; preds = %68, %60, %58, %42
  %76 = load %struct.dx_countlimit*, %struct.dx_countlimit** %4, align 8
  ret %struct.dx_countlimit* %76
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @EXT4_BLOCK_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
