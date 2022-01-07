; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_generic-radix-tree.c___genradix_iter_peek.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_generic-radix-tree.c___genradix_iter_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genradix_iter = type { i32, i64 }
%struct.__genradix = type { i32 }
%struct.genradix_root = type { i32 }
%struct.genradix_node = type { i8*, %struct.genradix_node** }

@GENRADIX_ARY = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__genradix_iter_peek(%struct.genradix_iter* %0, %struct.__genradix* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.genradix_iter*, align 8
  %6 = alloca %struct.__genradix*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.genradix_root*, align 8
  %9 = alloca %struct.genradix_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.genradix_iter* %0, %struct.genradix_iter** %5, align 8
  store %struct.__genradix* %1, %struct.__genradix** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %12

12:                                               ; preds = %88, %3
  %13 = load %struct.__genradix*, %struct.__genradix** %6, align 8
  %14 = getelementptr inbounds %struct.__genradix, %struct.__genradix* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.genradix_root* @READ_ONCE(i32 %15)
  store %struct.genradix_root* %16, %struct.genradix_root** %8, align 8
  %17 = load %struct.genradix_root*, %struct.genradix_root** %8, align 8
  %18 = icmp ne %struct.genradix_root* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store i8* null, i8** %4, align 8
  br label %110

20:                                               ; preds = %12
  %21 = load %struct.genradix_root*, %struct.genradix_root** %8, align 8
  %22 = call %struct.genradix_node* @genradix_root_to_node(%struct.genradix_root* %21)
  store %struct.genradix_node* %22, %struct.genradix_node** %9, align 8
  %23 = load %struct.genradix_root*, %struct.genradix_root** %8, align 8
  %24 = call i32 @genradix_root_to_depth(%struct.genradix_root* %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.genradix_iter*, %struct.genradix_iter** %5, align 8
  %26 = getelementptr inbounds %struct.genradix_iter, %struct.genradix_iter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ilog2(i32 %27)
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @genradix_depth_shift(i32 %29)
  %31 = icmp sge i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  store i8* null, i8** %4, align 8
  br label %110

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %90, %33
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %98

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = add i32 %38, -1
  store i32 %39, i32* %10, align 4
  %40 = load %struct.genradix_iter*, %struct.genradix_iter** %5, align 8
  %41 = getelementptr inbounds %struct.genradix_iter, %struct.genradix_iter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @genradix_depth_shift(i32 %43)
  %45 = ashr i32 %42, %44
  %46 = load i32, i32* @GENRADIX_ARY, align 4
  %47 = sub nsw i32 %46, 1
  %48 = and i32 %45, %47
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %89, %37
  %50 = load %struct.genradix_node*, %struct.genradix_node** %9, align 8
  %51 = getelementptr inbounds %struct.genradix_node, %struct.genradix_node* %50, i32 0, i32 1
  %52 = load %struct.genradix_node**, %struct.genradix_node*** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.genradix_node*, %struct.genradix_node** %52, i64 %54
  %56 = load %struct.genradix_node*, %struct.genradix_node** %55, align 8
  %57 = icmp ne %struct.genradix_node* %56, null
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %90

59:                                               ; preds = %49
  %60 = load i32, i32* %11, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %11, align 4
  %62 = load %struct.genradix_iter*, %struct.genradix_iter** %5, align 8
  %63 = getelementptr inbounds %struct.genradix_iter, %struct.genradix_iter* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = load i32, i32* %10, align 4
  %67 = call i64 @genradix_depth_size(i32 %66)
  %68 = add nsw i64 %65, %67
  %69 = load i32, i32* %10, align 4
  %70 = call i64 @genradix_depth_size(i32 %69)
  %71 = call i32 @round_down(i64 %68, i64 %70)
  %72 = load %struct.genradix_iter*, %struct.genradix_iter** %5, align 8
  %73 = getelementptr inbounds %struct.genradix_iter, %struct.genradix_iter* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.genradix_iter*, %struct.genradix_iter** %5, align 8
  %75 = getelementptr inbounds %struct.genradix_iter, %struct.genradix_iter* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* @PAGE_SHIFT, align 8
  %78 = trunc i64 %77 to i32
  %79 = ashr i32 %76, %78
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %7, align 8
  %82 = mul i64 %80, %81
  %83 = load %struct.genradix_iter*, %struct.genradix_iter** %5, align 8
  %84 = getelementptr inbounds %struct.genradix_iter, %struct.genradix_iter* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @GENRADIX_ARY, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %59
  br label %12

89:                                               ; preds = %59
  br label %49

90:                                               ; preds = %49
  %91 = load %struct.genradix_node*, %struct.genradix_node** %9, align 8
  %92 = getelementptr inbounds %struct.genradix_node, %struct.genradix_node* %91, i32 0, i32 1
  %93 = load %struct.genradix_node**, %struct.genradix_node*** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.genradix_node*, %struct.genradix_node** %93, i64 %95
  %97 = load %struct.genradix_node*, %struct.genradix_node** %96, align 8
  store %struct.genradix_node* %97, %struct.genradix_node** %9, align 8
  br label %34

98:                                               ; preds = %34
  %99 = load %struct.genradix_node*, %struct.genradix_node** %9, align 8
  %100 = getelementptr inbounds %struct.genradix_node, %struct.genradix_node* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.genradix_iter*, %struct.genradix_iter** %5, align 8
  %103 = getelementptr inbounds %struct.genradix_iter, %struct.genradix_iter* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = sub nsw i32 %105, 1
  %107 = and i32 %104, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %101, i64 %108
  store i8* %109, i8** %4, align 8
  br label %110

110:                                              ; preds = %98, %32, %19
  %111 = load i8*, i8** %4, align 8
  ret i8* %111
}

declare dso_local %struct.genradix_root* @READ_ONCE(i32) #1

declare dso_local %struct.genradix_node* @genradix_root_to_node(%struct.genradix_root*) #1

declare dso_local i32 @genradix_root_to_depth(%struct.genradix_root*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @genradix_depth_shift(i32) #1

declare dso_local i32 @round_down(i64, i64) #1

declare dso_local i64 @genradix_depth_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
