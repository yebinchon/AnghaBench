; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_do_make_empty_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_do_make_empty_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.f2fs_dentry_ptr = type { i32 }
%struct.qstr = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_do_make_empty_dir(%struct.inode* %0, %struct.inode* %1, %struct.f2fs_dentry_ptr* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.f2fs_dentry_ptr*, align 8
  %7 = alloca %struct.qstr, align 4
  %8 = alloca %struct.qstr, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.f2fs_dentry_ptr* %2, %struct.f2fs_dentry_ptr** %6, align 8
  %9 = call i32 @QSTR_INIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %10 = getelementptr inbounds %struct.qstr, %struct.qstr* %7, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = call i32 @QSTR_INIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %12 = getelementptr inbounds %struct.qstr, %struct.qstr* %8, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_ptr** %6, align 8
  %20 = call i32 @f2fs_update_dentry(i32 %15, i32 %18, %struct.f2fs_dentry_ptr* %19, %struct.qstr* %7, i32 0, i32 0)
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_ptr** %6, align 8
  %28 = call i32 @f2fs_update_dentry(i32 %23, i32 %26, %struct.f2fs_dentry_ptr* %27, %struct.qstr* %8, i32 0, i32 1)
  ret void
}

declare dso_local i32 @QSTR_INIT(i8*, i32) #1

declare dso_local i32 @f2fs_update_dentry(i32, i32, %struct.f2fs_dentry_ptr*, %struct.qstr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
