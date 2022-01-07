; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_subdirs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_subdirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.msdos_dir_entry = type { i32 }

@ATTR_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_subdirs(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.msdos_dir_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  store i32 0, i32* %6, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %3, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %21, %1
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call i64 @fat_get_short_entry(%struct.inode* %8, i64* %5, %struct.buffer_head** %3, %struct.msdos_dir_entry** %4)
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %4, align 8
  %13 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ATTR_DIR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %18, %11
  br label %7

22:                                               ; preds = %7
  %23 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %24 = call i32 @brelse(%struct.buffer_head* %23)
  %25 = load i32, i32* %6, align 4
  ret i32 %25
}

declare dso_local i64 @fat_get_short_entry(%struct.inode*, i64*, %struct.buffer_head**, %struct.msdos_dir_entry**) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
