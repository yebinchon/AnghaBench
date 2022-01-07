; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_gfs2_xattr_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_gfs2_xattr_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.gfs2_ea_location = type { i32, i32, i32 }

@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, i32, i8*)* @gfs2_xattr_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_xattr_remove(%struct.gfs2_inode* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gfs2_ea_location, align 4
  %9 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %11 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENODATA, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %55

17:                                               ; preds = %3
  %18 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @gfs2_ea_find(%struct.gfs2_inode* %18, i32 %19, i8* %20, %struct.gfs2_ea_location* %8)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %55

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %8, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @ENODATA, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %55

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %8, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @GFS2_EA_IS_STUFFED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %40 = call i32 @ea_remove_stuffed(%struct.gfs2_inode* %39, %struct.gfs2_ea_location* %8)
  store i32 %40, i32* %9, align 4
  br label %50

41:                                               ; preds = %33
  %42 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %43 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %8, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %8, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ea_remove_unstuffed(%struct.gfs2_inode* %42, i32 %44, i32 %46, i32 %48, i32 0)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %41, %38
  %51 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @brelse(i32 %52)
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %30, %24, %14
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @gfs2_ea_find(%struct.gfs2_inode*, i32, i8*, %struct.gfs2_ea_location*) #1

declare dso_local i64 @GFS2_EA_IS_STUFFED(i32) #1

declare dso_local i32 @ea_remove_stuffed(%struct.gfs2_inode*, %struct.gfs2_ea_location*) #1

declare dso_local i32 @ea_remove_unstuffed(%struct.gfs2_inode*, i32, i32, i32, i32) #1

declare dso_local i32 @brelse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
