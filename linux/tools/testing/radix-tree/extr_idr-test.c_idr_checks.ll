; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_idr-test.c_idr_checks.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_idr-test.c_idr_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32 }

@idr = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DUMMY_PTR = common dso_local global %struct.item* null, align 8
@item_idr_free = common dso_local global i32 0, align 4
@RADIX_TREE_MAP_SIZE = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @idr_checks() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.item*, align 8
  %3 = alloca %struct.item*, align 8
  %4 = alloca %struct.item*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.item*, align 8
  %7 = load i32, i32* @idr, align 4
  %8 = call i32 @DEFINE_IDR(i32 %7)
  store i64 0, i64* %1, align 8
  br label %9

9:                                                ; preds = %22, %0
  %10 = load i64, i64* %1, align 8
  %11 = icmp ult i64 %10, 10000
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load i64, i64* %1, align 8
  %14 = call %struct.item* @item_create(i64 %13, i32 0)
  store %struct.item* %14, %struct.item** %2, align 8
  %15 = load %struct.item*, %struct.item** %2, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i64 @idr_alloc(i32* @idr, %struct.item* %15, i32 0, i32 20000, i32 %16)
  %18 = load i64, i64* %1, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  br label %22

22:                                               ; preds = %12
  %23 = load i64, i64* %1, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %1, align 8
  br label %9

25:                                               ; preds = %9
  %26 = load %struct.item*, %struct.item** @DUMMY_PTR, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i64 @idr_alloc(i32* @idr, %struct.item* %26, i32 5, i32 30, i32 %27)
  %29 = icmp ult i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  store i64 0, i64* %1, align 8
  br label %32

32:                                               ; preds = %38, %25
  %33 = load i64, i64* %1, align 8
  %34 = icmp ult i64 %33, 5000
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i64, i64* %1, align 8
  %37 = call i32 @item_idr_remove(i32* @idr, i64 %36)
  br label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %1, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %1, align 8
  br label %32

41:                                               ; preds = %32
  %42 = call i32 @idr_remove(i32* @idr, i32 3)
  %43 = load i32, i32* @item_idr_free, align 4
  %44 = call i32 @idr_for_each(i32* @idr, i32 %43, i32* @idr)
  %45 = call i32 @idr_destroy(i32* @idr)
  %46 = call i32 @idr_is_empty(i32* @idr)
  %47 = call i32 @assert(i32 %46)
  %48 = call i32 @idr_remove(i32* @idr, i32 3)
  %49 = call i32 @idr_remove(i32* @idr, i32 0)
  %50 = load %struct.item*, %struct.item** @DUMMY_PTR, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i64 @idr_alloc(i32* @idr, %struct.item* %50, i32 0, i32 0, i32 %51)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = call i32 @idr_remove(i32* @idr, i32 1)
  store i64 1, i64* %1, align 8
  br label %57

57:                                               ; preds = %69, %41
  %58 = load i64, i64* %1, align 8
  %59 = load i64, i64* @RADIX_TREE_MAP_SIZE, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load %struct.item*, %struct.item** @DUMMY_PTR, align 8
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i64 @idr_alloc(i32* @idr, %struct.item* %62, i32 0, i32 0, i32 %63)
  %65 = load i64, i64* %1, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  br label %69

69:                                               ; preds = %61
  %70 = load i64, i64* %1, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %1, align 8
  br label %57

72:                                               ; preds = %57
  %73 = call i32 @idr_remove(i32* @idr, i32 1073741824)
  %74 = call i32 @idr_destroy(i32* @idr)
  %75 = load i64, i64* @INT_MAX, align 8
  %76 = sub i64 %75, 3
  store i64 %76, i64* %1, align 8
  br label %77

77:                                               ; preds = %97, %72
  %78 = load i64, i64* %1, align 8
  %79 = load i64, i64* @INT_MAX, align 8
  %80 = add i64 %79, 1
  %81 = icmp ult i64 %78, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %77
  %83 = load i64, i64* %1, align 8
  %84 = call %struct.item* @item_create(i64 %83, i32 0)
  store %struct.item* %84, %struct.item** %3, align 8
  %85 = load %struct.item*, %struct.item** %3, align 8
  %86 = load i64, i64* %1, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i64, i64* %1, align 8
  %89 = add i64 %88, 10
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call i64 @idr_alloc(i32* @idr, %struct.item* %85, i32 %87, i32 %90, i32 %91)
  %93 = load i64, i64* %1, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  br label %97

97:                                               ; preds = %82
  %98 = load i64, i64* %1, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %1, align 8
  br label %77

100:                                              ; preds = %77
  %101 = load %struct.item*, %struct.item** @DUMMY_PTR, align 8
  %102 = load i64, i64* %1, align 8
  %103 = sub i64 %102, 2
  %104 = trunc i64 %103 to i32
  %105 = load i64, i64* %1, align 8
  %106 = trunc i64 %105 to i32
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call i64 @idr_alloc(i32* @idr, %struct.item* %101, i32 %104, i32 %106, i32 %107)
  %109 = load i64, i64* @ENOSPC, align 8
  %110 = sub i64 0, %109
  %111 = icmp eq i64 %108, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load %struct.item*, %struct.item** @DUMMY_PTR, align 8
  %115 = load i64, i64* %1, align 8
  %116 = sub i64 %115, 2
  %117 = trunc i64 %116 to i32
  %118 = load i64, i64* %1, align 8
  %119 = add i64 %118, 10
  %120 = trunc i64 %119 to i32
  %121 = load i32, i32* @GFP_KERNEL, align 4
  %122 = call i64 @idr_alloc(i32* @idr, %struct.item* %114, i32 %117, i32 %120, i32 %121)
  %123 = load i64, i64* @ENOSPC, align 8
  %124 = sub i64 0, %123
  %125 = icmp eq i64 %122, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = load i32, i32* @item_idr_free, align 4
  %129 = call i32 @idr_for_each(i32* @idr, i32 %128, i32* @idr)
  %130 = call i32 @idr_destroy(i32* @idr)
  %131 = call i32 @idr_destroy(i32* @idr)
  %132 = call i32 @idr_is_empty(i32* @idr)
  %133 = call i32 @assert(i32 %132)
  %134 = load i64, i64* @INT_MAX, align 8
  %135 = sub i64 %134, 3
  %136 = call i32 @idr_set_cursor(i32* @idr, i64 %135)
  %137 = load i64, i64* @INT_MAX, align 8
  %138 = sub i64 %137, 3
  store i64 %138, i64* %1, align 8
  br label %139

139:                                              ; preds = %168, %100
  %140 = load i64, i64* %1, align 8
  %141 = load i64, i64* @INT_MAX, align 8
  %142 = add i64 %141, 3
  %143 = icmp ult i64 %140, %142
  br i1 %143, label %144, label %171

144:                                              ; preds = %139
  %145 = load i64, i64* %1, align 8
  %146 = load i64, i64* @INT_MAX, align 8
  %147 = icmp ule i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i64, i64* %1, align 8
  %150 = call %struct.item* @item_create(i64 %149, i32 0)
  store %struct.item* %150, %struct.item** %4, align 8
  br label %157

151:                                              ; preds = %144
  %152 = load i64, i64* %1, align 8
  %153 = load i64, i64* @INT_MAX, align 8
  %154 = sub i64 %152, %153
  %155 = sub i64 %154, 1
  %156 = call %struct.item* @item_create(i64 %155, i32 0)
  store %struct.item* %156, %struct.item** %4, align 8
  br label %157

157:                                              ; preds = %151, %148
  %158 = load %struct.item*, %struct.item** %4, align 8
  %159 = load i32, i32* @GFP_KERNEL, align 4
  %160 = call i32 @idr_alloc_cyclic(i32* @idr, %struct.item* %158, i32 0, i32 0, i32 %159)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = load %struct.item*, %struct.item** %4, align 8
  %163 = getelementptr inbounds %struct.item, %struct.item* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %161, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @assert(i32 %166)
  br label %168

168:                                              ; preds = %157
  %169 = load i64, i64* %1, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %1, align 8
  br label %139

171:                                              ; preds = %139
  %172 = load i32, i32* @item_idr_free, align 4
  %173 = call i32 @idr_for_each(i32* @idr, i32 %172, i32* @idr)
  %174 = call i32 @idr_destroy(i32* @idr)
  %175 = call i32 @idr_is_empty(i32* @idr)
  %176 = call i32 @assert(i32 %175)
  store i64 1, i64* %1, align 8
  br label %177

177:                                              ; preds = %190, %171
  %178 = load i64, i64* %1, align 8
  %179 = icmp ult i64 %178, 10000
  br i1 %179, label %180, label %193

180:                                              ; preds = %177
  %181 = load i64, i64* %1, align 8
  %182 = call %struct.item* @item_create(i64 %181, i32 0)
  store %struct.item* %182, %struct.item** %6, align 8
  %183 = load %struct.item*, %struct.item** %6, align 8
  %184 = load i32, i32* @GFP_KERNEL, align 4
  %185 = call i64 @idr_alloc(i32* @idr, %struct.item* %183, i32 1, i32 20000, i32 %184)
  %186 = load i64, i64* %1, align 8
  %187 = icmp eq i64 %185, %186
  %188 = zext i1 %187 to i32
  %189 = call i32 @assert(i32 %188)
  br label %190

190:                                              ; preds = %180
  %191 = load i64, i64* %1, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %1, align 8
  br label %177

193:                                              ; preds = %177
  %194 = load i32, i32* @item_idr_free, align 4
  %195 = call i32 @idr_for_each(i32* @idr, i32 %194, i32* @idr)
  %196 = call i32 @idr_destroy(i32* @idr)
  %197 = call i32 (...) @idr_replace_test()
  %198 = call i32 (...) @idr_alloc_test()
  %199 = call i32 (...) @idr_null_test()
  %200 = call i32 (...) @idr_nowait_test()
  %201 = call i32 @idr_get_next_test(i32 0)
  %202 = call i32 @idr_get_next_test(i32 1)
  %203 = call i32 @idr_get_next_test(i32 4)
  %204 = call i32 @idr_u32_test(i32 4)
  %205 = call i32 @idr_u32_test(i32 1)
  %206 = call i32 @idr_u32_test(i32 0)
  %207 = call i32 @idr_align_test(i32* @idr)
  %208 = call i32 (...) @idr_find_test()
  ret void
}

declare dso_local i32 @DEFINE_IDR(i32) #1

declare dso_local %struct.item* @item_create(i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @idr_alloc(i32*, %struct.item*, i32, i32, i32) #1

declare dso_local i32 @item_idr_remove(i32*, i64) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @idr_for_each(i32*, i32, i32*) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @idr_is_empty(i32*) #1

declare dso_local i32 @idr_set_cursor(i32*, i64) #1

declare dso_local i32 @idr_alloc_cyclic(i32*, %struct.item*, i32, i32, i32) #1

declare dso_local i32 @idr_replace_test(...) #1

declare dso_local i32 @idr_alloc_test(...) #1

declare dso_local i32 @idr_null_test(...) #1

declare dso_local i32 @idr_nowait_test(...) #1

declare dso_local i32 @idr_get_next_test(i32) #1

declare dso_local i32 @idr_u32_test(i32) #1

declare dso_local i32 @idr_align_test(i32*) #1

declare dso_local i32 @idr_find_test(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
