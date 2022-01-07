; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_release_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_release_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.file = type { i32 }

@FMODE_WRITE = common dso_local global i32 0, align 4
@FI_DROP_CACHE = common dso_local global i32 0, align 4
@FI_VOLATILE_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @f2fs_release_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_release_file(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %6 = load %struct.file*, %struct.file** %5, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @FMODE_WRITE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = call i32 @atomic_read(i32* %14)
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %46

18:                                               ; preds = %12
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call i64 @f2fs_is_atomic_file(%struct.inode* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call i32 @f2fs_drop_inmem_pages(%struct.inode* %23)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = call i64 @f2fs_is_volatile_file(%struct.inode* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = load i32, i32* @FI_DROP_CACHE, align 4
  %32 = call i32 @set_inode_flag(%struct.inode* %30, i32 %31)
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @filemap_fdatawrite(i32 %35)
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = load i32, i32* @FI_DROP_CACHE, align 4
  %39 = call i32 @clear_inode_flag(%struct.inode* %37, i32 %38)
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = load i32, i32* @FI_VOLATILE_FILE, align 4
  %42 = call i32 @clear_inode_flag(%struct.inode* %40, i32 %41)
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = call i32 @stat_dec_volatile_write(%struct.inode* %43)
  br label %45

45:                                               ; preds = %29, %25
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %17
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @f2fs_is_atomic_file(%struct.inode*) #1

declare dso_local i32 @f2fs_drop_inmem_pages(%struct.inode*) #1

declare dso_local i64 @f2fs_is_volatile_file(%struct.inode*) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @filemap_fdatawrite(i32) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @stat_dec_volatile_write(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
