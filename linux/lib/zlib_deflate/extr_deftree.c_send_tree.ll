; ModuleID = '/home/carl/AnghaBench/linux/lib/zlib_deflate/extr_deftree.c_send_tree.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zlib_deflate/extr_deftree.c_send_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c" 3_6?\00", align 1
@REP_3_6 = common dso_local global i32 0, align 4
@REPZ_3_10 = common dso_local global i32 0, align 4
@REPZ_11_138 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*, i32)* @send_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_tree(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %8, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 7, i32* %12, align 4
  store i32 4, i32* %13, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 138, i32* %12, align 4
  store i32 3, i32* %13, align 4
  br label %21

21:                                               ; preds = %20, %3
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %138, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %141

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %26
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %138

44:                                               ; preds = %39, %26
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %56, %48
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @send_code(%struct.TYPE_7__* %50, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %49, label %60

60:                                               ; preds = %56
  br label %124

61:                                               ; preds = %44
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %97

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @send_code(%struct.TYPE_7__* %69, i32 %70, i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %68, %64
  %78 = load i32, i32* %11, align 4
  %79 = icmp sge i32 %78, 3
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %11, align 4
  %82 = icmp sle i32 %81, 6
  br label %83

83:                                               ; preds = %80, %77
  %84 = phi i1 [ false, %77 ], [ %82, %80 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @Assert(i32 %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = load i32, i32* @REP_3_6, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @send_code(%struct.TYPE_7__* %87, i32 %88, i32 %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sub nsw i32 %94, 3
  %96 = call i32 @send_bits(%struct.TYPE_7__* %93, i32 %95, i32 2)
  br label %123

97:                                               ; preds = %61
  %98 = load i32, i32* %11, align 4
  %99 = icmp sle i32 %98, 10
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = load i32, i32* @REPZ_3_10, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @send_code(%struct.TYPE_7__* %101, i32 %102, i32 %105)
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sub nsw i32 %108, 3
  %110 = call i32 @send_bits(%struct.TYPE_7__* %107, i32 %109, i32 3)
  br label %122

111:                                              ; preds = %97
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %113 = load i32, i32* @REPZ_11_138, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @send_code(%struct.TYPE_7__* %112, i32 %113, i32 %116)
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sub nsw i32 %119, 11
  %121 = call i32 @send_bits(%struct.TYPE_7__* %118, i32 %120, i32 7)
  br label %122

122:                                              ; preds = %111, %100
  br label %123

123:                                              ; preds = %122, %83
  br label %124

124:                                              ; preds = %123, %60
  br label %125

125:                                              ; preds = %124
  store i32 0, i32* %11, align 4
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  store i32 138, i32* %12, align 4
  store i32 3, i32* %13, align 4
  br label %137

130:                                              ; preds = %125
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  store i32 6, i32* %12, align 4
  store i32 3, i32* %13, align 4
  br label %136

135:                                              ; preds = %130
  store i32 7, i32* %12, align 4
  store i32 4, i32* %13, align 4
  br label %136

136:                                              ; preds = %135, %134
  br label %137

137:                                              ; preds = %136, %129
  br label %138

138:                                              ; preds = %137, %43
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %22

141:                                              ; preds = %22
  ret void
}

declare dso_local i32 @send_code(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @Assert(i32, i8*) #1

declare dso_local i32 @send_bits(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
