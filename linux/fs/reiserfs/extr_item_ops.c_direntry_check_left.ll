; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_item_ops.c_direntry_check_left.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_item_ops.c_direntry_check_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtual_item = type { %struct.direntry_uarea* }
%struct.direntry_uarea = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"item_ops-1\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"free space %d, entry_count %d\00", align 1
@DIRENTRY_VI_FIRST_DIRENTRY_ITEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtual_item*, i32, i32, i32)* @direntry_check_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @direntry_check_left(%struct.virtual_item* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.virtual_item*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.direntry_uarea*, align 8
  store %struct.virtual_item* %0, %struct.virtual_item** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.virtual_item*, %struct.virtual_item** %5, align 8
  %13 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %12, i32 0, i32 0
  %14 = load %struct.direntry_uarea*, %struct.direntry_uarea** %13, align 8
  store %struct.direntry_uarea* %14, %struct.direntry_uarea** %11, align 8
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %47, %4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.direntry_uarea*, %struct.direntry_uarea** %11, align 8
  %19 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 %20, %21
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %16
  %25 = load %struct.direntry_uarea*, %struct.direntry_uarea** %11, align 8
  %26 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %50

35:                                               ; preds = %24
  %36 = load %struct.direntry_uarea*, %struct.direntry_uarea** %11, align 8
  %37 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %35
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %16

50:                                               ; preds = %34, %16
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.direntry_uarea*, %struct.direntry_uarea** %11, align 8
  %53 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.direntry_uarea*, %struct.direntry_uarea** %11, align 8
  %59 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @reiserfs_panic(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %56, %50
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load %struct.direntry_uarea*, %struct.direntry_uarea** %11, align 8
  %67 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @DIRENTRY_VI_FIRST_DIRENTRY_ITEM, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 2
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %75, %72, %65, %62
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %81

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80, %79
  %82 = phi i32 [ %77, %79 ], [ -1, %80 ]
  ret i32 %82
}

declare dso_local i32 @reiserfs_panic(i32*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
