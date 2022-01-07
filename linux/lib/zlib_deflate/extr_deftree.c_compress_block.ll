; ModuleID = '/home/carl/AnghaBench/linux/lib/zlib_deflate/extr_deftree.c_compress_block.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zlib_deflate/extr_deftree.c_compress_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32*, i64, i64, i32 }
%struct.TYPE_10__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c" '%c' \00", align 1
@length_code = common dso_local global i32* null, align 8
@LITERALS = common dso_local global i32 0, align 4
@extra_lbits = common dso_local global i32* null, align 8
@base_length = common dso_local global i64* null, align 8
@D_CODES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"bad d_code\00", align 1
@extra_dbits = common dso_local global i32* null, align 8
@base_dist = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"pendingBuf overflow\00", align 1
@END_BLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_10__*)* @compress_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compress_block(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %139

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %132, %16
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %9, align 4
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %17
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = call i32 @send_code(%struct.TYPE_9__* %36, i64 %38, %struct.TYPE_10__* %39)
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @isgraph(i32 %41) #3
  %43 = load i32, i32* @stderr, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @Tracecv(i32 %42, i32 %44)
  br label %118

46:                                               ; preds = %17
  %47 = load i32*, i32** @length_code, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @LITERALS, align 4
  %55 = add i32 %53, %54
  %56 = add i32 %55, 1
  %57 = zext i32 %56 to i64
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = call i32 @send_code(%struct.TYPE_9__* %52, i64 %57, %struct.TYPE_10__* %58)
  %60 = load i32*, i32** @extra_lbits, align 8
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %46
  %68 = load i64*, i64** @base_length, align 8
  %69 = load i32, i32* %10, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %8, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @send_bits(%struct.TYPE_9__* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %67, %46
  %82 = load i32, i32* %7, align 4
  %83 = add i32 %82, -1
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @d_code(i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @D_CODES, align 4
  %88 = icmp ult i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @Assert(i32 %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = load i32, i32* %10, align 4
  %93 = zext i32 %92 to i64
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = call i32 @send_code(%struct.TYPE_9__* %91, i64 %93, %struct.TYPE_10__* %94)
  %96 = load i32*, i32** @extra_dbits, align 8
  %97 = load i32, i32* %10, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %81
  %104 = load i64*, i64** @base_dist, align 8
  %105 = load i32, i32* %10, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = zext i32 %109 to i64
  %111 = sub nsw i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %7, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @send_bits(%struct.TYPE_9__* %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %103, %81
  br label %118

118:                                              ; preds = %117, %35
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = mul i32 2, %125
  %127 = zext i32 %126 to i64
  %128 = add nsw i64 %124, %127
  %129 = icmp slt i64 %121, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @Assert(i32 %130, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %132

132:                                              ; preds = %118
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ult i32 %133, %136
  br i1 %137, label %17, label %138

138:                                              ; preds = %132
  br label %139

139:                                              ; preds = %138, %3
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %141 = load i64, i64* @END_BLOCK, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = call i32 @send_code(%struct.TYPE_9__* %140, i64 %141, %struct.TYPE_10__* %142)
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %145 = load i64, i64* @END_BLOCK, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 8
  ret void
}

declare dso_local i32 @send_code(%struct.TYPE_9__*, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @Tracecv(i32, i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isgraph(i32) #2

declare dso_local i32 @send_bits(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @d_code(i32) #1

declare dso_local i32 @Assert(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
