; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_move_extent.c_get_ext_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_move_extent.c_get_ext_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i32* }

@EXT4_EX_NOCACHE = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.ext4_ext_path**)* @get_ext_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ext_path(%struct.inode* %0, i32 %1, %struct.ext4_ext_path** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_ext_path**, align 8
  %8 = alloca %struct.ext4_ext_path*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ext4_ext_path** %2, %struct.ext4_ext_path*** %7, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %7, align 8
  %12 = load i32, i32* @EXT4_EX_NOCACHE, align 4
  %13 = call %struct.ext4_ext_path* @ext4_find_extent(%struct.inode* %9, i32 %10, %struct.ext4_ext_path** %11, i32 %12)
  store %struct.ext4_ext_path* %13, %struct.ext4_ext_path** %8, align 8
  %14 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %15 = call i64 @IS_ERR(%struct.ext4_ext_path* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %19 = call i32 @PTR_ERR(%struct.ext4_ext_path* %18)
  store i32 %19, i32* %4, align 4
  br label %39

20:                                               ; preds = %3
  %21 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = call i64 @ext_depth(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %21, i64 %23
  %25 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %30 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %29)
  %31 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %32 = call i32 @kfree(%struct.ext4_ext_path* %31)
  %33 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %7, align 8
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %33, align 8
  %34 = load i32, i32* @ENODATA, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %39

36:                                               ; preds = %20
  %37 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %38 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %7, align 8
  store %struct.ext4_ext_path* %37, %struct.ext4_ext_path** %38, align 8
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %28, %17
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.ext4_ext_path* @ext4_find_extent(%struct.inode*, i32, %struct.ext4_ext_path**, i32) #1

declare dso_local i64 @IS_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @PTR_ERR(%struct.ext4_ext_path*) #1

declare dso_local i64 @ext_depth(%struct.inode*) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
