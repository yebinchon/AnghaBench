; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_get_inline_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_get_inline_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_dir_entry_2 = type { i32 }
%struct.inode = type { i32 }
%struct.ext4_iloc = type { i32 }
%struct.TYPE_2__ = type { i64 }

@EXT4_MIN_INLINE_DATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ext4_dir_entry_2* (%struct.inode*, %struct.ext4_iloc*, i32, i8**, i32*)* @ext4_get_inline_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ext4_dir_entry_2* @ext4_get_inline_entry(%struct.inode* %0, %struct.ext4_iloc* %1, i32 %2, i8** %3, i32* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext4_iloc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.ext4_iloc* %1, %struct.ext4_iloc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = call i32 @ext4_get_inline_size(%struct.inode* %13)
  %15 = icmp ugt i32 %12, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @EXT4_MIN_INLINE_DATA_SIZE, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %5
  %22 = load %struct.ext4_iloc*, %struct.ext4_iloc** %7, align 8
  %23 = call %struct.TYPE_2__* @ext4_raw_inode(%struct.ext4_iloc* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %11, align 8
  %27 = load i32, i32* @EXT4_MIN_INLINE_DATA_SIZE, align 4
  %28 = load i32*, i32** %10, align 8
  store i32 %27, i32* %28, align 4
  br label %41

29:                                               ; preds = %5
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = load %struct.ext4_iloc*, %struct.ext4_iloc** %7, align 8
  %32 = call i8* @ext4_get_inline_xattr_pos(%struct.inode* %30, %struct.ext4_iloc* %31)
  store i8* %32, i8** %11, align 8
  %33 = load i32, i32* @EXT4_MIN_INLINE_DATA_SIZE, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sub i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = call i32 @ext4_get_inline_size(%struct.inode* %36)
  %38 = load i32, i32* @EXT4_MIN_INLINE_DATA_SIZE, align 4
  %39 = sub i32 %37, %38
  %40 = load i32*, i32** %10, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %29, %21
  %42 = load i8**, i8*** %9, align 8
  %43 = icmp ne i8** %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i8*, i8** %11, align 8
  %46 = load i8**, i8*** %9, align 8
  store i8* %45, i8** %46, align 8
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr i8, i8* %48, i64 %50
  %52 = bitcast i8* %51 to %struct.ext4_dir_entry_2*
  ret %struct.ext4_dir_entry_2* %52
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ext4_get_inline_size(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @ext4_raw_inode(%struct.ext4_iloc*) #1

declare dso_local i8* @ext4_get_inline_xattr_pos(%struct.inode*, %struct.ext4_iloc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
