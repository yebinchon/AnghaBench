; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_gup_benchmark.c___gup_benchmark_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_gup_benchmark.c___gup_benchmark_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gup_benchmark = type { i32, i32, i64, i32, i8*, i8* }
%struct.page = type { i32 }

@ULONG_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FOLL_LONGTERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.gup_benchmark*)* @__gup_benchmark_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__gup_benchmark_ioctl(i32 %0, %struct.gup_benchmark* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gup_benchmark*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.page**, align 8
  store i32 %0, i32* %4, align 4
  store %struct.gup_benchmark* %1, %struct.gup_benchmark** %5, align 8
  %14 = load %struct.gup_benchmark*, %struct.gup_benchmark** %5, align 8
  %15 = getelementptr inbounds %struct.gup_benchmark, %struct.gup_benchmark* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ULONG_MAX, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %190

22:                                               ; preds = %2
  %23 = load %struct.gup_benchmark*, %struct.gup_benchmark** %5, align 8
  %24 = getelementptr inbounds %struct.gup_benchmark, %struct.gup_benchmark* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = sdiv i32 %25, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.page** @kvcalloc(i64 %29, i32 8, i32 %30)
  store %struct.page** %31, %struct.page*** %13, align 8
  %32 = load %struct.page**, %struct.page*** %13, align 8
  %33 = icmp ne %struct.page** %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %190

37:                                               ; preds = %22
  store i64 0, i64* %8, align 8
  %38 = load %struct.gup_benchmark*, %struct.gup_benchmark** %5, align 8
  %39 = getelementptr inbounds %struct.gup_benchmark, %struct.gup_benchmark* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = call i32 (...) @ktime_get()
  store i32 %41, i32* %6, align 4
  %42 = load %struct.gup_benchmark*, %struct.gup_benchmark** %5, align 8
  %43 = getelementptr inbounds %struct.gup_benchmark, %struct.gup_benchmark* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %143, %37
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.gup_benchmark*, %struct.gup_benchmark** %5, align 8
  %48 = getelementptr inbounds %struct.gup_benchmark, %struct.gup_benchmark* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.gup_benchmark*, %struct.gup_benchmark** %5, align 8
  %51 = getelementptr inbounds %struct.gup_benchmark, %struct.gup_benchmark* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = add i64 %49, %53
  %55 = icmp ult i64 %46, %54
  br i1 %55, label %56, label %145

56:                                               ; preds = %45
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.gup_benchmark*, %struct.gup_benchmark** %5, align 8
  %59 = getelementptr inbounds %struct.gup_benchmark, %struct.gup_benchmark* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %145

63:                                               ; preds = %56
  %64 = load i64, i64* %10, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = add i64 %64, %68
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.gup_benchmark*, %struct.gup_benchmark** %5, align 8
  %72 = getelementptr inbounds %struct.gup_benchmark, %struct.gup_benchmark* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.gup_benchmark*, %struct.gup_benchmark** %5, align 8
  %75 = getelementptr inbounds %struct.gup_benchmark, %struct.gup_benchmark* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = add i64 %73, %77
  %79 = icmp ugt i64 %70, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %63
  %81 = load %struct.gup_benchmark*, %struct.gup_benchmark** %5, align 8
  %82 = getelementptr inbounds %struct.gup_benchmark, %struct.gup_benchmark* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.gup_benchmark*, %struct.gup_benchmark** %5, align 8
  %85 = getelementptr inbounds %struct.gup_benchmark, %struct.gup_benchmark* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = add i64 %83, %87
  store i64 %88, i64* %11, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* %10, align 8
  %91 = sub i64 %89, %90
  %92 = load i32, i32* @PAGE_SIZE, align 4
  %93 = sext i32 %92 to i64
  %94 = udiv i64 %91, %93
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %80, %63
  %97 = load i32, i32* %4, align 4
  switch i32 %97, label %133 [
    i32 129, label %98
    i32 128, label %109
    i32 130, label %122
  ]

98:                                               ; preds = %96
  %99 = load i64, i64* %10, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.gup_benchmark*, %struct.gup_benchmark** %5, align 8
  %102 = getelementptr inbounds %struct.gup_benchmark, %struct.gup_benchmark* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, 1
  %105 = load %struct.page**, %struct.page*** %13, align 8
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds %struct.page*, %struct.page** %105, i64 %106
  %108 = call i32 @get_user_pages_fast(i64 %99, i32 %100, i32 %104, %struct.page** %107)
  store i32 %108, i32* %12, align 4
  br label %134

109:                                              ; preds = %96
  %110 = load i64, i64* %10, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load %struct.gup_benchmark*, %struct.gup_benchmark** %5, align 8
  %113 = getelementptr inbounds %struct.gup_benchmark, %struct.gup_benchmark* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, 1
  %116 = load i32, i32* @FOLL_LONGTERM, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.page**, %struct.page*** %13, align 8
  %119 = load i64, i64* %8, align 8
  %120 = getelementptr inbounds %struct.page*, %struct.page** %118, i64 %119
  %121 = call i32 @get_user_pages(i64 %110, i32 %111, i32 %117, %struct.page** %120, i32* null)
  store i32 %121, i32* %12, align 4
  br label %134

122:                                              ; preds = %96
  %123 = load i64, i64* %10, align 8
  %124 = load i32, i32* %12, align 4
  %125 = load %struct.gup_benchmark*, %struct.gup_benchmark** %5, align 8
  %126 = getelementptr inbounds %struct.gup_benchmark, %struct.gup_benchmark* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, 1
  %129 = load %struct.page**, %struct.page*** %13, align 8
  %130 = load i64, i64* %8, align 8
  %131 = getelementptr inbounds %struct.page*, %struct.page** %129, i64 %130
  %132 = call i32 @get_user_pages(i64 %123, i32 %124, i32 %128, %struct.page** %131, i32* null)
  store i32 %132, i32* %12, align 4
  br label %134

133:                                              ; preds = %96
  store i32 -1, i32* %3, align 4
  br label %190

134:                                              ; preds = %122, %109, %98
  %135 = load i32, i32* %12, align 4
  %136 = icmp sle i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  br label %145

138:                                              ; preds = %134
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %8, align 8
  %142 = add i64 %141, %140
  store i64 %142, i64* %8, align 8
  br label %143

143:                                              ; preds = %138
  %144 = load i64, i64* %11, align 8
  store i64 %144, i64* %10, align 8
  br label %45

145:                                              ; preds = %137, %62, %45
  %146 = call i32 (...) @ktime_get()
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %6, align 4
  %149 = call i8* @ktime_us_delta(i32 %147, i32 %148)
  %150 = load %struct.gup_benchmark*, %struct.gup_benchmark** %5, align 8
  %151 = getelementptr inbounds %struct.gup_benchmark, %struct.gup_benchmark* %150, i32 0, i32 5
  store i8* %149, i8** %151, align 8
  %152 = load i64, i64* %10, align 8
  %153 = load %struct.gup_benchmark*, %struct.gup_benchmark** %5, align 8
  %154 = getelementptr inbounds %struct.gup_benchmark, %struct.gup_benchmark* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = sub i64 %152, %155
  %157 = trunc i64 %156 to i32
  %158 = load %struct.gup_benchmark*, %struct.gup_benchmark** %5, align 8
  %159 = getelementptr inbounds %struct.gup_benchmark, %struct.gup_benchmark* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = call i32 (...) @ktime_get()
  store i32 %160, i32* %6, align 4
  store i64 0, i64* %8, align 8
  br label %161

161:                                              ; preds = %178, %145
  %162 = load i64, i64* %8, align 8
  %163 = load i64, i64* %9, align 8
  %164 = icmp ult i64 %162, %163
  br i1 %164, label %165, label %181

165:                                              ; preds = %161
  %166 = load %struct.page**, %struct.page*** %13, align 8
  %167 = load i64, i64* %8, align 8
  %168 = getelementptr inbounds %struct.page*, %struct.page** %166, i64 %167
  %169 = load %struct.page*, %struct.page** %168, align 8
  %170 = icmp ne %struct.page* %169, null
  br i1 %170, label %172, label %171

171:                                              ; preds = %165
  br label %181

172:                                              ; preds = %165
  %173 = load %struct.page**, %struct.page*** %13, align 8
  %174 = load i64, i64* %8, align 8
  %175 = getelementptr inbounds %struct.page*, %struct.page** %173, i64 %174
  %176 = load %struct.page*, %struct.page** %175, align 8
  %177 = call i32 @put_page(%struct.page* %176)
  br label %178

178:                                              ; preds = %172
  %179 = load i64, i64* %8, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %8, align 8
  br label %161

181:                                              ; preds = %171, %161
  %182 = call i32 (...) @ktime_get()
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %6, align 4
  %185 = call i8* @ktime_us_delta(i32 %183, i32 %184)
  %186 = load %struct.gup_benchmark*, %struct.gup_benchmark** %5, align 8
  %187 = getelementptr inbounds %struct.gup_benchmark, %struct.gup_benchmark* %186, i32 0, i32 4
  store i8* %185, i8** %187, align 8
  %188 = load %struct.page**, %struct.page*** %13, align 8
  %189 = call i32 @kvfree(%struct.page** %188)
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %181, %133, %34, %19
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local %struct.page** @kvcalloc(i64, i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @get_user_pages_fast(i64, i32, i32, %struct.page**) #1

declare dso_local i32 @get_user_pages(i64, i32, i32, %struct.page**, i32*) #1

declare dso_local i8* @ktime_us_delta(i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @kvfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
