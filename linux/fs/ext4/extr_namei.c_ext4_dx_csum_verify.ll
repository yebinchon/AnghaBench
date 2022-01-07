; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_dx_csum_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_dx_csum_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_dir_entry = type { i32 }
%struct.dx_countlimit = type { i32, i32 }
%struct.dx_tail = type { i64 }
%struct.dx_entry = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"dir seems corrupt?  Run e2fsck -D.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_dir_entry*)* @ext4_dx_csum_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_dx_csum_verify(%struct.inode* %0, %struct.ext4_dir_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ext4_dir_entry*, align 8
  %6 = alloca %struct.dx_countlimit*, align 8
  %7 = alloca %struct.dx_tail*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ext4_dir_entry* %1, %struct.ext4_dir_entry** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ext4_has_metadata_csum(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %70

17:                                               ; preds = %2
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = load %struct.ext4_dir_entry*, %struct.ext4_dir_entry** %5, align 8
  %20 = call %struct.dx_countlimit* @get_dx_countlimit(%struct.inode* %18, %struct.ext4_dir_entry* %19, i32* %8)
  store %struct.dx_countlimit* %20, %struct.dx_countlimit** %6, align 8
  %21 = load %struct.dx_countlimit*, %struct.dx_countlimit** %6, align 8
  %22 = icmp ne %struct.dx_countlimit* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = call i32 @EXT4_ERROR_INODE(%struct.inode* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %70

26:                                               ; preds = %17
  %27 = load %struct.dx_countlimit*, %struct.dx_countlimit** %6, align 8
  %28 = getelementptr inbounds %struct.dx_countlimit, %struct.dx_countlimit* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le16_to_cpu(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.dx_countlimit*, %struct.dx_countlimit** %6, align 8
  %32 = getelementptr inbounds %struct.dx_countlimit, %struct.dx_countlimit* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = add i64 %36, %39
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @EXT4_BLOCK_SIZE(i32 %43)
  %45 = sext i32 %44 to i64
  %46 = sub i64 %45, 8
  %47 = icmp ugt i64 %40, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %26
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = call i32 @warn_no_space_for_csum(%struct.inode* %49)
  store i32 0, i32* %3, align 4
  br label %70

51:                                               ; preds = %26
  %52 = load %struct.dx_countlimit*, %struct.dx_countlimit** %6, align 8
  %53 = bitcast %struct.dx_countlimit* %52 to %struct.dx_entry*
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.dx_entry, %struct.dx_entry* %53, i64 %55
  %57 = bitcast %struct.dx_entry* %56 to %struct.dx_tail*
  store %struct.dx_tail* %57, %struct.dx_tail** %7, align 8
  %58 = load %struct.dx_tail*, %struct.dx_tail** %7, align 8
  %59 = getelementptr inbounds %struct.dx_tail, %struct.dx_tail* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = load %struct.ext4_dir_entry*, %struct.ext4_dir_entry** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.dx_tail*, %struct.dx_tail** %7, align 8
  %66 = call i64 @ext4_dx_csum(%struct.inode* %61, %struct.ext4_dir_entry* %62, i32 %63, i32 %64, %struct.dx_tail* %65)
  %67 = icmp ne i64 %60, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %70

69:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %68, %48, %23, %16
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @ext4_has_metadata_csum(i32) #1

declare dso_local %struct.dx_countlimit* @get_dx_countlimit(%struct.inode*, %struct.ext4_dir_entry*, i32*) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @EXT4_BLOCK_SIZE(i32) #1

declare dso_local i32 @warn_no_space_for_csum(%struct.inode*) #1

declare dso_local i64 @ext4_dx_csum(%struct.inode*, %struct.ext4_dir_entry*, i32, i32, %struct.dx_tail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
