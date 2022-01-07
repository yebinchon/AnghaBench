; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_part_tbl.c_hfsplus_part_find.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_part_tbl.c_hfsplus_part_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HFS_PMAP_BLK = common dso_local global i64 0, align 8
@REQ_OP_READ = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_part_find(%struct.super_block* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = call i32 @hfsplus_min_io_size(%struct.super_block* %11)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kmalloc(i32 %12, i32 %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %58

20:                                               ; preds = %3
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HFS_PMAP_BLK, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* @REQ_OP_READ, align 4
  %28 = call i32 @hfsplus_submit_bio(%struct.super_block* %21, i64 %25, i8* %26, i8** %9, i32 %27, i32 0)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %54

32:                                               ; preds = %20
  %33 = load i8*, i8** %9, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be16_to_cpu(i32 %35)
  switch i32 %36, label %50 [
    i32 128, label %37
    i32 129, label %43
  ]

37:                                               ; preds = %32
  %38 = load %struct.super_block*, %struct.super_block** %5, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i64*, i64** %6, align 8
  %41 = load i64*, i64** %7, align 8
  %42 = call i32 @hfs_parse_old_pmap(%struct.super_block* %38, i8* %39, i64* %40, i64* %41)
  store i32 %42, i32* %10, align 4
  br label %53

43:                                               ; preds = %32
  %44 = load %struct.super_block*, %struct.super_block** %5, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = load i64*, i64** %7, align 8
  %49 = call i32 @hfs_parse_new_pmap(%struct.super_block* %44, i8* %45, i8* %46, i64* %47, i64* %48)
  store i32 %49, i32* %10, align 4
  br label %53

50:                                               ; preds = %32
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %50, %43, %37
  br label %54

54:                                               ; preds = %53, %31
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @kfree(i8* %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %17
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @hfsplus_min_io_size(%struct.super_block*) #1

declare dso_local i32 @hfsplus_submit_bio(%struct.super_block*, i64, i8*, i8**, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @hfs_parse_old_pmap(%struct.super_block*, i8*, i64*, i64*) #1

declare dso_local i32 @hfs_parse_new_pmap(%struct.super_block*, i8*, i8*, i64*, i64*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
