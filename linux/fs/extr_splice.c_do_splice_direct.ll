; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_splice.c_do_splice_direct.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_splice.c_do_splice_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32 }
%struct.splice_desc = type { i64, i64, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.file* }

@FMODE_WRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i64 0, align 8
@O_APPEND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@WRITE = common dso_local global i32 0, align 4
@direct_splice_actor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @do_splice_direct(%struct.file* %0, i32* %1, %struct.file* %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.splice_desc, align 8
  %15 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.file* %2, %struct.file** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %14, i32 0, i32 0
  %17 = load i64, i64* %12, align 8
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %14, i32 0, i32 1
  %19 = load i64, i64* %12, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %14, i32 0, i32 2
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %14, i32 0, i32 3
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %22, align 4
  %25 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %14, i32 0, i32 4
  %26 = load i32*, i32** %11, align 8
  store i32* %26, i32** %25, align 8
  %27 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %14, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.file*, %struct.file** %10, align 8
  store %struct.file* %29, %struct.file** %28, align 8
  %30 = load %struct.file*, %struct.file** %10, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @FMODE_WRITE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %6
  %41 = load i64, i64* @EBADF, align 8
  %42 = sub nsw i64 0, %41
  store i64 %42, i64* %7, align 8
  br label %79

43:                                               ; preds = %6
  %44 = load %struct.file*, %struct.file** %10, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @O_APPEND, align 4
  %48 = and i32 %46, %47
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i64, i64* @EINVAL, align 8
  %53 = sub nsw i64 0, %52
  store i64 %53, i64* %7, align 8
  br label %79

54:                                               ; preds = %43
  %55 = load i32, i32* @WRITE, align 4
  %56 = load %struct.file*, %struct.file** %10, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i64 @rw_verify_area(i32 %55, %struct.file* %56, i32* %57, i64 %58)
  store i64 %59, i64* %15, align 8
  %60 = load i64, i64* %15, align 8
  %61 = icmp slt i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i64, i64* %15, align 8
  store i64 %66, i64* %7, align 8
  br label %79

67:                                               ; preds = %54
  %68 = load %struct.file*, %struct.file** %8, align 8
  %69 = load i32, i32* @direct_splice_actor, align 4
  %70 = call i64 @splice_direct_to_actor(%struct.file* %68, %struct.splice_desc* %14, i32 %69)
  store i64 %70, i64* %15, align 8
  %71 = load i64, i64* %15, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %14, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %67
  %78 = load i64, i64* %15, align 8
  store i64 %78, i64* %7, align 8
  br label %79

79:                                               ; preds = %77, %65, %51, %40
  %80 = load i64, i64* %7, align 8
  ret i64 %80
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @rw_verify_area(i32, %struct.file*, i32*, i64) #1

declare dso_local i64 @splice_direct_to_actor(%struct.file*, %struct.splice_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
