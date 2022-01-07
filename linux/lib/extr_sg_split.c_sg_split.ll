; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_sg_split.c_sg_split.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_sg_split.c_sg_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32, %struct.scatterlist* }
%struct.sg_splitter = type { i32, %struct.sg_splitter* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sg_split(%struct.scatterlist* %0, i32 %1, i32 %2, i32 %3, i64* %4, %struct.scatterlist** %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca %struct.scatterlist**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.sg_splitter*, align 8
  store %struct.scatterlist* %0, %struct.scatterlist** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i64* %4, i64** %14, align 8
  store %struct.scatterlist** %5, %struct.scatterlist*** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %17, align 4
  %23 = call %struct.sg_splitter* @kcalloc(i32 %21, i32 16, i32 %22)
  store %struct.sg_splitter* %23, %struct.sg_splitter** %20, align 8
  %24 = load %struct.sg_splitter*, %struct.sg_splitter** %20, align 8
  %25 = icmp ne %struct.sg_splitter* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %8
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %155

29:                                               ; preds = %8
  %30 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %31 = bitcast %struct.scatterlist* %30 to %struct.sg_splitter*
  %32 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %33 = bitcast %struct.scatterlist* %32 to %struct.sg_splitter*
  %34 = call i32 @sg_nents(%struct.sg_splitter* %33)
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i64*, i64** %14, align 8
  %38 = load %struct.sg_splitter*, %struct.sg_splitter** %20, align 8
  %39 = call i32 @sg_calculate_split(%struct.sg_splitter* %31, i32 %34, i32 %35, i32 %36, i64* %37, %struct.sg_splitter* %38, i32 0)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %135

43:                                               ; preds = %29
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %46

46:                                               ; preds = %73, %43
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %46
  %51 = load %struct.sg_splitter*, %struct.sg_splitter** %20, align 8
  %52 = load i32, i32* %18, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.sg_splitter, %struct.sg_splitter* %51, i64 %53
  %55 = getelementptr inbounds %struct.sg_splitter, %struct.sg_splitter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %17, align 4
  %58 = call %struct.sg_splitter* @kmalloc_array(i32 %56, i32 16, i32 %57)
  %59 = load %struct.sg_splitter*, %struct.sg_splitter** %20, align 8
  %60 = load i32, i32* %18, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.sg_splitter, %struct.sg_splitter* %59, i64 %61
  %63 = getelementptr inbounds %struct.sg_splitter, %struct.sg_splitter* %62, i32 0, i32 1
  store %struct.sg_splitter* %58, %struct.sg_splitter** %63, align 8
  %64 = load %struct.sg_splitter*, %struct.sg_splitter** %20, align 8
  %65 = load i32, i32* %18, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.sg_splitter, %struct.sg_splitter* %64, i64 %66
  %68 = getelementptr inbounds %struct.sg_splitter, %struct.sg_splitter* %67, i32 0, i32 1
  %69 = load %struct.sg_splitter*, %struct.sg_splitter** %68, align 8
  %70 = icmp ne %struct.sg_splitter* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %50
  br label %135

72:                                               ; preds = %50
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %18, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %18, align 4
  br label %46

76:                                               ; preds = %46
  %77 = load %struct.sg_splitter*, %struct.sg_splitter** %20, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @sg_split_phys(%struct.sg_splitter* %77, i32 %78)
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %76
  %83 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %84 = bitcast %struct.scatterlist* %83 to %struct.sg_splitter*
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i64*, i64** %14, align 8
  %89 = load %struct.sg_splitter*, %struct.sg_splitter** %20, align 8
  %90 = call i32 @sg_calculate_split(%struct.sg_splitter* %84, i32 %85, i32 %86, i32 %87, i64* %88, %struct.sg_splitter* %89, i32 1)
  store i32 %90, i32* %19, align 4
  %91 = load i32, i32* %19, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  br label %135

94:                                               ; preds = %82
  %95 = load %struct.sg_splitter*, %struct.sg_splitter** %20, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @sg_split_mapped(%struct.sg_splitter* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %76
  store i32 0, i32* %18, align 4
  br label %99

99:                                               ; preds = %129, %98
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %132

103:                                              ; preds = %99
  %104 = load %struct.sg_splitter*, %struct.sg_splitter** %20, align 8
  %105 = load i32, i32* %18, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.sg_splitter, %struct.sg_splitter* %104, i64 %106
  %108 = getelementptr inbounds %struct.sg_splitter, %struct.sg_splitter* %107, i32 0, i32 1
  %109 = load %struct.sg_splitter*, %struct.sg_splitter** %108, align 8
  %110 = bitcast %struct.sg_splitter* %109 to %struct.scatterlist*
  %111 = load %struct.scatterlist**, %struct.scatterlist*** %15, align 8
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.scatterlist*, %struct.scatterlist** %111, i64 %113
  store %struct.scatterlist* %110, %struct.scatterlist** %114, align 8
  %115 = load i32*, i32** %16, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %128

117:                                              ; preds = %103
  %118 = load %struct.sg_splitter*, %struct.sg_splitter** %20, align 8
  %119 = load i32, i32* %18, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.sg_splitter, %struct.sg_splitter* %118, i64 %120
  %122 = getelementptr inbounds %struct.sg_splitter, %struct.sg_splitter* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** %16, align 8
  %125 = load i32, i32* %18, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %123, i32* %127, align 4
  br label %128

128:                                              ; preds = %117, %103
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %18, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %18, align 4
  br label %99

132:                                              ; preds = %99
  %133 = load %struct.sg_splitter*, %struct.sg_splitter** %20, align 8
  %134 = call i32 @kfree(%struct.sg_splitter* %133)
  store i32 0, i32* %9, align 4
  br label %155

135:                                              ; preds = %93, %71, %42
  store i32 0, i32* %18, align 4
  br label %136

136:                                              ; preds = %148, %135
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %136
  %141 = load %struct.sg_splitter*, %struct.sg_splitter** %20, align 8
  %142 = load i32, i32* %18, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.sg_splitter, %struct.sg_splitter* %141, i64 %143
  %145 = getelementptr inbounds %struct.sg_splitter, %struct.sg_splitter* %144, i32 0, i32 1
  %146 = load %struct.sg_splitter*, %struct.sg_splitter** %145, align 8
  %147 = call i32 @kfree(%struct.sg_splitter* %146)
  br label %148

148:                                              ; preds = %140
  %149 = load i32, i32* %18, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %18, align 4
  br label %136

151:                                              ; preds = %136
  %152 = load %struct.sg_splitter*, %struct.sg_splitter** %20, align 8
  %153 = call i32 @kfree(%struct.sg_splitter* %152)
  %154 = load i32, i32* %19, align 4
  store i32 %154, i32* %9, align 4
  br label %155

155:                                              ; preds = %151, %132, %26
  %156 = load i32, i32* %9, align 4
  ret i32 %156
}

declare dso_local %struct.sg_splitter* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @sg_calculate_split(%struct.sg_splitter*, i32, i32, i32, i64*, %struct.sg_splitter*, i32) #1

declare dso_local i32 @sg_nents(%struct.sg_splitter*) #1

declare dso_local %struct.sg_splitter* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @sg_split_phys(%struct.sg_splitter*, i32) #1

declare dso_local i32 @sg_split_mapped(%struct.sg_splitter*, i32) #1

declare dso_local i32 @kfree(%struct.sg_splitter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
