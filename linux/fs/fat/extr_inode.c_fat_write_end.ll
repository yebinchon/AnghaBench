; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_write_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ATTR_ARCH = common dso_local global i32 0, align 4
@S_CTIME = common dso_local global i32 0, align 4
@S_MTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)* @fat_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_write_end(%struct.file* %0, %struct.address_space* %1, i64 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %17 = load %struct.address_space*, %struct.address_space** %9, align 8
  %18 = getelementptr inbounds %struct.address_space, %struct.address_space* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %15, align 8
  %20 = load %struct.file*, %struct.file** %8, align 8
  %21 = load %struct.address_space*, %struct.address_space** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.page*, %struct.page** %13, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = call i32 @generic_write_end(%struct.file* %20, %struct.address_space* %21, i64 %22, i32 %23, i32 %24, %struct.page* %25, i8* %26)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %7
  %32 = load %struct.address_space*, %struct.address_space** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = call i32 @fat_write_failed(%struct.address_space* %32, i64 %36)
  br label %38

38:                                               ; preds = %31, %7
  %39 = load i32, i32* %16, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %63, label %41

41:                                               ; preds = %38
  %42 = load %struct.inode*, %struct.inode** %15, align 8
  %43 = call %struct.TYPE_2__* @MSDOS_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ATTR_ARCH, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %41
  %50 = load %struct.inode*, %struct.inode** %15, align 8
  %51 = load i32, i32* @S_CTIME, align 4
  %52 = load i32, i32* @S_MTIME, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @fat_truncate_time(%struct.inode* %50, i32* null, i32 %53)
  %55 = load i32, i32* @ATTR_ARCH, align 4
  %56 = load %struct.inode*, %struct.inode** %15, align 8
  %57 = call %struct.TYPE_2__* @MSDOS_I(%struct.inode* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 4
  %61 = load %struct.inode*, %struct.inode** %15, align 8
  %62 = call i32 @mark_inode_dirty(%struct.inode* %61)
  br label %63

63:                                               ; preds = %49, %41, %38
  %64 = load i32, i32* %16, align 4
  ret i32 %64
}

declare dso_local i32 @generic_write_end(%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*) #1

declare dso_local i32 @fat_write_failed(%struct.address_space*, i64) #1

declare dso_local %struct.TYPE_2__* @MSDOS_I(%struct.inode*) #1

declare dso_local i32 @fat_truncate_time(%struct.inode*, i32*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
