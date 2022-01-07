; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_find_dest_de.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_find_dest_de.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_filename = type { i32 }
%struct.ext4_dir_entry_2 = type { i64, i32, i32 }

@EFSCORRUPTED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_find_dest_de(%struct.inode* %0, %struct.inode* %1, %struct.buffer_head* %2, i8* %3, i32 %4, %struct.ext4_filename* %5, %struct.ext4_dir_entry_2** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ext4_filename*, align 8
  %15 = alloca %struct.ext4_dir_entry_2**, align 8
  %16 = alloca %struct.ext4_dir_entry_2*, align 8
  %17 = alloca i16, align 2
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.ext4_filename* %5, %struct.ext4_filename** %14, align 8
  store %struct.ext4_dir_entry_2** %6, %struct.ext4_dir_entry_2*** %15, align 8
  %22 = load %struct.ext4_filename*, %struct.ext4_filename** %14, align 8
  %23 = call i32 @fname_len(%struct.ext4_filename* %22)
  %24 = call i8* @EXT4_DIR_REC_LEN(i32 %23)
  %25 = ptrtoint i8* %24 to i16
  store i16 %25, i16* %17, align 2
  store i32 0, i32* %20, align 4
  %26 = load i8*, i8** %12, align 8
  %27 = bitcast i8* %26 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %27, %struct.ext4_dir_entry_2** %16, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr i8, i8* %28, i64 %30
  %32 = load i16, i16* %17, align 2
  %33 = zext i16 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = sub i64 0, %34
  %36 = getelementptr i8, i8* %31, i64 %35
  store i8* %36, i8** %21, align 8
  br label %37

37:                                               ; preds = %90, %7
  %38 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  %39 = bitcast %struct.ext4_dir_entry_2* %38 to i8*
  %40 = load i8*, i8** %21, align 8
  %41 = icmp ule i8* %39, %40
  br i1 %41, label %42, label %100

42:                                               ; preds = %37
  %43 = load %struct.inode*, %struct.inode** %9, align 8
  %44 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  %45 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %20, align 4
  %49 = call i64 @ext4_check_dir_entry(%struct.inode* %43, i32* null, %struct.ext4_dir_entry_2* %44, %struct.buffer_head* %45, i8* %46, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @EFSCORRUPTED, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %111

54:                                               ; preds = %42
  %55 = load %struct.inode*, %struct.inode** %9, align 8
  %56 = load %struct.ext4_filename*, %struct.ext4_filename** %14, align 8
  %57 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  %58 = call i64 @ext4_match(%struct.inode* %55, %struct.ext4_filename* %56, %struct.ext4_dir_entry_2* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @EEXIST, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %111

63:                                               ; preds = %54
  %64 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  %65 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @EXT4_DIR_REC_LEN(i32 %66)
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %18, align 4
  %69 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  %70 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @ext4_rec_len_from_disk(i32 %71, i32 %72)
  store i32 %73, i32* %19, align 4
  %74 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  %75 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %63
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* %18, align 4
  %81 = sub nsw i32 %79, %80
  br label %84

82:                                               ; preds = %63
  %83 = load i32, i32* %19, align 4
  br label %84

84:                                               ; preds = %82, %78
  %85 = phi i32 [ %81, %78 ], [ %83, %82 ]
  %86 = load i16, i16* %17, align 2
  %87 = zext i16 %86 to i32
  %88 = icmp sge i32 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %100

90:                                               ; preds = %84
  %91 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  %92 = bitcast %struct.ext4_dir_entry_2* %91 to i8*
  %93 = load i32, i32* %19, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = bitcast i8* %95 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %96, %struct.ext4_dir_entry_2** %16, align 8
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* %20, align 4
  %99 = add i32 %98, %97
  store i32 %99, i32* %20, align 4
  br label %37

100:                                              ; preds = %89, %37
  %101 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  %102 = bitcast %struct.ext4_dir_entry_2* %101 to i8*
  %103 = load i8*, i8** %21, align 8
  %104 = icmp ugt i8* %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @ENOSPC, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %8, align 4
  br label %111

108:                                              ; preds = %100
  %109 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  %110 = load %struct.ext4_dir_entry_2**, %struct.ext4_dir_entry_2*** %15, align 8
  store %struct.ext4_dir_entry_2* %109, %struct.ext4_dir_entry_2** %110, align 8
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %108, %105, %60, %51
  %112 = load i32, i32* %8, align 4
  ret i32 %112
}

declare dso_local i8* @EXT4_DIR_REC_LEN(i32) #1

declare dso_local i32 @fname_len(%struct.ext4_filename*) #1

declare dso_local i64 @ext4_check_dir_entry(%struct.inode*, i32*, %struct.ext4_dir_entry_2*, %struct.buffer_head*, i8*, i32, i32) #1

declare dso_local i64 @ext4_match(%struct.inode*, %struct.ext4_filename*, %struct.ext4_dir_entry_2*) #1

declare dso_local i32 @ext4_rec_len_from_disk(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
