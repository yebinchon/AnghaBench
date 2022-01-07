; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_search_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_search_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32 }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ext4_filename = type { i32 }
%struct.ext4_dir_entry_2 = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_search_dir(%struct.buffer_head* %0, i8* %1, i32 %2, %struct.inode* %3, %struct.ext4_filename* %4, i32 %5, %struct.ext4_dir_entry_2** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.ext4_filename*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ext4_dir_entry_2**, align 8
  %16 = alloca %struct.ext4_dir_entry_2*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.inode* %3, %struct.inode** %12, align 8
  store %struct.ext4_filename* %4, %struct.ext4_filename** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.ext4_dir_entry_2** %6, %struct.ext4_dir_entry_2*** %15, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %20, %struct.ext4_dir_entry_2** %16, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8* %24, i8** %17, align 8
  br label %25

25:                                               ; preds = %76, %7
  %26 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  %27 = bitcast %struct.ext4_dir_entry_2* %26 to i8*
  %28 = load i8*, i8** %17, align 8
  %29 = icmp ult i8* %27, %28
  br i1 %29, label %30, label %86

30:                                               ; preds = %25
  %31 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  %32 = bitcast %struct.ext4_dir_entry_2* %31 to i8*
  %33 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  %34 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %32, i64 %36
  %38 = load i8*, i8** %17, align 8
  %39 = icmp ule i8* %37, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %30
  %41 = load %struct.inode*, %struct.inode** %12, align 8
  %42 = load %struct.ext4_filename*, %struct.ext4_filename** %13, align 8
  %43 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  %44 = call i64 @ext4_match(%struct.inode* %41, %struct.ext4_filename* %42, %struct.ext4_dir_entry_2* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %40
  %47 = load %struct.inode*, %struct.inode** %12, align 8
  %48 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %51 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %54 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i64 @ext4_check_dir_entry(%struct.inode* %47, i32* null, %struct.ext4_dir_entry_2* %48, %struct.buffer_head* %49, i32 %52, i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  store i32 -1, i32* %8, align 4
  br label %87

60:                                               ; preds = %46
  %61 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  %62 = load %struct.ext4_dir_entry_2**, %struct.ext4_dir_entry_2*** %15, align 8
  store %struct.ext4_dir_entry_2* %61, %struct.ext4_dir_entry_2** %62, align 8
  store i32 1, i32* %8, align 4
  br label %87

63:                                               ; preds = %40, %30
  %64 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  %65 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.inode*, %struct.inode** %12, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ext4_rec_len_from_disk(i32 %66, i32 %71)
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %18, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  store i32 -1, i32* %8, align 4
  br label %87

76:                                               ; preds = %63
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %14, align 4
  %79 = add i32 %78, %77
  store i32 %79, i32* %14, align 4
  %80 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  %81 = bitcast %struct.ext4_dir_entry_2* %80 to i8*
  %82 = load i32, i32* %18, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = bitcast i8* %84 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %85, %struct.ext4_dir_entry_2** %16, align 8
  br label %25

86:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %86, %75, %60, %59
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

declare dso_local i64 @ext4_match(%struct.inode*, %struct.ext4_filename*, %struct.ext4_dir_entry_2*) #1

declare dso_local i64 @ext4_check_dir_entry(%struct.inode*, i32*, %struct.ext4_dir_entry_2*, %struct.buffer_head*, i32, i32, i32) #1

declare dso_local i32 @ext4_rec_len_from_disk(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
