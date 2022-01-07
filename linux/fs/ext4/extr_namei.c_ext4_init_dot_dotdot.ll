; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_init_dot_dotdot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_init_dot_dotdot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ext4_dir_entry_2 = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ext4_dir_entry_2* @ext4_init_dot_dotdot(%struct.inode* %0, %struct.ext4_dir_entry_2* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ext4_dir_entry_2*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.ext4_dir_entry_2* %1, %struct.ext4_dir_entry_2** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.inode*, %struct.inode** %7, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @cpu_to_le32(i32 %15)
  %17 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %18 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %20 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %22 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @EXT4_DIR_REC_LEN(i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = call i8* @ext4_rec_len_to_disk(i64 %24, i32 %25)
  %27 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %28 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %30 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strcpy(i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %37 = load i32, i32* @S_IFDIR, align 4
  %38 = call i32 @ext4_set_de_type(i32 %35, %struct.ext4_dir_entry_2* %36, i32 %37)
  %39 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2* %39, i32 %40)
  store %struct.ext4_dir_entry_2* %41, %struct.ext4_dir_entry_2** %8, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %45 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %47 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %46, i32 0, i32 0
  store i32 2, i32* %47, align 8
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %6
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = call i64 @EXT4_DIR_REC_LEN(i32 1)
  %56 = add nsw i64 %54, %55
  %57 = sub nsw i64 %52, %56
  %58 = load i32, i32* %9, align 4
  %59 = call i8* @ext4_rec_len_to_disk(i64 %57, i32 %58)
  %60 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %61 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  br label %71

62:                                               ; preds = %6
  %63 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %64 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @EXT4_DIR_REC_LEN(i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = call i8* @ext4_rec_len_to_disk(i64 %66, i32 %67)
  %69 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %70 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %62, %50
  %72 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %73 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @strcpy(i32 %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.inode*, %struct.inode** %7, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %80 = load i32, i32* @S_IFDIR, align 4
  %81 = call i32 @ext4_set_de_type(i32 %78, %struct.ext4_dir_entry_2* %79, i32 %80)
  %82 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2* %82, i32 %83)
  ret %struct.ext4_dir_entry_2* %84
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @ext4_rec_len_to_disk(i64, i32) #1

declare dso_local i64 @EXT4_DIR_REC_LEN(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @ext4_set_de_type(i32, %struct.ext4_dir_entry_2*, i32) #1

declare dso_local %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
