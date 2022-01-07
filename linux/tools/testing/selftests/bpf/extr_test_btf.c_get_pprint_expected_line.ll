; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_get_pprint_expected_line.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_get_pprint_expected_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pprint_mapv = type { i32, i32, i32, i32, i32, i32, i32*, i64, i32**, i32, i32 }
%struct.pprint_mapv_int128 = type { i32, i32, i64, i64, i64 }

@PPRINT_MAPV_KIND_BASIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"%s%u: {%u,0,%d,0x%x,0x%x,0x%x,{%lu|[%u,%u,%u,%u,%u,%u,%u,%u]},%s,%u,0x%x,[[%d,%d],[%d,%d]]}\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\09cpu\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pprint_enum_str = common dso_local global i32* null, align 8
@PPRINT_MAPV_KIND_INT128 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"%s%u: {0x%lx,0x%lx,0x%lx,0x%lx%016lx,0x%lx%016lx}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_pprint_expected_line(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.pprint_mapv*, align 8
  %17 = alloca %struct.pprint_mapv_int128*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  store i32 -1, i32* %15, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @PPRINT_MAPV_KIND_BASIC, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %137

21:                                               ; preds = %7
  %22 = load i8*, i8** %14, align 8
  %23 = bitcast i8* %22 to %struct.pprint_mapv*
  store %struct.pprint_mapv* %23, %struct.pprint_mapv** %16, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %13, align 4
  br label %36

34:                                               ; preds = %21
  %35 = load i32, i32* %12, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = load %struct.pprint_mapv*, %struct.pprint_mapv** %16, align 8
  %39 = getelementptr inbounds %struct.pprint_mapv, %struct.pprint_mapv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.pprint_mapv*, %struct.pprint_mapv** %16, align 8
  %42 = getelementptr inbounds %struct.pprint_mapv, %struct.pprint_mapv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pprint_mapv*, %struct.pprint_mapv** %16, align 8
  %45 = getelementptr inbounds %struct.pprint_mapv, %struct.pprint_mapv* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.pprint_mapv*, %struct.pprint_mapv** %16, align 8
  %48 = getelementptr inbounds %struct.pprint_mapv, %struct.pprint_mapv* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pprint_mapv*, %struct.pprint_mapv** %16, align 8
  %51 = getelementptr inbounds %struct.pprint_mapv, %struct.pprint_mapv* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.pprint_mapv*, %struct.pprint_mapv** %16, align 8
  %54 = getelementptr inbounds %struct.pprint_mapv, %struct.pprint_mapv* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.pprint_mapv*, %struct.pprint_mapv** %16, align 8
  %57 = getelementptr inbounds %struct.pprint_mapv, %struct.pprint_mapv* %56, i32 0, i32 6
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pprint_mapv*, %struct.pprint_mapv** %16, align 8
  %62 = getelementptr inbounds %struct.pprint_mapv, %struct.pprint_mapv* %61, i32 0, i32 6
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.pprint_mapv*, %struct.pprint_mapv** %16, align 8
  %67 = getelementptr inbounds %struct.pprint_mapv, %struct.pprint_mapv* %66, i32 0, i32 6
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.pprint_mapv*, %struct.pprint_mapv** %16, align 8
  %72 = getelementptr inbounds %struct.pprint_mapv, %struct.pprint_mapv* %71, i32 0, i32 6
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.pprint_mapv*, %struct.pprint_mapv** %16, align 8
  %77 = getelementptr inbounds %struct.pprint_mapv, %struct.pprint_mapv* %76, i32 0, i32 6
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.pprint_mapv*, %struct.pprint_mapv** %16, align 8
  %82 = getelementptr inbounds %struct.pprint_mapv, %struct.pprint_mapv* %81, i32 0, i32 6
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.pprint_mapv*, %struct.pprint_mapv** %16, align 8
  %87 = getelementptr inbounds %struct.pprint_mapv, %struct.pprint_mapv* %86, i32 0, i32 6
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 6
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.pprint_mapv*, %struct.pprint_mapv** %16, align 8
  %92 = getelementptr inbounds %struct.pprint_mapv, %struct.pprint_mapv* %91, i32 0, i32 6
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 7
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** @pprint_enum_str, align 8
  %97 = load %struct.pprint_mapv*, %struct.pprint_mapv** %16, align 8
  %98 = getelementptr inbounds %struct.pprint_mapv, %struct.pprint_mapv* %97, i32 0, i32 7
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.pprint_mapv*, %struct.pprint_mapv** %16, align 8
  %103 = getelementptr inbounds %struct.pprint_mapv, %struct.pprint_mapv* %102, i32 0, i32 10
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.pprint_mapv*, %struct.pprint_mapv** %16, align 8
  %106 = getelementptr inbounds %struct.pprint_mapv, %struct.pprint_mapv* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.pprint_mapv*, %struct.pprint_mapv** %16, align 8
  %109 = getelementptr inbounds %struct.pprint_mapv, %struct.pprint_mapv* %108, i32 0, i32 8
  %110 = load i32**, i32*** %109, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.pprint_mapv*, %struct.pprint_mapv** %16, align 8
  %116 = getelementptr inbounds %struct.pprint_mapv, %struct.pprint_mapv* %115, i32 0, i32 8
  %117 = load i32**, i32*** %116, align 8
  %118 = getelementptr inbounds i32*, i32** %117, i64 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.pprint_mapv*, %struct.pprint_mapv** %16, align 8
  %123 = getelementptr inbounds %struct.pprint_mapv, %struct.pprint_mapv* %122, i32 0, i32 8
  %124 = load i32**, i32*** %123, align 8
  %125 = getelementptr inbounds i32*, i32** %124, i64 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.pprint_mapv*, %struct.pprint_mapv** %16, align 8
  %130 = getelementptr inbounds %struct.pprint_mapv, %struct.pprint_mapv* %129, i32 0, i32 8
  %131 = load i32**, i32*** %130, align 8
  %132 = getelementptr inbounds i32*, i32** %131, i64 1
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) @snprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %37, i32 %40, i32 %43, i32 %46, i32 %49, i32 %52, i32 %55, i32 %60, i32 %65, i32 %70, i32 %75, i32 %80, i32 %85, i32 %90, i32 %95, i32 %101, i32 %104, i32 %107, i32 %114, i32 %121, i32 %128, i32 %135)
  store i32 %136, i32* %15, align 4
  br label %137

137:                                              ; preds = %36, %7
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @PPRINT_MAPV_KIND_INT128, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %185

141:                                              ; preds = %137
  %142 = load i8*, i8** %14, align 8
  %143 = bitcast i8* %142 to %struct.pprint_mapv_int128*
  store %struct.pprint_mapv_int128* %143, %struct.pprint_mapv_int128** %17, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %141
  %153 = load i32, i32* %13, align 4
  br label %156

154:                                              ; preds = %141
  %155 = load i32, i32* %12, align 4
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi i32 [ %153, %152 ], [ %155, %154 ]
  %158 = load %struct.pprint_mapv_int128*, %struct.pprint_mapv_int128** %17, align 8
  %159 = getelementptr inbounds %struct.pprint_mapv_int128, %struct.pprint_mapv_int128* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = trunc i64 %160 to i32
  %162 = load %struct.pprint_mapv_int128*, %struct.pprint_mapv_int128** %17, align 8
  %163 = getelementptr inbounds %struct.pprint_mapv_int128, %struct.pprint_mapv_int128* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = load %struct.pprint_mapv_int128*, %struct.pprint_mapv_int128** %17, align 8
  %167 = getelementptr inbounds %struct.pprint_mapv_int128, %struct.pprint_mapv_int128* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = trunc i64 %168 to i32
  %170 = load %struct.pprint_mapv_int128*, %struct.pprint_mapv_int128** %17, align 8
  %171 = getelementptr inbounds %struct.pprint_mapv_int128, %struct.pprint_mapv_int128* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = ashr i32 %172, 64
  %174 = load %struct.pprint_mapv_int128*, %struct.pprint_mapv_int128** %17, align 8
  %175 = getelementptr inbounds %struct.pprint_mapv_int128, %struct.pprint_mapv_int128* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.pprint_mapv_int128*, %struct.pprint_mapv_int128** %17, align 8
  %178 = getelementptr inbounds %struct.pprint_mapv_int128, %struct.pprint_mapv_int128* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = ashr i32 %179, 64
  %181 = load %struct.pprint_mapv_int128*, %struct.pprint_mapv_int128** %17, align 8
  %182 = getelementptr inbounds %struct.pprint_mapv_int128, %struct.pprint_mapv_int128* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) @snprintf(i8* %144, i32 %145, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %149, i32 %157, i32 %161, i32 %165, i32 %169, i32 %173, i32 %176, i32 %180, i32 %183)
  store i32 %184, i32* %15, align 4
  br label %185

185:                                              ; preds = %156, %137
  %186 = load i32, i32* %15, align 4
  ret i32 %186
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
