; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_attr_list.c_xfs_attr_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_attr_list.c_xfs_attr_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i8*, i32, i32, i32, %struct.TYPE_7__*, i32* }
%struct.attrlist = type { i32*, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ATTR_INCOMPLETE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ATTR_KERNOVAL = common dso_local global i32 0, align 4
@xfs_attr_put_listent = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_list(i32* %0, i8* %1, i32 %2, i32 %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_6__, align 8
  %13 = alloca %struct.attrlist*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %11, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %5
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %112

27:                                               ; preds = %19
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %37, %32
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %112

50:                                               ; preds = %42, %27
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @ATTR_INCOMPLETE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %112

58:                                               ; preds = %50
  %59 = load i8*, i8** %8, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = and i64 %60, 3
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EFAULT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %112

66:                                               ; preds = %58
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @ATTR_KERNOVAL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %71, %66
  %73 = call i32 @memset(%struct.TYPE_6__* %12, i32 0, i32 48)
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 7
  store i32* %74, i32** %75, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 6
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load i32, i32* %10, align 4
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i8* %81, i8** %82, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = and i64 %84, -4
  %86 = trunc i64 %85 to i32
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  store i32 %86, i32* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* @xfs_attr_put_listent, align 4
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 5
  store i32 %91, i32* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = bitcast i8* %94 to %struct.attrlist*
  store %struct.attrlist* %95, %struct.attrlist** %13, align 8
  %96 = load %struct.attrlist*, %struct.attrlist** %13, align 8
  %97 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load %struct.attrlist*, %struct.attrlist** %13, align 8
  %99 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.attrlist*, %struct.attrlist** %13, align 8
  %103 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 %101, i32* %105, align 4
  %106 = call i32 @xfs_attr_list_int(%struct.TYPE_6__* %12)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp sle i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @ASSERT(i32 %109)
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %72, %63, %55, %47, %24
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @xfs_attr_list_int(%struct.TYPE_6__*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
