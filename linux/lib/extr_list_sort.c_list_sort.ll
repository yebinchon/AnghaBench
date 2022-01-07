; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_list_sort.c_list_sort.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_list_sort.c_list_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @list_sort(i8* %0, %struct.list_head* nonnull %1, i32 (i8*, %struct.list_head*, %struct.list_head*)* nonnull %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32 (i8*, %struct.list_head*, %struct.list_head*)*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.list_head**, align 8
  %12 = alloca %struct.list_head*, align 8
  %13 = alloca %struct.list_head*, align 8
  %14 = alloca %struct.list_head*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store i32 (i8*, %struct.list_head*, %struct.list_head*)* %2, i32 (i8*, %struct.list_head*, %struct.list_head*)** %6, align 8
  %15 = load %struct.list_head*, %struct.list_head** %5, align 8
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i32 0, i32 1
  %17 = load %struct.list_head*, %struct.list_head** %16, align 8
  store %struct.list_head* %17, %struct.list_head** %7, align 8
  store %struct.list_head* null, %struct.list_head** %8, align 8
  store i64 0, i64* %9, align 8
  %18 = load %struct.list_head*, %struct.list_head** %7, align 8
  %19 = load %struct.list_head*, %struct.list_head** %5, align 8
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i32 0, i32 0
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8
  %22 = icmp eq %struct.list_head* %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %108

24:                                               ; preds = %3
  %25 = load %struct.list_head*, %struct.list_head** %5, align 8
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %25, i32 0, i32 0
  %27 = load %struct.list_head*, %struct.list_head** %26, align 8
  %28 = getelementptr inbounds %struct.list_head, %struct.list_head* %27, i32 0, i32 1
  store %struct.list_head* null, %struct.list_head** %28, align 8
  br label %29

29:                                               ; preds = %77, %24
  store %struct.list_head** %8, %struct.list_head*** %11, align 8
  %30 = load i64, i64* %9, align 8
  store i64 %30, i64* %10, align 8
  br label %31

31:                                               ; preds = %39, %29
  %32 = load i64, i64* %10, align 8
  %33 = and i64 %32, 1
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.list_head**, %struct.list_head*** %11, align 8
  %37 = load %struct.list_head*, %struct.list_head** %36, align 8
  %38 = getelementptr inbounds %struct.list_head, %struct.list_head* %37, i32 0, i32 0
  store %struct.list_head** %38, %struct.list_head*** %11, align 8
  br label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %10, align 8
  %41 = lshr i64 %40, 1
  store i64 %41, i64* %10, align 8
  br label %31

42:                                               ; preds = %31
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @likely(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %42
  %47 = load %struct.list_head**, %struct.list_head*** %11, align 8
  %48 = load %struct.list_head*, %struct.list_head** %47, align 8
  store %struct.list_head* %48, %struct.list_head** %12, align 8
  %49 = load %struct.list_head*, %struct.list_head** %12, align 8
  %50 = getelementptr inbounds %struct.list_head, %struct.list_head* %49, i32 0, i32 0
  %51 = load %struct.list_head*, %struct.list_head** %50, align 8
  store %struct.list_head* %51, %struct.list_head** %13, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = load i32 (i8*, %struct.list_head*, %struct.list_head*)*, i32 (i8*, %struct.list_head*, %struct.list_head*)** %6, align 8
  %54 = ptrtoint i32 (i8*, %struct.list_head*, %struct.list_head*)* %53 to i32
  %55 = load %struct.list_head*, %struct.list_head** %13, align 8
  %56 = load %struct.list_head*, %struct.list_head** %12, align 8
  %57 = call %struct.list_head* @merge(i8* %52, i32 %54, %struct.list_head* %55, %struct.list_head* %56)
  store %struct.list_head* %57, %struct.list_head** %12, align 8
  %58 = load %struct.list_head*, %struct.list_head** %13, align 8
  %59 = getelementptr inbounds %struct.list_head, %struct.list_head* %58, i32 0, i32 0
  %60 = load %struct.list_head*, %struct.list_head** %59, align 8
  %61 = load %struct.list_head*, %struct.list_head** %12, align 8
  %62 = getelementptr inbounds %struct.list_head, %struct.list_head* %61, i32 0, i32 0
  store %struct.list_head* %60, %struct.list_head** %62, align 8
  %63 = load %struct.list_head*, %struct.list_head** %12, align 8
  %64 = load %struct.list_head**, %struct.list_head*** %11, align 8
  store %struct.list_head* %63, %struct.list_head** %64, align 8
  br label %65

65:                                               ; preds = %46, %42
  %66 = load %struct.list_head*, %struct.list_head** %8, align 8
  %67 = load %struct.list_head*, %struct.list_head** %7, align 8
  %68 = getelementptr inbounds %struct.list_head, %struct.list_head* %67, i32 0, i32 0
  store %struct.list_head* %66, %struct.list_head** %68, align 8
  %69 = load %struct.list_head*, %struct.list_head** %7, align 8
  store %struct.list_head* %69, %struct.list_head** %8, align 8
  %70 = load %struct.list_head*, %struct.list_head** %7, align 8
  %71 = getelementptr inbounds %struct.list_head, %struct.list_head* %70, i32 0, i32 1
  %72 = load %struct.list_head*, %struct.list_head** %71, align 8
  store %struct.list_head* %72, %struct.list_head** %7, align 8
  %73 = load %struct.list_head*, %struct.list_head** %8, align 8
  %74 = getelementptr inbounds %struct.list_head, %struct.list_head* %73, i32 0, i32 1
  store %struct.list_head* null, %struct.list_head** %74, align 8
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %9, align 8
  br label %77

77:                                               ; preds = %65
  %78 = load %struct.list_head*, %struct.list_head** %7, align 8
  %79 = icmp ne %struct.list_head* %78, null
  br i1 %79, label %29, label %80

80:                                               ; preds = %77
  %81 = load %struct.list_head*, %struct.list_head** %8, align 8
  store %struct.list_head* %81, %struct.list_head** %7, align 8
  %82 = load %struct.list_head*, %struct.list_head** %8, align 8
  %83 = getelementptr inbounds %struct.list_head, %struct.list_head* %82, i32 0, i32 0
  %84 = load %struct.list_head*, %struct.list_head** %83, align 8
  store %struct.list_head* %84, %struct.list_head** %8, align 8
  br label %85

85:                                               ; preds = %92, %80
  %86 = load %struct.list_head*, %struct.list_head** %8, align 8
  %87 = getelementptr inbounds %struct.list_head, %struct.list_head* %86, i32 0, i32 0
  %88 = load %struct.list_head*, %struct.list_head** %87, align 8
  store %struct.list_head* %88, %struct.list_head** %14, align 8
  %89 = load %struct.list_head*, %struct.list_head** %14, align 8
  %90 = icmp ne %struct.list_head* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  br label %100

92:                                               ; preds = %85
  %93 = load i8*, i8** %4, align 8
  %94 = load i32 (i8*, %struct.list_head*, %struct.list_head*)*, i32 (i8*, %struct.list_head*, %struct.list_head*)** %6, align 8
  %95 = ptrtoint i32 (i8*, %struct.list_head*, %struct.list_head*)* %94 to i32
  %96 = load %struct.list_head*, %struct.list_head** %8, align 8
  %97 = load %struct.list_head*, %struct.list_head** %7, align 8
  %98 = call %struct.list_head* @merge(i8* %93, i32 %95, %struct.list_head* %96, %struct.list_head* %97)
  store %struct.list_head* %98, %struct.list_head** %7, align 8
  %99 = load %struct.list_head*, %struct.list_head** %14, align 8
  store %struct.list_head* %99, %struct.list_head** %8, align 8
  br label %85

100:                                              ; preds = %91
  %101 = load i8*, i8** %4, align 8
  %102 = load i32 (i8*, %struct.list_head*, %struct.list_head*)*, i32 (i8*, %struct.list_head*, %struct.list_head*)** %6, align 8
  %103 = ptrtoint i32 (i8*, %struct.list_head*, %struct.list_head*)* %102 to i32
  %104 = load %struct.list_head*, %struct.list_head** %5, align 8
  %105 = load %struct.list_head*, %struct.list_head** %8, align 8
  %106 = load %struct.list_head*, %struct.list_head** %7, align 8
  %107 = call i32 @merge_final(i8* %101, i32 %103, %struct.list_head* %104, %struct.list_head* %105, %struct.list_head* %106)
  br label %108

108:                                              ; preds = %100, %23
  ret void
}

declare dso_local i64 @likely(i64) #1

declare dso_local %struct.list_head* @merge(i8*, i32, %struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @merge_final(i8*, i32, %struct.list_head*, %struct.list_head*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
