; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_zs_object_copy.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_zs_object_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.size_class = type { i32 }
%struct.page = type { i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.size_class*, i64, i64)* @zs_object_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zs_object_copy(%struct.size_class* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.size_class*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.size_class* %0, %struct.size_class** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.size_class*, %struct.size_class** %4, align 8
  %20 = getelementptr inbounds %struct.size_class, %struct.size_class* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %16, align 4
  store i32 %21, i32* %15, align 4
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @obj_to_location(i64 %22, %struct.page** %7, i32* %9)
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @obj_to_location(i64 %24, %struct.page** %8, i32* %10)
  %26 = load %struct.size_class*, %struct.size_class** %4, align 8
  %27 = getelementptr inbounds %struct.size_class, %struct.size_class* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = mul i32 %28, %29
  %31 = load i32, i32* @PAGE_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = zext i32 %33 to i64
  store i64 %34, i64* %11, align 8
  %35 = load %struct.size_class*, %struct.size_class** %4, align 8
  %36 = getelementptr inbounds %struct.size_class, %struct.size_class* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = mul i32 %37, %38
  %40 = load i32, i32* @PAGE_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = zext i32 %42 to i64
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load %struct.size_class*, %struct.size_class** %4, align 8
  %46 = getelementptr inbounds %struct.size_class, %struct.size_class* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %44, %48
  %50 = load i64, i64* @PAGE_SIZE, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %3
  %53 = load i64, i64* @PAGE_SIZE, align 8
  %54 = load i64, i64* %11, align 8
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %52, %3
  %58 = load i64, i64* %12, align 8
  %59 = load %struct.size_class*, %struct.size_class** %4, align 8
  %60 = getelementptr inbounds %struct.size_class, %struct.size_class* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 %58, %62
  %64 = load i64, i64* @PAGE_SIZE, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = load i64, i64* @PAGE_SIZE, align 8
  %68 = load i64, i64* %12, align 8
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %16, align 4
  br label %71

71:                                               ; preds = %66, %57
  %72 = load %struct.page*, %struct.page** %7, align 8
  %73 = call i8* @kmap_atomic(%struct.page* %72)
  store i8* %73, i8** %13, align 8
  %74 = load %struct.page*, %struct.page** %8, align 8
  %75 = call i8* @kmap_atomic(%struct.page* %74)
  store i8* %75, i8** %14, align 8
  br label %76

76:                                               ; preds = %71, %147
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @min(i32 %77, i32 %78)
  store i32 %79, i32* %17, align 4
  %80 = load i8*, i8** %14, align 8
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr i8, i8* %80, i64 %81
  %83 = load i8*, i8** %13, align 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr i8, i8* %83, i64 %84
  %86 = load i32, i32* %17, align 4
  %87 = call i32 @memcpy(i8* %82, i8* %85, i32 %86)
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %18, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %18, align 4
  %91 = load i32, i32* %18, align 4
  %92 = load %struct.size_class*, %struct.size_class** %4, align 8
  %93 = getelementptr inbounds %struct.size_class, %struct.size_class* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %76
  br label %148

97:                                               ; preds = %76
  %98 = load i32, i32* %17, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %11, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %11, align 8
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %15, align 4
  %104 = sub nsw i32 %103, %102
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %17, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %12, align 8
  %108 = add i64 %107, %106
  store i64 %108, i64* %12, align 8
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %16, align 4
  %111 = sub nsw i32 %110, %109
  store i32 %111, i32* %16, align 4
  %112 = load i64, i64* %11, align 8
  %113 = load i64, i64* @PAGE_SIZE, align 8
  %114 = icmp uge i64 %112, %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %97
  %116 = load i8*, i8** %14, align 8
  %117 = call i32 @kunmap_atomic(i8* %116)
  %118 = load i8*, i8** %13, align 8
  %119 = call i32 @kunmap_atomic(i8* %118)
  %120 = load %struct.page*, %struct.page** %7, align 8
  %121 = call %struct.page* @get_next_page(%struct.page* %120)
  store %struct.page* %121, %struct.page** %7, align 8
  %122 = load %struct.page*, %struct.page** %7, align 8
  %123 = call i8* @kmap_atomic(%struct.page* %122)
  store i8* %123, i8** %13, align 8
  %124 = load %struct.page*, %struct.page** %8, align 8
  %125 = call i8* @kmap_atomic(%struct.page* %124)
  store i8* %125, i8** %14, align 8
  %126 = load %struct.size_class*, %struct.size_class** %4, align 8
  %127 = getelementptr inbounds %struct.size_class, %struct.size_class* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %18, align 4
  %130 = sub nsw i32 %128, %129
  store i32 %130, i32* %15, align 4
  store i64 0, i64* %11, align 8
  br label %131

131:                                              ; preds = %115, %97
  %132 = load i64, i64* %12, align 8
  %133 = load i64, i64* @PAGE_SIZE, align 8
  %134 = icmp uge i64 %132, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %131
  %136 = load i8*, i8** %14, align 8
  %137 = call i32 @kunmap_atomic(i8* %136)
  %138 = load %struct.page*, %struct.page** %8, align 8
  %139 = call %struct.page* @get_next_page(%struct.page* %138)
  store %struct.page* %139, %struct.page** %8, align 8
  %140 = load %struct.page*, %struct.page** %8, align 8
  %141 = call i8* @kmap_atomic(%struct.page* %140)
  store i8* %141, i8** %14, align 8
  %142 = load %struct.size_class*, %struct.size_class** %4, align 8
  %143 = getelementptr inbounds %struct.size_class, %struct.size_class* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %18, align 4
  %146 = sub nsw i32 %144, %145
  store i32 %146, i32* %16, align 4
  store i64 0, i64* %12, align 8
  br label %147

147:                                              ; preds = %135, %131
  br label %76

148:                                              ; preds = %96
  %149 = load i8*, i8** %14, align 8
  %150 = call i32 @kunmap_atomic(i8* %149)
  %151 = load i8*, i8** %13, align 8
  %152 = call i32 @kunmap_atomic(i8* %151)
  ret void
}

declare dso_local i32 @obj_to_location(i64, %struct.page**, i32*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local %struct.page* @get_next_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
