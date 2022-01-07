; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_ebitmap.c_ebitmap_contains.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_ebitmap.c_ebitmap_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebitmap = type { i64, %struct.ebitmap_node* }
%struct.ebitmap_node = type { i64, i32*, %struct.ebitmap_node* }

@EBITMAP_UNIT_NUMS = common dso_local global i32 0, align 4
@EBITMAP_UNIT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ebitmap_contains(%struct.ebitmap* %0, %struct.ebitmap* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ebitmap*, align 8
  %6 = alloca %struct.ebitmap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ebitmap_node*, align 8
  %9 = alloca %struct.ebitmap_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ebitmap* %0, %struct.ebitmap** %5, align 8
  store %struct.ebitmap* %1, %struct.ebitmap** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.ebitmap*, %struct.ebitmap** %5, align 8
  %13 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ebitmap*, %struct.ebitmap** %6, align 8
  %16 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %149

20:                                               ; preds = %3
  %21 = load %struct.ebitmap*, %struct.ebitmap** %5, align 8
  %22 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %21, i32 0, i32 1
  %23 = load %struct.ebitmap_node*, %struct.ebitmap_node** %22, align 8
  store %struct.ebitmap_node* %23, %struct.ebitmap_node** %8, align 8
  %24 = load %struct.ebitmap*, %struct.ebitmap** %6, align 8
  %25 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %24, i32 0, i32 1
  %26 = load %struct.ebitmap_node*, %struct.ebitmap_node** %25, align 8
  store %struct.ebitmap_node* %26, %struct.ebitmap_node** %9, align 8
  br label %27

27:                                               ; preds = %137, %51, %20
  %28 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  %29 = icmp ne %struct.ebitmap_node* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load %struct.ebitmap_node*, %struct.ebitmap_node** %9, align 8
  %32 = icmp ne %struct.ebitmap_node* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  %35 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ebitmap_node*, %struct.ebitmap_node** %9, align 8
  %38 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sle i64 %36, %39
  br label %41

41:                                               ; preds = %33, %30, %27
  %42 = phi i1 [ false, %30 ], [ false, %27 ], [ %40, %33 ]
  br i1 %42, label %43, label %144

43:                                               ; preds = %41
  %44 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  %45 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ebitmap_node*, %struct.ebitmap_node** %9, align 8
  %48 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  %53 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %52, i32 0, i32 2
  %54 = load %struct.ebitmap_node*, %struct.ebitmap_node** %53, align 8
  store %struct.ebitmap_node* %54, %struct.ebitmap_node** %8, align 8
  br label %27

55:                                               ; preds = %43
  %56 = load i32, i32* @EBITMAP_UNIT_NUMS, align 4
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %73, %55
  %59 = load i32, i32* %10, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load %struct.ebitmap_node*, %struct.ebitmap_node** %9, align 8
  %63 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %61, %58
  %72 = phi i1 [ false, %58 ], [ %70, %61 ]
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %10, align 4
  br label %58

76:                                               ; preds = %71
  %77 = load i64, i64* %7, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %105

79:                                               ; preds = %76
  %80 = load i32, i32* %10, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %79
  %83 = load %struct.ebitmap_node*, %struct.ebitmap_node** %9, align 8
  %84 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @EBITMAP_UNIT_SIZE, align 4
  %88 = mul nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %85, %89
  %91 = load %struct.ebitmap_node*, %struct.ebitmap_node** %9, align 8
  %92 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @__fls(i32 %97)
  %99 = add nsw i64 %90, %98
  store i64 %99, i64* %11, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* %7, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %82
  store i32 0, i32* %4, align 4
  br label %149

104:                                              ; preds = %82
  br label %105

105:                                              ; preds = %104, %79, %76
  br label %106

106:                                              ; preds = %134, %105
  %107 = load i32, i32* %10, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %137

109:                                              ; preds = %106
  %110 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  %111 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ebitmap_node*, %struct.ebitmap_node** %9, align 8
  %118 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %116, %123
  %125 = load %struct.ebitmap_node*, %struct.ebitmap_node** %9, align 8
  %126 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %124, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %149

134:                                              ; preds = %109
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %10, align 4
  br label %106

137:                                              ; preds = %106
  %138 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  %139 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %138, i32 0, i32 2
  %140 = load %struct.ebitmap_node*, %struct.ebitmap_node** %139, align 8
  store %struct.ebitmap_node* %140, %struct.ebitmap_node** %8, align 8
  %141 = load %struct.ebitmap_node*, %struct.ebitmap_node** %9, align 8
  %142 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %141, i32 0, i32 2
  %143 = load %struct.ebitmap_node*, %struct.ebitmap_node** %142, align 8
  store %struct.ebitmap_node* %143, %struct.ebitmap_node** %9, align 8
  br label %27

144:                                              ; preds = %41
  %145 = load %struct.ebitmap_node*, %struct.ebitmap_node** %9, align 8
  %146 = icmp ne %struct.ebitmap_node* %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 0, i32* %4, align 4
  br label %149

148:                                              ; preds = %144
  store i32 1, i32* %4, align 4
  br label %149

149:                                              ; preds = %148, %147, %133, %103, %19
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i64 @__fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
