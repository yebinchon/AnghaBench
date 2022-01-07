; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_dx_csum_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_dx_csum_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_dir_entry = type { i32 }
%struct.dx_countlimit = type { i32, i32 }
%struct.dx_tail = type { i32 }
%struct.dx_entry = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"dir seems corrupt?  Run e2fsck -D.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.ext4_dir_entry*)* @ext4_dx_csum_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_dx_csum_set(%struct.inode* %0, %struct.ext4_dir_entry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ext4_dir_entry*, align 8
  %5 = alloca %struct.dx_countlimit*, align 8
  %6 = alloca %struct.dx_tail*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.ext4_dir_entry* %1, %struct.ext4_dir_entry** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ext4_has_metadata_csum(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %65

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = load %struct.ext4_dir_entry*, %struct.ext4_dir_entry** %4, align 8
  %19 = call %struct.dx_countlimit* @get_dx_countlimit(%struct.inode* %17, %struct.ext4_dir_entry* %18, i32* %7)
  store %struct.dx_countlimit* %19, %struct.dx_countlimit** %5, align 8
  %20 = load %struct.dx_countlimit*, %struct.dx_countlimit** %5, align 8
  %21 = icmp ne %struct.dx_countlimit* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = call i32 @EXT4_ERROR_INODE(%struct.inode* %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %65

25:                                               ; preds = %16
  %26 = load %struct.dx_countlimit*, %struct.dx_countlimit** %5, align 8
  %27 = getelementptr inbounds %struct.dx_countlimit, %struct.dx_countlimit* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.dx_countlimit*, %struct.dx_countlimit** %5, align 8
  %31 = getelementptr inbounds %struct.dx_countlimit, %struct.dx_countlimit* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le16_to_cpu(i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = add i64 %35, %38
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @EXT4_BLOCK_SIZE(i32 %42)
  %44 = sext i32 %43 to i64
  %45 = sub i64 %44, 4
  %46 = icmp ugt i64 %39, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %25
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  %49 = call i32 @warn_no_space_for_csum(%struct.inode* %48)
  br label %65

50:                                               ; preds = %25
  %51 = load %struct.dx_countlimit*, %struct.dx_countlimit** %5, align 8
  %52 = bitcast %struct.dx_countlimit* %51 to %struct.dx_entry*
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.dx_entry, %struct.dx_entry* %52, i64 %54
  %56 = bitcast %struct.dx_entry* %55 to %struct.dx_tail*
  store %struct.dx_tail* %56, %struct.dx_tail** %6, align 8
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = load %struct.ext4_dir_entry*, %struct.ext4_dir_entry** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.dx_tail*, %struct.dx_tail** %6, align 8
  %62 = call i32 @ext4_dx_csum(%struct.inode* %57, %struct.ext4_dir_entry* %58, i32 %59, i32 %60, %struct.dx_tail* %61)
  %63 = load %struct.dx_tail*, %struct.dx_tail** %6, align 8
  %64 = getelementptr inbounds %struct.dx_tail, %struct.dx_tail* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %50, %47, %22, %15
  ret void
}

declare dso_local i32 @ext4_has_metadata_csum(i32) #1

declare dso_local %struct.dx_countlimit* @get_dx_countlimit(%struct.inode*, %struct.ext4_dir_entry*, i32*) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @EXT4_BLOCK_SIZE(i32) #1

declare dso_local i32 @warn_no_space_for_csum(%struct.inode*) #1

declare dso_local i32 @ext4_dx_csum(%struct.inode*, %struct.ext4_dir_entry*, i32, i32, %struct.dx_tail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
