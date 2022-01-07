; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_idr-test.c_idr_null_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_idr-test.c_idr_null_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@idr = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DUMMY_PTR = common dso_local global i32* null, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @idr_null_test() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @idr, align 4
  %3 = call i32 @DEFINE_IDR(i32 %2)
  %4 = call i32 @idr_is_empty(i32* @idr)
  %5 = call i32 @assert(i32 %4)
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i32 @idr_alloc(i32* @idr, i32* null, i32 0, i32 0, i32 %6)
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = call i32 @idr_is_empty(i32* @idr)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = call i32 @idr_remove(i32* @idr, i32 0)
  %17 = call i32 @idr_is_empty(i32* @idr)
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @idr_alloc(i32* @idr, i32* null, i32 0, i32 0, i32 %19)
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = call i32 @idr_is_empty(i32* @idr)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = call i32 @idr_destroy(i32* @idr)
  %30 = call i32 @idr_is_empty(i32* @idr)
  %31 = call i32 @assert(i32 %30)
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %42, %0
  %33 = load i32, i32* %1, align 4
  %34 = icmp slt i32 %33, 10
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32 @idr_alloc(i32* @idr, i32* null, i32 0, i32 0, i32 %36)
  %38 = load i32, i32* %1, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  br label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %1, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %1, align 4
  br label %32

45:                                               ; preds = %32
  %46 = load i32*, i32** @DUMMY_PTR, align 8
  %47 = call i32* @idr_replace(i32* @idr, i32* %46, i32 3)
  %48 = icmp eq i32* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32*, i32** @DUMMY_PTR, align 8
  %52 = call i32* @idr_replace(i32* @idr, i32* %51, i32 4)
  %53 = icmp eq i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = call i32* @idr_replace(i32* @idr, i32* null, i32 4)
  %57 = load i32*, i32** @DUMMY_PTR, align 8
  %58 = icmp eq i32* %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32*, i32** @DUMMY_PTR, align 8
  %62 = call i32* @idr_replace(i32* @idr, i32* %61, i32 11)
  %63 = load i32, i32* @ENOENT, align 4
  %64 = sub nsw i32 0, %63
  %65 = call i32* @ERR_PTR(i32 %64)
  %66 = icmp eq i32* %62, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = call i32 @idr_remove(i32* @idr, i32 5)
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i32 @idr_alloc(i32* @idr, i32* null, i32 0, i32 0, i32 %70)
  %72 = icmp eq i32 %71, 5
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = call i32 @idr_remove(i32* @idr, i32 5)
  store i32 0, i32* %1, align 4
  br label %76

76:                                               ; preds = %87, %45
  %77 = load i32, i32* %1, align 4
  %78 = icmp slt i32 %77, 9
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load i32, i32* %1, align 4
  %81 = call i32 @idr_remove(i32* @idr, i32 %80)
  %82 = call i32 @idr_is_empty(i32* @idr)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  br label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %1, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %1, align 4
  br label %76

90:                                               ; preds = %76
  %91 = call i32 @idr_remove(i32* @idr, i32 8)
  %92 = call i32 @idr_is_empty(i32* @idr)
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = call i32 @idr_remove(i32* @idr, i32 9)
  %98 = call i32 @idr_is_empty(i32* @idr)
  %99 = call i32 @assert(i32 %98)
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call i32 @idr_alloc(i32* @idr, i32* null, i32 0, i32 0, i32 %100)
  %102 = icmp eq i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load i32*, i32** @DUMMY_PTR, align 8
  %106 = call i32* @idr_replace(i32* @idr, i32* %105, i32 3)
  %107 = load i32, i32* @ENOENT, align 4
  %108 = sub nsw i32 0, %107
  %109 = call i32* @ERR_PTR(i32 %108)
  %110 = icmp eq i32* %106, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load i32*, i32** @DUMMY_PTR, align 8
  %114 = call i32* @idr_replace(i32* @idr, i32* %113, i32 0)
  %115 = icmp eq i32* %114, null
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = call i32* @idr_replace(i32* @idr, i32* null, i32 0)
  %119 = load i32*, i32** @DUMMY_PTR, align 8
  %120 = icmp eq i32* %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = call i32 @idr_destroy(i32* @idr)
  %124 = call i32 @idr_is_empty(i32* @idr)
  %125 = call i32 @assert(i32 %124)
  store i32 1, i32* %1, align 4
  br label %126

126:                                              ; preds = %136, %90
  %127 = load i32, i32* %1, align 4
  %128 = icmp slt i32 %127, 10
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = load i32, i32* @GFP_KERNEL, align 4
  %131 = call i32 @idr_alloc(i32* @idr, i32* null, i32 1, i32 0, i32 %130)
  %132 = load i32, i32* %1, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  br label %136

136:                                              ; preds = %129
  %137 = load i32, i32* %1, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %1, align 4
  br label %126

139:                                              ; preds = %126
  %140 = call i32 @idr_destroy(i32* @idr)
  %141 = call i32 @idr_is_empty(i32* @idr)
  %142 = call i32 @assert(i32 %141)
  ret void
}

declare dso_local i32 @DEFINE_IDR(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @idr_is_empty(i32*) #1

declare dso_local i32 @idr_alloc(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32* @idr_replace(i32*, i32*, i32) #1

declare dso_local i32* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
