; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_insert_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_insert_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.ext4_dir_entry_2 = type { i32, i32, i64, i32, i8* }
%struct.ext4_filename = type { i32 }

@EXT4_FT_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext4_insert_dentry(%struct.inode* %0, %struct.ext4_dir_entry_2* %1, i32 %2, %struct.ext4_filename* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_dir_entry_2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_filename*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext4_dir_entry_2*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext4_dir_entry_2* %1, %struct.ext4_dir_entry_2** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ext4_filename* %3, %struct.ext4_filename** %8, align 8
  %12 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %13 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @EXT4_DIR_REC_LEN(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %17 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %16, i32 0, i32 4
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ext4_rec_len_from_disk(i8* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %22 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %4
  %26 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %27 = bitcast %struct.ext4_dir_entry_2* %26 to i8*
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = bitcast i8* %30 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %31, %struct.ext4_dir_entry_2** %11, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @ext4_rec_len_to_disk(i32 %34, i32 %35)
  %37 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %38 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i8* @ext4_rec_len_to_disk(i32 %39, i32 %40)
  %42 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %43 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  store %struct.ext4_dir_entry_2* %44, %struct.ext4_dir_entry_2** %6, align 8
  br label %45

45:                                               ; preds = %25, %4
  %46 = load i32, i32* @EXT4_FT_UNKNOWN, align 4
  %47 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %48 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @cpu_to_le32(i32 %51)
  %53 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %54 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ext4_set_de_type(i32 %57, %struct.ext4_dir_entry_2* %58, i32 %61)
  %63 = load %struct.ext4_filename*, %struct.ext4_filename** %8, align 8
  %64 = call i32 @fname_len(%struct.ext4_filename* %63)
  %65 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %66 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %68 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ext4_filename*, %struct.ext4_filename** %8, align 8
  %71 = call i32 @fname_name(%struct.ext4_filename* %70)
  %72 = load %struct.ext4_filename*, %struct.ext4_filename** %8, align 8
  %73 = call i32 @fname_len(%struct.ext4_filename* %72)
  %74 = call i32 @memcpy(i32 %69, i32 %71, i32 %73)
  ret void
}

declare dso_local i32 @EXT4_DIR_REC_LEN(i32) #1

declare dso_local i32 @ext4_rec_len_from_disk(i8*, i32) #1

declare dso_local i8* @ext4_rec_len_to_disk(i32, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @ext4_set_de_type(i32, %struct.ext4_dir_entry_2*, i32) #1

declare dso_local i32 @fname_len(%struct.ext4_filename*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @fname_name(%struct.ext4_filename*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
