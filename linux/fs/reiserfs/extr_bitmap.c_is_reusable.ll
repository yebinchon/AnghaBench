; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c_is_reusable.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c_is_reusable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"vs-4010\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"block number is out of range %lu (%u)\00", align 1
@REISERFS_OLD_FORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"vs-4019\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"bitmap block %lu(%u) can't be freed or reused\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"vs-4020\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"vs-4030\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"bitmap for requested block is out of range: block=%lu, bitmap_nr=%u\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"vs-4050\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"this is root block (%u), it must be busy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_reusable(%struct.super_block* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call i32 @reiserfs_bmap_count(%struct.super_block* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.super_block*, %struct.super_block** %5, align 8
  %19 = call i64 @SB_BLOCK_COUNT(%struct.super_block* %18)
  %20 = icmp sge i64 %17, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %16, %3
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = call i64 @SB_BLOCK_COUNT(%struct.super_block* %24)
  %26 = call i32 (%struct.super_block*, i8*, i8*, i64, ...) @reiserfs_error(%struct.super_block* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %23, i64 %25)
  store i32 0, i32* %4, align 4
  br label %94

27:                                               ; preds = %16
  %28 = load %struct.super_block*, %struct.super_block** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @get_bit_address(%struct.super_block* %28, i64 %29, i32* %8, i32* %9)
  %31 = load i32, i32* @REISERFS_OLD_FORMAT, align 4
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  %33 = call %struct.TYPE_4__* @REISERFS_SB(%struct.super_block* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = call i32 @test_bit(i32 %31, i32* %34)
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %27
  %39 = load %struct.super_block*, %struct.super_block** %5, align 8
  %40 = call %struct.TYPE_4__* @REISERFS_SB(%struct.super_block* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %38
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = icmp sle i64 %50, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.super_block*, %struct.super_block** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 (%struct.super_block*, i8*, i8*, i64, ...) @reiserfs_error(%struct.super_block* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %58, i32 %59)
  store i32 0, i32* %4, align 4
  br label %94

61:                                               ; preds = %49, %38
  br label %71

62:                                               ; preds = %27
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.super_block*, %struct.super_block** %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 (%struct.super_block*, i8*, i8*, i64, ...) @reiserfs_error(%struct.super_block* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %67, i32 %68)
  store i32 0, i32* %4, align 4
  br label %94

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %61
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp uge i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load %struct.super_block*, %struct.super_block** %5, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (%struct.super_block*, i8*, i8*, i64, ...) @reiserfs_error(%struct.super_block* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0), i64 %77, i32 %78)
  store i32 0, i32* %4, align 4
  br label %94

80:                                               ; preds = %71
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.super_block*, %struct.super_block** %5, align 8
  %86 = call i64 @SB_ROOT_BLOCK(%struct.super_block* %85)
  %87 = icmp eq i64 %84, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.super_block*, %struct.super_block** %5, align 8
  %90 = load %struct.super_block*, %struct.super_block** %5, align 8
  %91 = call i64 @SB_ROOT_BLOCK(%struct.super_block* %90)
  %92 = call i32 (%struct.super_block*, i8*, i8*, i64, ...) @reiserfs_error(%struct.super_block* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i64 %91)
  store i32 0, i32* %4, align 4
  br label %94

93:                                               ; preds = %83, %80
  store i32 1, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %88, %75, %65, %56, %21
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @reiserfs_bmap_count(%struct.super_block*) #1

declare dso_local i64 @SB_BLOCK_COUNT(%struct.super_block*) #1

declare dso_local i32 @reiserfs_error(%struct.super_block*, i8*, i8*, i64, ...) #1

declare dso_local i32 @get_bit_address(%struct.super_block*, i64, i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_4__* @REISERFS_SB(%struct.super_block*) #1

declare dso_local i64 @SB_ROOT_BLOCK(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
