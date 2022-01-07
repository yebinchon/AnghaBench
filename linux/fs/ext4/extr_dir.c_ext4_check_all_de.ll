; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_dir.c_ext4_check_all_de.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_dir.c_ext4_check_all_de.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_dir_entry_2 = type { i32 }

@EFSCORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_check_all_de(%struct.inode* %0, %struct.buffer_head* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext4_dir_entry_2*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %15, %struct.ext4_dir_entry_2** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr i8, i8* %16, i64 %18
  store i8* %19, i8** %13, align 8
  br label %20

20:                                               ; preds = %37, %4
  %21 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %10, align 8
  %22 = bitcast %struct.ext4_dir_entry_2* %21 to i8*
  %23 = load i8*, i8** %13, align 8
  %24 = icmp ult i8* %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %20
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %10, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i64 @ext4_check_dir_entry(%struct.inode* %26, i32* null, %struct.ext4_dir_entry_2* %27, %struct.buffer_head* %28, i8* %29, i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @EFSCORRUPTED, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %61

37:                                               ; preds = %25
  %38 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %10, align 8
  %39 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @ext4_rec_len_from_disk(i32 %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %10, align 8
  %44 = bitcast %struct.ext4_dir_entry_2* %43 to i8*
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = bitcast i8* %47 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %48, %struct.ext4_dir_entry_2** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = add i32 %50, %49
  store i32 %51, i32* %12, align 4
  br label %20

52:                                               ; preds = %20
  %53 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %10, align 8
  %54 = bitcast %struct.ext4_dir_entry_2* %53 to i8*
  %55 = load i8*, i8** %13, align 8
  %56 = icmp ugt i8* %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EFSCORRUPTED, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %61

60:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %57, %34
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i64 @ext4_check_dir_entry(%struct.inode*, i32*, %struct.ext4_dir_entry_2*, %struct.buffer_head*, i8*, i32, i32) #1

declare dso_local i32 @ext4_rec_len_from_disk(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
