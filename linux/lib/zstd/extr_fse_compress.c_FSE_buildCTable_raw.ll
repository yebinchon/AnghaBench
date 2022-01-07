; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_fse_compress.c_FSE_buildCTable_raw.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_fse_compress.c_FSE_buildCTable_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@GENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FSE_buildCTable_raw(i32* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 1, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sub i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = bitcast i32* %20 to i8*
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to i64*
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  store i64* %24, i64** %10, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %6, align 4
  %29 = lshr i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = bitcast i32* %31 to i8*
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %34, %struct.TYPE_2__** %12, align 8
  %35 = load i32, i32* %5, align 4
  %36 = icmp ult i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @GENERIC, align 4
  %39 = call i64 @ERROR(i32 %38)
  store i64 %39, i64* %3, align 8
  br label %93

40:                                               ; preds = %2
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = load i64*, i64** %10, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 -2
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = load i64*, i64** %10, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 -1
  store i64 %46, i64* %48, align 8
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %62, %40
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %13, align 4
  %56 = add i32 %54, %55
  %57 = zext i32 %56 to i64
  %58 = load i64*, i64** %10, align 8
  %59 = load i32, i32* %13, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 %57, i64* %61, align 8
  br label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %13, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %49

65:                                               ; preds = %49
  %66 = load i32, i32* %5, align 4
  %67 = shl i32 %66, 16
  %68 = load i32, i32* %5, align 4
  %69 = shl i32 1, %68
  %70 = sub i32 %67, %69
  store i32 %70, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %89, %65
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ule i32 %72, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %71
  %76 = load i32, i32* %14, align 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %78 = load i32, i32* %13, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %76, i32* %81, align 4
  %82 = load i32, i32* %13, align 4
  %83 = sub i32 %82, 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %85 = load i32, i32* %13, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i32 %83, i32* %88, align 4
  br label %89

89:                                               ; preds = %75
  %90 = load i32, i32* %13, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %71

92:                                               ; preds = %71
  store i64 0, i64* %3, align 8
  br label %93

93:                                               ; preds = %92, %37
  %94 = load i64, i64* %3, align 8
  ret i64 %94
}

declare dso_local i64 @ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
