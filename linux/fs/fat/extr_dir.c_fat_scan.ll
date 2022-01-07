; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_scan.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.fat_slot_info = type { i32, %struct.TYPE_3__*, i32*, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@MSDOS_NAME = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_scan(%struct.inode* %0, i8* %1, %struct.fat_slot_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fat_slot_info*, align 8
  %8 = alloca %struct.super_block*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.fat_slot_info* %2, %struct.fat_slot_info** %7, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %8, align 8
  %12 = load %struct.fat_slot_info*, %struct.fat_slot_info** %7, align 8
  %13 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.fat_slot_info*, %struct.fat_slot_info** %7, align 8
  %15 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %14, i32 0, i32 2
  store i32* null, i32** %15, align 8
  br label %16

16:                                               ; preds = %53, %3
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = load %struct.fat_slot_info*, %struct.fat_slot_info** %7, align 8
  %19 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %18, i32 0, i32 4
  %20 = load %struct.fat_slot_info*, %struct.fat_slot_info** %7, align 8
  %21 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %20, i32 0, i32 2
  %22 = load %struct.fat_slot_info*, %struct.fat_slot_info** %7, align 8
  %23 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %22, i32 0, i32 1
  %24 = call i64 @fat_get_short_entry(%struct.inode* %17, i64* %19, i32** %21, %struct.TYPE_3__** %23)
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %16
  %27 = load %struct.fat_slot_info*, %struct.fat_slot_info** %7, align 8
  %28 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @MSDOS_NAME, align 4
  %34 = call i32 @strncmp(i32 %31, i8* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %53, label %36

36:                                               ; preds = %26
  %37 = load %struct.fat_slot_info*, %struct.fat_slot_info** %7, align 8
  %38 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %39, 4
  store i64 %40, i64* %38, align 8
  %41 = load %struct.fat_slot_info*, %struct.fat_slot_info** %7, align 8
  %42 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.super_block*, %struct.super_block** %8, align 8
  %44 = load %struct.fat_slot_info*, %struct.fat_slot_info** %7, align 8
  %45 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.fat_slot_info*, %struct.fat_slot_info** %7, align 8
  %48 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = call i32 @fat_make_i_pos(%struct.super_block* %43, i32* %46, %struct.TYPE_3__* %49)
  %51 = load %struct.fat_slot_info*, %struct.fat_slot_info** %7, align 8
  %52 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %4, align 4
  br label %57

53:                                               ; preds = %26
  br label %16

54:                                               ; preds = %16
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %36
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @fat_get_short_entry(%struct.inode*, i64*, i32**, %struct.TYPE_3__**) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @fat_make_i_pos(%struct.super_block*, i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
