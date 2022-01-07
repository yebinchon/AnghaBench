; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_make_dentry_ptr_inline.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_make_dentry_ptr_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_dentry_ptr = type { i32, i32, i8*, i8*, i8*, %struct.inode* }

@SIZE_OF_DIR_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.f2fs_dentry_ptr*, i8*)* @make_dentry_ptr_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_dentry_ptr_inline(%struct.inode* %0, %struct.f2fs_dentry_ptr* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.f2fs_dentry_ptr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.f2fs_dentry_ptr* %1, %struct.f2fs_dentry_ptr** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @NR_INLINE_DENTRY(%struct.inode* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call i32 @INLINE_DENTRY_BITMAP_SIZE(%struct.inode* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call i32 @INLINE_RESERVED_SIZE(%struct.inode* %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = load %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_ptr** %5, align 8
  %18 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %17, i32 0, i32 5
  store %struct.inode* %16, %struct.inode** %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_ptr** %5, align 8
  %21 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_ptr** %5, align 8
  %24 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_ptr** %5, align 8
  %27 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr i8, i8* %28, i64 %30
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr i8, i8* %31, i64 %33
  %35 = load %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_ptr** %5, align 8
  %36 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr i8, i8* %37, i64 %39
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr i8, i8* %40, i64 %42
  %44 = load i32, i32* @SIZE_OF_DIR_ENTRY, align 4
  %45 = load i32, i32* %7, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr i8, i8* %43, i64 %47
  %49 = load %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_ptr** %5, align 8
  %50 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  ret void
}

declare dso_local i32 @NR_INLINE_DENTRY(%struct.inode*) #1

declare dso_local i32 @INLINE_DENTRY_BITMAP_SIZE(%struct.inode*) #1

declare dso_local i32 @INLINE_RESERVED_SIZE(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
