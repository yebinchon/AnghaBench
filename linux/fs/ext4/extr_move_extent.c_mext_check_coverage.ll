; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_move_extent.c_mext_check_coverage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_move_extent.c_mext_check_coverage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { %struct.ext4_extent* }
%struct.ext4_extent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64, i32, i32*)* @mext_check_coverage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mext_check_coverage(%struct.inode* %0, i64 %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ext4_ext_path*, align 8
  %12 = alloca %struct.ext4_extent*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %11, align 8
  store i32 0, i32* %13, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* %14, align 8
  br label %18

18:                                               ; preds = %43, %5
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %14, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %18
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @get_ext_path(%struct.inode* %23, i64 %24, %struct.ext4_ext_path** %11)
  %26 = load i32*, i32** %10, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %51

31:                                               ; preds = %22
  %32 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = call i64 @ext_depth(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %32, i64 %34
  %36 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %35, i32 0, i32 0
  %37 = load %struct.ext4_extent*, %struct.ext4_extent** %36, align 8
  store %struct.ext4_extent* %37, %struct.ext4_extent** %12, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.ext4_extent*, %struct.ext4_extent** %12, align 8
  %40 = call i32 @ext4_ext_is_unwritten(%struct.ext4_extent* %39)
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %51

43:                                               ; preds = %31
  %44 = load %struct.ext4_extent*, %struct.ext4_extent** %12, align 8
  %45 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %44)
  %46 = load i64, i64* %7, align 8
  %47 = add nsw i64 %46, %45
  store i64 %47, i64* %7, align 8
  %48 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %49 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %48)
  br label %18

50:                                               ; preds = %18
  store i32 1, i32* %13, align 4
  br label %51

51:                                               ; preds = %50, %42, %30
  %52 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %53 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %52)
  %54 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %55 = call i32 @kfree(%struct.ext4_ext_path* %54)
  %56 = load i32, i32* %13, align 4
  ret i32 %56
}

declare dso_local i32 @get_ext_path(%struct.inode*, i64, %struct.ext4_ext_path**) #1

declare dso_local i64 @ext_depth(%struct.inode*) #1

declare dso_local i32 @ext4_ext_is_unwritten(%struct.ext4_extent*) #1

declare dso_local i64 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
