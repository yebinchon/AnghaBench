; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_generic-radix-tree.c___genradix_ptr_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_generic-radix-tree.c___genradix_ptr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__genradix = type { %struct.genradix_root* }
%struct.genradix_root = type { i8*, %struct.genradix_root** }
%struct.genradix_node = type { i8*, %struct.genradix_node** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__genradix_ptr_alloc(%struct.__genradix* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.__genradix*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.genradix_root*, align 8
  %9 = alloca %struct.genradix_node*, align 8
  %10 = alloca %struct.genradix_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.genradix_root*, align 8
  %13 = alloca %struct.genradix_root*, align 8
  %14 = alloca %struct.genradix_node**, align 8
  store %struct.__genradix* %0, %struct.__genradix** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.__genradix*, %struct.__genradix** %5, align 8
  %16 = getelementptr inbounds %struct.__genradix, %struct.__genradix* %15, i32 0, i32 0
  %17 = load %struct.genradix_root*, %struct.genradix_root** %16, align 8
  %18 = call %struct.genradix_root* @READ_ONCE(%struct.genradix_root* %17)
  store %struct.genradix_root* %18, %struct.genradix_root** %8, align 8
  store %struct.genradix_node* null, %struct.genradix_node** %10, align 8
  br label %19

19:                                               ; preds = %3, %74
  %20 = load %struct.genradix_root*, %struct.genradix_root** %8, align 8
  store %struct.genradix_root* %20, %struct.genradix_root** %12, align 8
  %21 = load %struct.genradix_root*, %struct.genradix_root** %12, align 8
  %22 = call %struct.genradix_root* @genradix_root_to_node(%struct.genradix_root* %21)
  %23 = bitcast %struct.genradix_root* %22 to %struct.genradix_node*
  store %struct.genradix_node* %23, %struct.genradix_node** %9, align 8
  %24 = load %struct.genradix_root*, %struct.genradix_root** %12, align 8
  %25 = call i32 @genradix_root_to_depth(%struct.genradix_root* %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.genradix_node*, %struct.genradix_node** %9, align 8
  %27 = icmp ne %struct.genradix_node* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @ilog2(i64 %29)
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @genradix_depth_shift(i32 %31)
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %75

35:                                               ; preds = %28, %19
  %36 = load %struct.genradix_node*, %struct.genradix_node** %10, align 8
  %37 = icmp ne %struct.genradix_node* %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = call %struct.genradix_root* @genradix_alloc_node(i32 %39)
  %41 = bitcast %struct.genradix_root* %40 to %struct.genradix_node*
  store %struct.genradix_node* %41, %struct.genradix_node** %10, align 8
  %42 = load %struct.genradix_node*, %struct.genradix_node** %10, align 8
  %43 = icmp ne %struct.genradix_node* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store i8* null, i8** %4, align 8
  br label %142

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %35
  %47 = load %struct.genradix_node*, %struct.genradix_node** %9, align 8
  %48 = load %struct.genradix_node*, %struct.genradix_node** %10, align 8
  %49 = getelementptr inbounds %struct.genradix_node, %struct.genradix_node* %48, i32 0, i32 1
  %50 = load %struct.genradix_node**, %struct.genradix_node*** %49, align 8
  %51 = getelementptr inbounds %struct.genradix_node*, %struct.genradix_node** %50, i64 0
  store %struct.genradix_node* %47, %struct.genradix_node** %51, align 8
  %52 = load %struct.genradix_node*, %struct.genradix_node** %10, align 8
  %53 = ptrtoint %struct.genradix_node* %52 to i64
  %54 = load %struct.genradix_node*, %struct.genradix_node** %9, align 8
  %55 = icmp ne %struct.genradix_node* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* %11, align 4
  %58 = add i32 %57, 1
  br label %60

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %56
  %61 = phi i32 [ %58, %56 ], [ 0, %59 ]
  %62 = zext i32 %61 to i64
  %63 = or i64 %53, %62
  %64 = inttoptr i64 %63 to %struct.genradix_root*
  store %struct.genradix_root* %64, %struct.genradix_root** %13, align 8
  %65 = load %struct.__genradix*, %struct.__genradix** %5, align 8
  %66 = getelementptr inbounds %struct.__genradix, %struct.__genradix* %65, i32 0, i32 0
  %67 = load %struct.genradix_root*, %struct.genradix_root** %12, align 8
  %68 = load %struct.genradix_root*, %struct.genradix_root** %13, align 8
  %69 = call %struct.genradix_root* @cmpxchg_release(%struct.genradix_root** %66, %struct.genradix_root* %67, %struct.genradix_root* %68)
  store %struct.genradix_root* %69, %struct.genradix_root** %8, align 8
  %70 = load %struct.genradix_root*, %struct.genradix_root** %12, align 8
  %71 = icmp eq %struct.genradix_root* %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = load %struct.genradix_root*, %struct.genradix_root** %13, align 8
  store %struct.genradix_root* %73, %struct.genradix_root** %8, align 8
  store %struct.genradix_node* null, %struct.genradix_node** %10, align 8
  br label %74

74:                                               ; preds = %72, %60
  br label %19

75:                                               ; preds = %34
  br label %76

76:                                               ; preds = %128, %75
  %77 = load i32, i32* %11, align 4
  %78 = add i32 %77, -1
  store i32 %78, i32* %11, align 4
  %79 = icmp ne i32 %77, 0
  br i1 %79, label %80, label %129

80:                                               ; preds = %76
  %81 = load %struct.genradix_node*, %struct.genradix_node** %9, align 8
  %82 = getelementptr inbounds %struct.genradix_node, %struct.genradix_node* %81, i32 0, i32 1
  %83 = load %struct.genradix_node**, %struct.genradix_node*** %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i64 @genradix_depth_shift(i32 %85)
  %87 = lshr i64 %84, %86
  %88 = getelementptr inbounds %struct.genradix_node*, %struct.genradix_node** %83, i64 %87
  store %struct.genradix_node** %88, %struct.genradix_node*** %14, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @genradix_depth_size(i32 %89)
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %6, align 8
  %94 = and i64 %93, %92
  store i64 %94, i64* %6, align 8
  %95 = load %struct.genradix_node**, %struct.genradix_node*** %14, align 8
  %96 = load %struct.genradix_node*, %struct.genradix_node** %95, align 8
  %97 = bitcast %struct.genradix_node* %96 to %struct.genradix_root*
  %98 = call %struct.genradix_root* @READ_ONCE(%struct.genradix_root* %97)
  %99 = bitcast %struct.genradix_root* %98 to %struct.genradix_node*
  store %struct.genradix_node* %99, %struct.genradix_node** %9, align 8
  %100 = load %struct.genradix_node*, %struct.genradix_node** %9, align 8
  %101 = icmp ne %struct.genradix_node* %100, null
  br i1 %101, label %128, label %102

102:                                              ; preds = %80
  %103 = load %struct.genradix_node*, %struct.genradix_node** %10, align 8
  %104 = icmp ne %struct.genradix_node* %103, null
  br i1 %104, label %113, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %7, align 4
  %107 = call %struct.genradix_root* @genradix_alloc_node(i32 %106)
  %108 = bitcast %struct.genradix_root* %107 to %struct.genradix_node*
  store %struct.genradix_node* %108, %struct.genradix_node** %10, align 8
  %109 = load %struct.genradix_node*, %struct.genradix_node** %10, align 8
  %110 = icmp ne %struct.genradix_node* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %105
  store i8* null, i8** %4, align 8
  br label %142

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112, %102
  %114 = load %struct.genradix_node**, %struct.genradix_node*** %14, align 8
  %115 = bitcast %struct.genradix_node** %114 to %struct.genradix_root**
  %116 = load %struct.genradix_node*, %struct.genradix_node** %10, align 8
  %117 = bitcast %struct.genradix_node* %116 to %struct.genradix_root*
  %118 = call %struct.genradix_root* @cmpxchg_release(%struct.genradix_root** %115, %struct.genradix_root* null, %struct.genradix_root* %117)
  %119 = bitcast %struct.genradix_root* %118 to %struct.genradix_node*
  store %struct.genradix_node* %119, %struct.genradix_node** %9, align 8
  %120 = icmp ne %struct.genradix_node* %119, null
  br i1 %120, label %127, label %121

121:                                              ; preds = %113
  %122 = load %struct.genradix_node*, %struct.genradix_node** %9, align 8
  %123 = bitcast %struct.genradix_node* %122 to %struct.genradix_root*
  %124 = load %struct.genradix_node*, %struct.genradix_node** %10, align 8
  %125 = bitcast %struct.genradix_node* %124 to %struct.genradix_root*
  %126 = call i32 @swap(%struct.genradix_root* %123, %struct.genradix_root* %125)
  br label %127

127:                                              ; preds = %121, %113
  br label %128

128:                                              ; preds = %127, %80
  br label %76

129:                                              ; preds = %76
  %130 = load %struct.genradix_node*, %struct.genradix_node** %10, align 8
  %131 = icmp ne %struct.genradix_node* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load %struct.genradix_node*, %struct.genradix_node** %10, align 8
  %134 = bitcast %struct.genradix_node* %133 to %struct.genradix_root*
  %135 = call i32 @genradix_free_node(%struct.genradix_root* %134)
  br label %136

136:                                              ; preds = %132, %129
  %137 = load %struct.genradix_node*, %struct.genradix_node** %9, align 8
  %138 = getelementptr inbounds %struct.genradix_node, %struct.genradix_node* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i64, i64* %6, align 8
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %4, align 8
  br label %142

142:                                              ; preds = %136, %111, %44
  %143 = load i8*, i8** %4, align 8
  ret i8* %143
}

declare dso_local %struct.genradix_root* @READ_ONCE(%struct.genradix_root*) #1

declare dso_local %struct.genradix_root* @genradix_root_to_node(%struct.genradix_root*) #1

declare dso_local i32 @genradix_root_to_depth(%struct.genradix_root*) #1

declare dso_local i64 @ilog2(i64) #1

declare dso_local i64 @genradix_depth_shift(i32) #1

declare dso_local %struct.genradix_root* @genradix_alloc_node(i32) #1

declare dso_local %struct.genradix_root* @cmpxchg_release(%struct.genradix_root**, %struct.genradix_root*, %struct.genradix_root*) #1

declare dso_local i32 @genradix_depth_size(i32) #1

declare dso_local i32 @swap(%struct.genradix_root*, %struct.genradix_root*) #1

declare dso_local i32 @genradix_free_node(%struct.genradix_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
