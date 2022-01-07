; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_attrib.c_ntfs_attr_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_attrib.c_ntfs_attr_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Entering.\00", align 1
@AT_ATTRIBUTE_LIST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntfs_attr_lookup(i64 %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6, %struct.TYPE_5__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i32*, align 8
  store i64 %0, i64* %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %17, align 8
  %19 = call i32 @ntfs_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @IS_ERR(i32 %22)
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %18, align 8
  br label %37

33:                                               ; preds = %8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %18, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i32*, i32** %18, align 8
  %39 = icmp ne i32* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load i32*, i32** %18, align 8
  %44 = call i32 @NInoAttrList(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @AT_ATTRIBUTE_LIST, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46, %37
  %51 = load i64, i64* %10, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* %16, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %58 = call i32 @ntfs_attr_find(i64 %51, i32* %52, i32 %53, i32 %54, i32* %55, i32 %56, %struct.TYPE_5__* %57)
  store i32 %58, i32* %9, align 4
  br label %69

59:                                               ; preds = %46
  %60 = load i64, i64* %10, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32*, i32** %15, align 8
  %66 = load i32, i32* %16, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %68 = call i32 @ntfs_external_attr_find(i64 %60, i32* %61, i32 %62, i32 %63, i32 %64, i32* %65, i32 %66, %struct.TYPE_5__* %67)
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %59, %50
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local i32 @ntfs_debug(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @NInoAttrList(i32*) #1

declare dso_local i32 @ntfs_attr_find(i64, i32*, i32, i32, i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ntfs_external_attr_find(i64, i32*, i32, i32, i32, i32*, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
