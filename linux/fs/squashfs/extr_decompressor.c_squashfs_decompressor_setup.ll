; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_decompressor.c_squashfs_decompressor_setup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_decompressor.c_squashfs_decompressor_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.squashfs_sb_info* }
%struct.squashfs_sb_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @squashfs_decompressor_setup(%struct.super_block* %0, i16 zeroext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.squashfs_sb_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i16 %1, i16* %5, align 2
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = getelementptr inbounds %struct.super_block, %struct.super_block* %9, i32 0, i32 0
  %11 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %10, align 8
  store %struct.squashfs_sb_info* %11, %struct.squashfs_sb_info** %6, align 8
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = load i16, i16* %5, align 2
  %14 = call i8* @get_comp_opts(%struct.super_block* %12, i16 zeroext %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @IS_ERR(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i8*, i8** %8, align 8
  store i8* %19, i8** %3, align 8
  br label %32

20:                                               ; preds = %2
  %21 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %6, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i8* @squashfs_decompressor_create(%struct.squashfs_sb_info* %21, i8* %22)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @IS_ERR(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @kfree(i8* %28)
  br label %30

30:                                               ; preds = %27, %20
  %31 = load i8*, i8** %7, align 8
  store i8* %31, i8** %3, align 8
  br label %32

32:                                               ; preds = %30, %18
  %33 = load i8*, i8** %3, align 8
  ret i8* %33
}

declare dso_local i8* @get_comp_opts(%struct.super_block*, i16 zeroext) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i8* @squashfs_decompressor_create(%struct.squashfs_sb_info*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
