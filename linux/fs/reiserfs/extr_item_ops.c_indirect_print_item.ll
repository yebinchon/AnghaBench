; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_item_ops.c_indirect_print_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_item_ops.c_indirect_print_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item_head = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@UNFM_P_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"reiserfs-16102\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid item len\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%d pointers\0A[ \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.item_head*, i8*)* @indirect_print_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @indirect_print_item(%struct.item_head* %0, i8* %1) #0 {
  %3 = alloca %struct.item_head*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.item_head* %0, %struct.item_head** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @INT_MAX, align 4
  store i32 %9, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %6, align 8
  %12 = load %struct.item_head*, %struct.item_head** %3, align 8
  %13 = call i32 @ih_item_len(%struct.item_head* %12)
  %14 = load i32, i32* @UNFM_P_SIZE, align 4
  %15 = srem i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @reiserfs_warning(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %2
  %20 = load %struct.item_head*, %struct.item_head** %3, align 8
  %21 = call i32 @I_UNFM_NUM(%struct.item_head* %20)
  %22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %44, %19
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.item_head*, %struct.item_head** %3, align 8
  %26 = call i32 @I_UNFM_NUM(%struct.item_head* %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @get_block_num(i32* %30, i32 %31)
  %33 = call i64 @sequence_finished(i32 %29, i32* %8, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @print_sequence(i32 %36, i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @get_block_num(i32* %39, i32 %40)
  %42 = call i32 @start_new_sequence(i32* %7, i32* %8, i32 %41)
  br label %43

43:                                               ; preds = %35, %28
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %23

47:                                               ; preds = %23
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @print_sequence(i32 %48, i32 %49)
  %51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

declare dso_local i32 @reiserfs_warning(i32*, i8*, i8*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @I_UNFM_NUM(%struct.item_head*) #1

declare dso_local i64 @sequence_finished(i32, i32*, i32) #1

declare dso_local i32 @get_block_num(i32*, i32) #1

declare dso_local i32 @print_sequence(i32, i32) #1

declare dso_local i32 @start_new_sequence(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
