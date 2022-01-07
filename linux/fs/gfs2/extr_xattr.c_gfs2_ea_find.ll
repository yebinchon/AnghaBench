; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_gfs2_ea_find.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_gfs2_ea_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.gfs2_ea_location = type { i32 }
%struct.ea_find = type { i32, i8*, %struct.gfs2_ea_location*, i32 }

@ea_find_i = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, i32, i8*, %struct.gfs2_ea_location*)* @gfs2_ea_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_ea_find(%struct.gfs2_inode* %0, i32 %1, i8* %2, %struct.gfs2_ea_location* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.gfs2_ea_location*, align 8
  %10 = alloca %struct.ea_find, align 8
  %11 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.gfs2_ea_location* %3, %struct.gfs2_ea_location** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = getelementptr inbounds %struct.ea_find, %struct.ea_find* %10, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds %struct.ea_find, %struct.ea_find* %10, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = getelementptr inbounds %struct.ea_find, %struct.ea_find* %10, i32 0, i32 3
  store i32 %17, i32* %18, align 8
  %19 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %9, align 8
  %20 = getelementptr inbounds %struct.ea_find, %struct.ea_find* %10, i32 0, i32 2
  store %struct.gfs2_ea_location* %19, %struct.gfs2_ea_location** %20, align 8
  %21 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %9, align 8
  %22 = call i32 @memset(%struct.gfs2_ea_location* %21, i32 0, i32 4)
  %23 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %24 = load i32, i32* @ea_find_i, align 4
  %25 = call i32 @ea_foreach(%struct.gfs2_inode* %23, i32 %24, %struct.ea_find* %10)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(%struct.gfs2_ea_location*, i32, i32) #1

declare dso_local i32 @ea_foreach(%struct.gfs2_inode*, i32, %struct.ea_find*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
