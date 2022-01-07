; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_dirent_check_reclen.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_dirent_check_reclen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.gfs2_dirent = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.gfs2_dirent*, i8*)* @dirent_check_reclen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dirent_check_reclen(%struct.gfs2_inode* %0, %struct.gfs2_dirent* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.gfs2_dirent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store %struct.gfs2_dirent* %1, %struct.gfs2_dirent** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %11 = bitcast %struct.gfs2_dirent* %10 to i8*
  store i8* %11, i8** %8, align 8
  %12 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %13 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @be16_to_cpu(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 4
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %41

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr i8, i8* %25, i64 %26
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %46

33:                                               ; preds = %23
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp eq i8* %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %46

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %22
  %42 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %43 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %42)
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %37, %31
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
