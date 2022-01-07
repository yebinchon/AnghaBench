; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_prints.c_check_internal_block_head.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_prints.c_check_internal_block_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }

@DISK_LEAF_NODE_LEVEL = common dso_local global i64 0, align 8
@MAX_HEIGHT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"vs-6025\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid level %z\00", align 1
@BLKH_SIZE = common dso_local global i32 0, align 4
@IH_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"vs-6030\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"invalid item number %z\00", align 1
@KEY_SIZE = common dso_local global i32 0, align 4
@DC_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"vs-6040\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"invalid free space %z\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*)* @check_internal_block_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_internal_block_head(%struct.buffer_head* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %2, align 8
  %3 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %4 = call i64 @B_LEVEL(%struct.buffer_head* %3)
  %5 = load i64, i64* @DISK_LEAF_NODE_LEVEL, align 8
  %6 = icmp sgt i64 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %9 = call i64 @B_LEVEL(%struct.buffer_head* %8)
  %10 = load i64, i64* @MAX_HEIGHT, align 8
  %11 = icmp sle i64 %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %14 = call i32 @reiserfs_panic(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.buffer_head* %13)
  br label %15

15:                                               ; preds = %12, %7
  %16 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %17 = call i32 @B_NR_ITEMS(%struct.buffer_head* %16)
  %18 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @BLKH_SIZE, align 4
  %22 = sub nsw i32 %20, %21
  %23 = load i32, i32* @IH_SIZE, align 4
  %24 = sdiv i32 %22, %23
  %25 = icmp sgt i32 %17, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %28 = call i32 @reiserfs_panic(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), %struct.buffer_head* %27)
  br label %29

29:                                               ; preds = %26, %15
  %30 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %31 = call i32 @B_FREE_SPACE(%struct.buffer_head* %30)
  %32 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BLKH_SIZE, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i32, i32* @KEY_SIZE, align 4
  %38 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %39 = call i32 @B_NR_ITEMS(%struct.buffer_head* %38)
  %40 = mul nsw i32 %37, %39
  %41 = sub nsw i32 %36, %40
  %42 = load i32, i32* @DC_SIZE, align 4
  %43 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %44 = call i32 @B_NR_ITEMS(%struct.buffer_head* %43)
  %45 = add nsw i32 %44, 1
  %46 = mul nsw i32 %42, %45
  %47 = sub nsw i32 %41, %46
  %48 = icmp ne i32 %31, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %29
  %50 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %51 = call i32 @reiserfs_panic(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), %struct.buffer_head* %50)
  br label %52

52:                                               ; preds = %49, %29
  ret void
}

declare dso_local i64 @B_LEVEL(%struct.buffer_head*) #1

declare dso_local i32 @reiserfs_panic(i32*, i8*, i8*, %struct.buffer_head*) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i32 @B_FREE_SPACE(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
