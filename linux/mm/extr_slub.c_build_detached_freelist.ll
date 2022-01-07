; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slub.c_build_detached_freelist.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slub.c_build_detached_freelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }
%struct.detached_freelist = type { i32, i32*, i32, %struct.page*, i8* }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmem_cache*, i64, i8**, %struct.detached_freelist*)* @build_detached_freelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_detached_freelist(%struct.kmem_cache* %0, i64 %1, i8** %2, %struct.detached_freelist* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kmem_cache*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.detached_freelist*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.page*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store %struct.detached_freelist* %3, %struct.detached_freelist** %9, align 8
  store i64 0, i64* %10, align 8
  store i32 3, i32* %11, align 4
  %14 = load %struct.detached_freelist*, %struct.detached_freelist** %9, align 8
  %15 = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %14, i32 0, i32 3
  store %struct.page* null, %struct.page** %15, align 8
  br label %16

16:                                               ; preds = %28, %4
  %17 = load i8**, i8*** %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = add i64 %18, -1
  store i64 %19, i64* %7, align 8
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %12, align 8
  br label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** %12, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i1 [ false, %22 ], [ %27, %25 ]
  br i1 %29, label %16, label %30

30:                                               ; preds = %28
  %31 = load i8*, i8** %12, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %152

34:                                               ; preds = %30
  %35 = load i8*, i8** %12, align 8
  %36 = call %struct.page* @virt_to_head_page(i8* %35)
  store %struct.page* %36, %struct.page** %13, align 8
  %37 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %38 = icmp ne %struct.kmem_cache* %37, null
  br i1 %38, label %71, label %39

39:                                               ; preds = %34
  %40 = load %struct.page*, %struct.page** %13, align 8
  %41 = call i32 @PageSlab(%struct.page* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %39
  %48 = load %struct.page*, %struct.page** %13, align 8
  %49 = call i32 @PageCompound(%struct.page* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @kfree_hook(i8* %54)
  %56 = load %struct.page*, %struct.page** %13, align 8
  %57 = load %struct.page*, %struct.page** %13, align 8
  %58 = call i32 @compound_order(%struct.page* %57)
  %59 = call i32 @__free_pages(%struct.page* %56, i32 %58)
  %60 = load i8**, i8*** %8, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i8*, i8** %60, i64 %61
  store i8* null, i8** %62, align 8
  %63 = load i64, i64* %7, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %5, align 4
  br label %152

65:                                               ; preds = %39
  %66 = load %struct.page*, %struct.page** %13, align 8
  %67 = getelementptr inbounds %struct.page, %struct.page* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.detached_freelist*, %struct.detached_freelist** %9, align 8
  %70 = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  br label %77

71:                                               ; preds = %34
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @cache_from_obj(%struct.kmem_cache* %72, i8* %73)
  %75 = load %struct.detached_freelist*, %struct.detached_freelist** %9, align 8
  %76 = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %71, %65
  %78 = load %struct.page*, %struct.page** %13, align 8
  %79 = load %struct.detached_freelist*, %struct.detached_freelist** %9, align 8
  %80 = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %79, i32 0, i32 3
  store %struct.page* %78, %struct.page** %80, align 8
  %81 = load %struct.detached_freelist*, %struct.detached_freelist** %9, align 8
  %82 = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = call i32 @set_freepointer(i32 %83, i8* %84, i32* null)
  %86 = load i8*, i8** %12, align 8
  %87 = load %struct.detached_freelist*, %struct.detached_freelist** %9, align 8
  %88 = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %87, i32 0, i32 4
  store i8* %86, i8** %88, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = bitcast i8* %89 to i32*
  %91 = load %struct.detached_freelist*, %struct.detached_freelist** %9, align 8
  %92 = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %91, i32 0, i32 1
  store i32* %90, i32** %92, align 8
  %93 = load i8**, i8*** %8, align 8
  %94 = load i64, i64* %7, align 8
  %95 = getelementptr inbounds i8*, i8** %93, i64 %94
  store i8* null, i8** %95, align 8
  %96 = load %struct.detached_freelist*, %struct.detached_freelist** %9, align 8
  %97 = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  br label %98

98:                                               ; preds = %148, %117, %109, %77
  %99 = load i64, i64* %7, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %149

101:                                              ; preds = %98
  %102 = load i8**, i8*** %8, align 8
  %103 = load i64, i64* %7, align 8
  %104 = add i64 %103, -1
  store i64 %104, i64* %7, align 8
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  store i8* %106, i8** %12, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %101
  br label %98

110:                                              ; preds = %101
  %111 = load %struct.detached_freelist*, %struct.detached_freelist** %9, align 8
  %112 = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %111, i32 0, i32 3
  %113 = load %struct.page*, %struct.page** %112, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = call %struct.page* @virt_to_head_page(i8* %114)
  %116 = icmp eq %struct.page* %113, %115
  br i1 %116, label %117, label %137

117:                                              ; preds = %110
  %118 = load %struct.detached_freelist*, %struct.detached_freelist** %9, align 8
  %119 = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = load %struct.detached_freelist*, %struct.detached_freelist** %9, align 8
  %123 = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @set_freepointer(i32 %120, i8* %121, i32* %124)
  %126 = load i8*, i8** %12, align 8
  %127 = bitcast i8* %126 to i32*
  %128 = load %struct.detached_freelist*, %struct.detached_freelist** %9, align 8
  %129 = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %128, i32 0, i32 1
  store i32* %127, i32** %129, align 8
  %130 = load %struct.detached_freelist*, %struct.detached_freelist** %9, align 8
  %131 = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 8
  %134 = load i8**, i8*** %8, align 8
  %135 = load i64, i64* %7, align 8
  %136 = getelementptr inbounds i8*, i8** %134, i64 %135
  store i8* null, i8** %136, align 8
  br label %98

137:                                              ; preds = %110
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %137
  br label %149

142:                                              ; preds = %137
  %143 = load i64, i64* %10, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load i64, i64* %7, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %10, align 8
  br label %148

148:                                              ; preds = %145, %142
  br label %98

149:                                              ; preds = %141, %98
  %150 = load i64, i64* %10, align 8
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %149, %47, %33
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local %struct.page* @virt_to_head_page(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageSlab(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local i32 @kfree_hook(i8*) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @compound_order(%struct.page*) #1

declare dso_local i32 @cache_from_obj(%struct.kmem_cache*, i8*) #1

declare dso_local i32 @set_freepointer(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
