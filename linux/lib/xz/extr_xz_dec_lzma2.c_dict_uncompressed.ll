; ModuleID = '/home/carl/AnghaBench/linux/lib/xz/extr_xz_dec_lzma2.c_dict_uncompressed.c'
source_filename = "/home/carl/AnghaBench/linux/lib/xz/extr_xz_dec_lzma2.c_dict_uncompressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dictionary = type { i64, i64, i64, i64, i64, i32 }
%struct.xz_buf = type { i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dictionary*, %struct.xz_buf*, i64*)* @dict_uncompressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dict_uncompressed(%struct.dictionary* %0, %struct.xz_buf* %1, i64* %2) #0 {
  %4 = alloca %struct.dictionary*, align 8
  %5 = alloca %struct.xz_buf*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store %struct.dictionary* %0, %struct.dictionary** %4, align 8
  store %struct.xz_buf* %1, %struct.xz_buf** %5, align 8
  store i64* %2, i64** %6, align 8
  br label %8

8:                                                ; preds = %144, %3
  %9 = load i64*, i64** %6, align 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ugt i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %14 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %17 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %12
  %21 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %22 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %25 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br label %28

28:                                               ; preds = %20, %12, %8
  %29 = phi i1 [ false, %12 ], [ false, %8 ], [ %27, %20 ]
  br i1 %29, label %30, label %160

30:                                               ; preds = %28
  %31 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %32 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %35 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %39 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %42 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = call i64 @min(i64 %37, i64 %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %48 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %51 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %49, %52
  %54 = icmp ugt i64 %46, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %30
  %56 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %57 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %60 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %58, %61
  store i64 %62, i64* %7, align 8
  br label %63

63:                                               ; preds = %55, %30
  %64 = load i64, i64* %7, align 8
  %65 = load i64*, i64** %6, align 8
  %66 = load i64, i64* %65, align 8
  %67 = icmp ugt i64 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i64*, i64** %6, align 8
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %7, align 8
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i64, i64* %7, align 8
  %73 = load i64*, i64** %6, align 8
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %74, %72
  store i64 %75, i64* %73, align 8
  %76 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %77 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %80 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %78, %81
  %83 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %84 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %87 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @memcpy(i64 %82, i64 %89, i64 %90)
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %94 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, %92
  store i64 %96, i64* %94, align 8
  %97 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %98 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %101 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ult i64 %99, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %71
  %105 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %106 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %109 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %108, i32 0, i32 3
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %104, %71
  %111 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %112 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @DEC_IS_MULTI(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %144

116:                                              ; preds = %110
  %117 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %118 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %121 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %119, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %126 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %124, %116
  %128 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %129 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %132 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %130, %133
  %135 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %136 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %139 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %137, %140
  %142 = load i64, i64* %7, align 8
  %143 = call i32 @memcpy(i64 %134, i64 %141, i64 %142)
  br label %144

144:                                              ; preds = %127, %110
  %145 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %146 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %149 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %148, i32 0, i32 4
  store i64 %147, i64* %149, align 8
  %150 = load i64, i64* %7, align 8
  %151 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %152 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = add i64 %153, %150
  store i64 %154, i64* %152, align 8
  %155 = load i64, i64* %7, align 8
  %156 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %157 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %158, %155
  store i64 %159, i64* %157, align 8
  br label %8

160:                                              ; preds = %28
  ret void
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i64 @DEC_IS_MULTI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
