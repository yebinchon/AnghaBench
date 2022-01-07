; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c_gfs2_open_common.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c_gfs2_open_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.gfs2_file* }
%struct.gfs2_file = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_open_common(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.gfs2_file*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @S_ISREG(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = call i32 @generic_file_open(%struct.inode* %14, %struct.file* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %46

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i32, i32* @GFP_NOFS, align 4
  %24 = call %struct.gfs2_file* @kzalloc(i32 4, i32 %23)
  store %struct.gfs2_file* %24, %struct.gfs2_file** %6, align 8
  %25 = load %struct.gfs2_file*, %struct.gfs2_file** %6, align 8
  %26 = icmp ne %struct.gfs2_file* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %46

30:                                               ; preds = %22
  %31 = load %struct.gfs2_file*, %struct.gfs2_file** %6, align 8
  %32 = getelementptr inbounds %struct.gfs2_file, %struct.gfs2_file* %31, i32 0, i32 0
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = call i32 @GFS2_SB(%struct.inode* %34)
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  %38 = load %struct.gfs2_file*, %struct.gfs2_file** %37, align 8
  %39 = icmp ne %struct.gfs2_file* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @gfs2_assert_warn(i32 %35, i32 %41)
  %43 = load %struct.gfs2_file*, %struct.gfs2_file** %6, align 8
  %44 = load %struct.file*, %struct.file** %5, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0
  store %struct.gfs2_file* %43, %struct.gfs2_file** %45, align 8
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %30, %27, %19
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @generic_file_open(%struct.inode*, %struct.file*) #1

declare dso_local %struct.gfs2_file* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @gfs2_assert_warn(i32, i32) #1

declare dso_local i32 @GFS2_SB(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
