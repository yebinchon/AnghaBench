; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_main.c_check_copied_tags.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_main.c_check_copied_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_root = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"%lu-%lu: %lu, tags %d-%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_copied_tags(%struct.radix_tree_root* %0, i64 %1, i64 %2, i64* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.radix_tree_root*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %150, %7
  %17 = load i32, i32* %15, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %153

20:                                               ; preds = %16
  %21 = load i64*, i64** %11, align 8
  %22 = load i32, i32* %15, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %20
  %29 = load i64*, i64** %11, align 8
  %30 = load i32, i32* %15, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %84

36:                                               ; preds = %28, %20
  %37 = load %struct.radix_tree_root*, %struct.radix_tree_root** %8, align 8
  %38 = load i64*, i64** %11, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @item_tag_get(%struct.radix_tree_root* %37, i64 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %36
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64*, i64** %11, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.radix_tree_root*, %struct.radix_tree_root** %8, align 8
  %55 = load i64*, i64** %11, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @item_tag_get(%struct.radix_tree_root* %54, i64 %59, i32 %60)
  %62 = load %struct.radix_tree_root*, %struct.radix_tree_root** %8, align 8
  %63 = load i64*, i64** %11, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @item_tag_get(%struct.radix_tree_root* %62, i64 %67, i32 %68)
  %70 = call i32 @printv(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %47, i64 %48, i64 %53, i32 %61, i32 %69)
  br label %71

71:                                               ; preds = %46, %36
  %72 = load %struct.radix_tree_root*, %struct.radix_tree_root** %8, align 8
  %73 = load i64*, i64** %11, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @item_tag_get(%struct.radix_tree_root* %72, i64 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  br label %150

84:                                               ; preds = %28
  %85 = load %struct.radix_tree_root*, %struct.radix_tree_root** %8, align 8
  %86 = load i64*, i64** %11, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @item_tag_get(%struct.radix_tree_root* %85, i64 %90, i32 %91)
  %93 = load %struct.radix_tree_root*, %struct.radix_tree_root** %8, align 8
  %94 = load i64*, i64** %11, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @item_tag_get(%struct.radix_tree_root* %93, i64 %98, i32 %99)
  %101 = xor i32 %92, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %84
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load i64*, i64** %11, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.radix_tree_root*, %struct.radix_tree_root** %8, align 8
  %112 = load i64*, i64** %11, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @item_tag_get(%struct.radix_tree_root* %111, i64 %116, i32 %117)
  %119 = load %struct.radix_tree_root*, %struct.radix_tree_root** %8, align 8
  %120 = load i64*, i64** %11, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @item_tag_get(%struct.radix_tree_root* %119, i64 %124, i32 %125)
  %127 = call i32 @printv(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %104, i64 %105, i64 %110, i32 %118, i32 %126)
  br label %128

128:                                              ; preds = %103, %84
  %129 = load %struct.radix_tree_root*, %struct.radix_tree_root** %8, align 8
  %130 = load i64*, i64** %11, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @item_tag_get(%struct.radix_tree_root* %129, i64 %134, i32 %135)
  %137 = load %struct.radix_tree_root*, %struct.radix_tree_root** %8, align 8
  %138 = load i64*, i64** %11, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @item_tag_get(%struct.radix_tree_root* %137, i64 %142, i32 %143)
  %145 = xor i32 %136, %144
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = call i32 @assert(i32 %148)
  br label %150

150:                                              ; preds = %128, %71
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %15, align 4
  br label %16

153:                                              ; preds = %16
  ret void
}

declare dso_local i32 @item_tag_get(%struct.radix_tree_root*, i64, i32) #1

declare dso_local i32 @printv(i32, i8*, i64, i64, i64, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
