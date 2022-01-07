; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_is_internal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_is_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.block_head = type { i32 }

@DISK_LEAF_NODE_LEVEL = common dso_local global i32 0, align 4
@MAX_HEIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"reiserfs-5087\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"this should be caught earlier\00", align 1
@BLKH_SIZE = common dso_local global i32 0, align 4
@DC_SIZE = common dso_local global i32 0, align 4
@KEY_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"reiserfs-5088\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"number of key seems wrong: %z\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"reiserfs-5089\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"free space seems wrong: %z\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.buffer_head*)* @is_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_internal(i8* %0, i32 %1, %struct.buffer_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.block_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.block_head*
  store %struct.block_head* %12, %struct.block_head** %8, align 8
  %13 = load %struct.block_head*, %struct.block_head** %8, align 8
  %14 = call i32 @blkh_level(%struct.block_head* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @DISK_LEAF_NODE_LEVEL, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @MAX_HEIGHT, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %3
  %23 = call i32 (i32*, i8*, i8*, ...) @reiserfs_warning(i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %62

24:                                               ; preds = %18
  %25 = load %struct.block_head*, %struct.block_head** %8, align 8
  %26 = call i32 @blkh_nr_item(%struct.block_head* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @BLKH_SIZE, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i32, i32* @DC_SIZE, align 4
  %32 = sub nsw i32 %30, %31
  %33 = load i32, i32* @KEY_SIZE, align 4
  %34 = load i32, i32* @DC_SIZE, align 4
  %35 = add nsw i32 %33, %34
  %36 = sdiv i32 %32, %35
  %37 = icmp sgt i32 %27, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %24
  %39 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %40 = call i32 (i32*, i8*, i8*, ...) @reiserfs_warning(i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), %struct.buffer_head* %39)
  store i32 0, i32* %4, align 4
  br label %62

41:                                               ; preds = %24
  %42 = load i32, i32* @BLKH_SIZE, align 4
  %43 = load i32, i32* @KEY_SIZE, align 4
  %44 = load i32, i32* %9, align 4
  %45 = mul nsw i32 %43, %44
  %46 = add nsw i32 %42, %45
  %47 = load i32, i32* @DC_SIZE, align 4
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  %50 = mul nsw i32 %47, %49
  %51 = add nsw i32 %46, %50
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.block_head*, %struct.block_head** %8, align 8
  %55 = call i32 @blkh_free_space(%struct.block_head* %54)
  %56 = sub nsw i32 %53, %55
  %57 = icmp ne i32 %52, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %41
  %59 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %60 = call i32 (i32*, i8*, i8*, ...) @reiserfs_warning(i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), %struct.buffer_head* %59)
  store i32 0, i32* %4, align 4
  br label %62

61:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %58, %38, %22
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @blkh_level(%struct.block_head*) #1

declare dso_local i32 @reiserfs_warning(i32*, i8*, i8*, ...) #1

declare dso_local i32 @blkh_nr_item(%struct.block_head*) #1

declare dso_local i32 @blkh_free_space(%struct.block_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
