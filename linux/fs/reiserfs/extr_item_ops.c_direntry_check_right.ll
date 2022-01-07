; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_item_ops.c_direntry_check_right.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_item_ops.c_direntry_check_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtual_item = type { %struct.direntry_uarea* }
%struct.direntry_uarea = type { i32, i32*, i32 }

@DIRENTRY_VI_FIRST_DIRENTRY_ITEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtual_item*, i32)* @direntry_check_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @direntry_check_right(%struct.virtual_item* %0, i32 %1) #0 {
  %3 = alloca %struct.virtual_item*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.direntry_uarea*, align 8
  store %struct.virtual_item* %0, %struct.virtual_item** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.virtual_item*, %struct.virtual_item** %3, align 8
  %9 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %8, i32 0, i32 0
  %10 = load %struct.direntry_uarea*, %struct.direntry_uarea** %9, align 8
  store %struct.direntry_uarea* %10, %struct.direntry_uarea** %7, align 8
  %11 = load %struct.direntry_uarea*, %struct.direntry_uarea** %7, align 8
  %12 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %41, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  %19 = load %struct.direntry_uarea*, %struct.direntry_uarea** %7, align 8
  %20 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %44

29:                                               ; preds = %18
  %30 = load %struct.direntry_uarea*, %struct.direntry_uarea** %7, align 8
  %31 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %5, align 4
  br label %15

44:                                               ; preds = %28, %15
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.direntry_uarea*, %struct.direntry_uarea** %7, align 8
  %47 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %45, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.direntry_uarea*, %struct.direntry_uarea** %7, align 8
  %53 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @DIRENTRY_VI_FIRST_DIRENTRY_ITEM, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %44
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.direntry_uarea*, %struct.direntry_uarea** %7, align 8
  %61 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 2
  %64 = icmp sgt i32 %59, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.direntry_uarea*, %struct.direntry_uarea** %7, align 8
  %67 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 2
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %65, %58, %44
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %75

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %73
  %76 = phi i32 [ %71, %73 ], [ -1, %74 ]
  ret i32 %76
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
