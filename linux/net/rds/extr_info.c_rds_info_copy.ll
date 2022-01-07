; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_info.c_rds_info_copy.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_info.c_rds_info_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_info_iterator = type { i64, i32*, i32* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"page %p addr %p offset %lu this %lu data %p bytes %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_info_copy(%struct.rds_info_iterator* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.rds_info_iterator*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.rds_info_iterator* %0, %struct.rds_info_iterator** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %8

8:                                                ; preds = %85, %3
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %86

11:                                               ; preds = %8
  %12 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %13 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %18 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @kmap_atomic(i32 %20)
  %22 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %23 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %22, i32 0, i32 2
  store i32* %21, i32** %23, align 8
  br label %24

24:                                               ; preds = %16, %11
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @PAGE_SIZE, align 8
  %27 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %28 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = call i64 @min(i64 %25, i64 %30)
  store i64 %31, i64* %7, align 8
  %32 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %33 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %37 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %40 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @rdsdebug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %35, i32* %38, i64 %41, i64 %42, i8* %43, i64 %44)
  %46 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %47 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %50 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @memcpy(i32* %52, i8* %53, i64 %54)
  %56 = load i64, i64* %7, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr i8, i8* %57, i64 %56
  store i8* %58, i8** %5, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %6, align 8
  %61 = sub i64 %60, %59
  store i64 %61, i64* %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %64 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, %62
  store i64 %66, i64* %64, align 8
  %67 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %68 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PAGE_SIZE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %24
  %73 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %74 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @kunmap_atomic(i32* %75)
  %77 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %78 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %77, i32 0, i32 2
  store i32* null, i32** %78, align 8
  %79 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %80 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %4, align 8
  %82 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %82, align 8
  br label %85

85:                                               ; preds = %72, %24
  br label %8

86:                                               ; preds = %8
  ret void
}

declare dso_local i32* @kmap_atomic(i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @rdsdebug(i8*, i32, i32*, i64, i64, i8*, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @kunmap_atomic(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
