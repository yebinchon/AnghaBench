; ModuleID = '/home/carl/AnghaBench/linux/lib/lz4/extr_lz4_decompress.c_LZ4_decompress_safe_continue.c'
source_filename = "/home/carl/AnghaBench/linux/lib/lz4/extr_lz4_decompress.c_LZ4_decompress_safe_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32*, i32* }

@KB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LZ4_decompress_safe_continue(%struct.TYPE_5__* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %12, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %5
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @LZ4_decompress_safe(i8* %27, i8* %28, i32 %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %161

36:                                               ; preds = %20
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  br label %159

47:                                               ; preds = %5
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = icmp eq i32* %50, %52
  br i1 %53, label %54, label %115

54:                                               ; preds = %47
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @KB, align 4
  %59 = mul nsw i32 64, %58
  %60 = sub nsw i32 %59, 1
  %61 = icmp sge i32 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load i8*, i8** %8, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @LZ4_decompress_safe_withPrefix64k(i8* %63, i8* %64, i32 %65, i32 %66)
  store i32 %67, i32* %13, align 4
  br label %98

68:                                               ; preds = %54
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @LZ4_decompress_safe_withSmallPrefix(i8* %74, i8* %75, i32 %76, i32 %77, i32 %80)
  store i32 %81, i32* %13, align 4
  br label %97

82:                                               ; preds = %68
  %83 = load i8*, i8** %8, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @LZ4_decompress_safe_doubleDict(i8* %83, i8* %84, i32 %85, i32 %86, i32 %89, i32* %92, i32 %95)
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %82, %73
  br label %98

98:                                               ; preds = %97, %62
  %99 = load i32, i32* %13, align 4
  %100 = icmp sle i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %6, align 4
  br label %161

103:                                              ; preds = %98
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load i32, i32* %13, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = sext i32 %109 to i64
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32* %114, i32** %111, align 8
  br label %158

115:                                              ; preds = %47
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = sub i64 0, %127
  %129 = getelementptr inbounds i32, i32* %123, i64 %128
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 3
  store i32* %129, i32** %131, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @LZ4_decompress_safe_forceExtDict(i8* %132, i8* %133, i32 %134, i32 %135, i32* %138, i32 %141)
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp sle i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %115
  %146 = load i32, i32* %13, align 4
  store i32 %146, i32* %6, align 4
  br label %161

147:                                              ; preds = %115
  %148 = load i32, i32* %13, align 4
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load i8*, i8** %9, align 8
  %152 = bitcast i8* %151 to i32*
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  store i32* %155, i32** %157, align 8
  br label %158

158:                                              ; preds = %147, %103
  br label %159

159:                                              ; preds = %158, %36
  %160 = load i32, i32* %13, align 4
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %159, %145, %101, %34
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LZ4_decompress_safe(i8*, i8*, i32, i32) #1

declare dso_local i32 @LZ4_decompress_safe_withPrefix64k(i8*, i8*, i32, i32) #1

declare dso_local i32 @LZ4_decompress_safe_withSmallPrefix(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @LZ4_decompress_safe_doubleDict(i8*, i8*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @LZ4_decompress_safe_forceExtDict(i8*, i8*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
