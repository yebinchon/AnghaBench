; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_test.c_verify_node.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_test.c_verify_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_node = type { i32**, i32, %struct.radix_tree_node** }

@RADIX_TREE_TAG_LONGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"tag: %u, shift %u, tagged: %d, anyset: %d\0A\00", align 1
@RADIX_TREE_MAX_TAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"tag %d: \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%016lx \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@RADIX_TREE_MAP_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Failure at off %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radix_tree_node*, i32, i32)* @verify_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_node(%struct.radix_tree_node* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radix_tree_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radix_tree_node* %0, %struct.radix_tree_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %12 = call %struct.radix_tree_node* @entry_to_node(%struct.radix_tree_node* %11)
  store %struct.radix_tree_node* %12, %struct.radix_tree_node** %5, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %32, %3
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @RADIX_TREE_TAG_LONGS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %19 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %18, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  store i32 1, i32* %8, align 4
  br label %35

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %13

35:                                               ; preds = %30, %13
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %80

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %42 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43, i32 %44, i32 %45)
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %76, %39
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @RADIX_TREE_MAX_TAGS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %79

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %71, %51
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @RADIX_TREE_TAG_LONGS, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %60 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %59, i32 0, i32 0
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %58
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %54

74:                                               ; preds = %54
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %47

79:                                               ; preds = %47
  store i32 1, i32* %4, align 4
  br label %171

80:                                               ; preds = %35
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %87 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %170

90:                                               ; preds = %80
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %166, %90
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @RADIX_TREE_MAP_SIZE, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %169

95:                                               ; preds = %91
  %96 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %97 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %96, i32 0, i32 2
  %98 = load %struct.radix_tree_node**, %struct.radix_tree_node*** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.radix_tree_node*, %struct.radix_tree_node** %98, i64 %100
  %102 = load %struct.radix_tree_node*, %struct.radix_tree_node** %101, align 8
  %103 = icmp ne %struct.radix_tree_node* %102, null
  br i1 %103, label %104, label %165

104:                                              ; preds = %95
  %105 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %106 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %105, i32 0, i32 2
  %107 = load %struct.radix_tree_node**, %struct.radix_tree_node*** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.radix_tree_node*, %struct.radix_tree_node** %107, i64 %109
  %111 = load %struct.radix_tree_node*, %struct.radix_tree_node** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %115 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %114, i32 0, i32 0
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @test_bit(i32 %113, i32* %120)
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = call i32 @verify_node(%struct.radix_tree_node* %111, i32 %112, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %164

128:                                              ; preds = %104
  %129 = load i32, i32* %9, align 4
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %129)
  store i32 0, i32* %10, align 4
  br label %131

131:                                              ; preds = %160, %128
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @RADIX_TREE_MAX_TAGS, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %163

135:                                              ; preds = %131
  %136 = load i32, i32* %10, align 4
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  store i32 0, i32* %9, align 4
  br label %138

138:                                              ; preds = %155, %135
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @RADIX_TREE_TAG_LONGS, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %158

142:                                              ; preds = %138
  %143 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %144 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %143, i32 0, i32 0
  %145 = load i32**, i32*** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %142
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %9, align 4
  br label %138

158:                                              ; preds = %138
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %131

163:                                              ; preds = %131
  store i32 1, i32* %4, align 4
  br label %171

164:                                              ; preds = %104
  br label %165

165:                                              ; preds = %164, %95
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  br label %91

169:                                              ; preds = %91
  br label %170

170:                                              ; preds = %169, %80
  store i32 0, i32* %4, align 4
  br label %171

171:                                              ; preds = %170, %163, %79
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local %struct.radix_tree_node* @entry_to_node(%struct.radix_tree_node*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
