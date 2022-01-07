; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_replace_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_replace_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"vs-12305: source or destination buffer is 0 (src=%p, dest=%p)\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"vs-12310: invalid level (%z) for destination buffer. dest must be leaf\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"vs-12315: src(%d) or dest(%d) key number < 0\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"vs-12320: src(%d(%d)) or dest(%d(%d)) key number is too big\00", align 1
@KEY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @replace_key(%struct.tree_balance* %0, %struct.buffer_head* %1, i32 %2, %struct.buffer_head* %3, i32 %4) #0 {
  %6 = alloca %struct.tree_balance*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %12 = icmp eq %struct.buffer_head* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %15 = icmp eq %struct.buffer_head* %14, null
  br label %16

16:                                               ; preds = %13, %5
  %17 = phi i1 [ true, %5 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %20 = ptrtoint %struct.buffer_head* %19 to i32
  %21 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %22 = call i32 (i32, i8*, i32, ...) @RFALSE(i32 %18, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %20, %struct.buffer_head* %21)
  %23 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %24 = call i32 @B_IS_KEYS_LEVEL(%struct.buffer_head* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %29 = ptrtoint %struct.buffer_head* %28 to i32
  %30 = call i32 (i32, i8*, i32, ...) @RFALSE(i32 %27, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %16
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br label %36

36:                                               ; preds = %33, %16
  %37 = phi i1 [ true, %16 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (i32, i8*, i32, ...) @RFALSE(i32 %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %44 = call i32 @B_NR_ITEMS(%struct.buffer_head* %43)
  %45 = icmp sge i32 %42, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %49 = call i32 @B_NR_ITEMS(%struct.buffer_head* %48)
  %50 = icmp sge i32 %47, %49
  br label %51

51:                                               ; preds = %46, %36
  %52 = phi i1 [ true, %36 ], [ %50, %46 ]
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %56 = call i32 @B_NR_ITEMS(%struct.buffer_head* %55)
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %59 = call i32 @B_NR_ITEMS(%struct.buffer_head* %58)
  %60 = call i32 (i32, i8*, i32, ...) @RFALSE(i32 %53, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %54, i32 %56, i32 %57, i32 %59)
  %61 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %62 = call i64 @B_IS_ITEMS_LEVEL(%struct.buffer_head* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %51
  %65 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @internal_key(%struct.buffer_head* %65, i32 %66)
  %68 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @item_head(%struct.buffer_head* %68, i32 %69)
  %71 = load i32, i32* @KEY_SIZE, align 4
  %72 = call i32 @memcpy(i32 %67, i32 %70, i32 %71)
  br label %82

73:                                               ; preds = %51
  %74 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @internal_key(%struct.buffer_head* %74, i32 %75)
  %77 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @internal_key(%struct.buffer_head* %77, i32 %78)
  %80 = load i32, i32* @KEY_SIZE, align 4
  %81 = call i32 @memcpy(i32 %76, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %73, %64
  %83 = load %struct.tree_balance*, %struct.tree_balance** %6, align 8
  %84 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %85 = call i32 @do_balance_mark_internal_dirty(%struct.tree_balance* %83, %struct.buffer_head* %84, i32 0)
  ret void
}

declare dso_local i32 @RFALSE(i32, i8*, i32, ...) #1

declare dso_local i32 @B_IS_KEYS_LEVEL(%struct.buffer_head*) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i64 @B_IS_ITEMS_LEVEL(%struct.buffer_head*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @internal_key(%struct.buffer_head*, i32) #1

declare dso_local i32 @item_head(%struct.buffer_head*, i32) #1

declare dso_local i32 @do_balance_mark_internal_dirty(%struct.tree_balance*, %struct.buffer_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
