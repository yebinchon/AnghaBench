; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_id.c_squashfs_read_id_index_table.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_id.c_squashfs_read_id_index_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"In read_id_index_table, length %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @squashfs_read_id_index_table(%struct.super_block* %0, i64 %1, i64 %2, i16 zeroext %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i16 %3, i16* %9, align 2
  %12 = load i16, i16* %9, align 2
  %13 = call i32 @SQUASHFS_ID_BLOCK_BYTES(i16 zeroext %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i16, i16* %9, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = call i32* @ERR_PTR(i32 %21)
  store i32* %22, i32** %5, align 8
  br label %57

23:                                               ; preds = %4
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = load i64, i64* %8, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call i32* @ERR_PTR(i32 %32)
  store i32* %33, i32** %5, align 8
  br label %57

34:                                               ; preds = %23
  %35 = load %struct.super_block*, %struct.super_block** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32* @squashfs_read_table(%struct.super_block* %35, i64 %36, i32 %37)
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @IS_ERR(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %34
  %43 = load i32*, i32** %11, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @le64_to_cpu(i32 %45)
  %47 = load i64, i64* %7, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @kfree(i32* %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  %54 = call i32* @ERR_PTR(i32 %53)
  store i32* %54, i32** %5, align 8
  br label %57

55:                                               ; preds = %42, %34
  %56 = load i32*, i32** %11, align 8
  store i32* %56, i32** %5, align 8
  br label %57

57:                                               ; preds = %55, %49, %30, %19
  %58 = load i32*, i32** %5, align 8
  ret i32* %58
}

declare dso_local i32 @SQUASHFS_ID_BLOCK_BYTES(i16 zeroext) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32* @ERR_PTR(i32) #1

declare dso_local i32* @squashfs_read_table(%struct.super_block*, i64, i32) #1

declare dso_local i32 @IS_ERR(i32*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
