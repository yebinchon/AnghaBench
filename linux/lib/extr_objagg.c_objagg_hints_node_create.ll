; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_hints_node_create.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_hints_node_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg_hints = type { i32, i32, i32, i32, i32 }
%struct.objagg_obj = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.objagg_hints_node = type { %struct.objagg_hints_node*, i32, i32, %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { i32, %struct.objagg_obj*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.objagg_hints_node* (%struct.objagg_hints*, %struct.objagg_obj*, i64, %struct.objagg_hints_node*)* @objagg_hints_node_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.objagg_hints_node* @objagg_hints_node_create(%struct.objagg_hints* %0, %struct.objagg_obj* %1, i64 %2, %struct.objagg_hints_node* %3) #0 {
  %5 = alloca %struct.objagg_hints_node*, align 8
  %6 = alloca %struct.objagg_hints*, align 8
  %7 = alloca %struct.objagg_obj*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.objagg_hints_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.objagg_hints_node*, align 8
  %12 = alloca i32, align 4
  store %struct.objagg_hints* %0, %struct.objagg_hints** %6, align 8
  store %struct.objagg_obj* %1, %struct.objagg_obj** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.objagg_hints_node* %3, %struct.objagg_hints_node** %9, align 8
  %13 = load %struct.objagg_obj*, %struct.objagg_obj** %7, align 8
  %14 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i64, i64* %8, align 8
  %18 = add i64 56, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.objagg_hints_node* @kzalloc(i32 %19, i32 %20)
  store %struct.objagg_hints_node* %21, %struct.objagg_hints_node** %11, align 8
  %22 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %11, align 8
  %23 = icmp ne %struct.objagg_hints_node* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.objagg_hints_node* @ERR_PTR(i32 %26)
  store %struct.objagg_hints_node* %27, %struct.objagg_hints_node** %5, align 8
  br label %102

28:                                               ; preds = %4
  %29 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %11, align 8
  %30 = getelementptr inbounds %struct.objagg_hints_node, %struct.objagg_hints_node* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.objagg_obj*, %struct.objagg_obj** %7, align 8
  %33 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %32, i32 0, i32 0
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @memcpy(i32 %31, i32* %33, i64 %34)
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %11, align 8
  %38 = getelementptr inbounds %struct.objagg_hints_node, %struct.objagg_hints_node* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %11, align 8
  %43 = getelementptr inbounds %struct.objagg_hints_node, %struct.objagg_hints_node* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 4
  %46 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %9, align 8
  %47 = icmp ne %struct.objagg_hints_node* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %28
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %9, align 8
  %51 = getelementptr inbounds %struct.objagg_hints_node, %struct.objagg_hints_node* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add i32 %54, %49
  store i32 %55, i32* %53, align 4
  br label %67

56:                                               ; preds = %28
  %57 = load %struct.objagg_hints*, %struct.objagg_hints** %6, align 8
  %58 = getelementptr inbounds %struct.objagg_hints, %struct.objagg_hints* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = sext i32 %59 to i64
  %62 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %11, align 8
  %63 = getelementptr inbounds %struct.objagg_hints_node, %struct.objagg_hints_node* %62, i32 0, i32 4
  store i64 %61, i64* %63, align 8
  %64 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %11, align 8
  %65 = getelementptr inbounds %struct.objagg_hints_node, %struct.objagg_hints_node* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %56, %48
  %68 = load %struct.objagg_obj*, %struct.objagg_obj** %7, align 8
  %69 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %11, align 8
  %70 = getelementptr inbounds %struct.objagg_hints_node, %struct.objagg_hints_node* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store %struct.objagg_obj* %68, %struct.objagg_obj** %71, align 8
  %72 = load %struct.objagg_hints*, %struct.objagg_hints** %6, align 8
  %73 = getelementptr inbounds %struct.objagg_hints, %struct.objagg_hints* %72, i32 0, i32 3
  %74 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %11, align 8
  %75 = getelementptr inbounds %struct.objagg_hints_node, %struct.objagg_hints_node* %74, i32 0, i32 2
  %76 = load %struct.objagg_hints*, %struct.objagg_hints** %6, align 8
  %77 = getelementptr inbounds %struct.objagg_hints, %struct.objagg_hints* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @rhashtable_insert_fast(i32* %73, i32* %75, i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %67
  br label %97

83:                                               ; preds = %67
  %84 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %11, align 8
  %85 = getelementptr inbounds %struct.objagg_hints_node, %struct.objagg_hints_node* %84, i32 0, i32 1
  %86 = load %struct.objagg_hints*, %struct.objagg_hints** %6, align 8
  %87 = getelementptr inbounds %struct.objagg_hints, %struct.objagg_hints* %86, i32 0, i32 1
  %88 = call i32 @list_add(i32* %85, i32* %87)
  %89 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %9, align 8
  %90 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %11, align 8
  %91 = getelementptr inbounds %struct.objagg_hints_node, %struct.objagg_hints_node* %90, i32 0, i32 0
  store %struct.objagg_hints_node* %89, %struct.objagg_hints_node** %91, align 8
  %92 = load %struct.objagg_hints*, %struct.objagg_hints** %6, align 8
  %93 = getelementptr inbounds %struct.objagg_hints, %struct.objagg_hints* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %11, align 8
  store %struct.objagg_hints_node* %96, %struct.objagg_hints_node** %5, align 8
  br label %102

97:                                               ; preds = %82
  %98 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %11, align 8
  %99 = call i32 @kfree(%struct.objagg_hints_node* %98)
  %100 = load i32, i32* %12, align 4
  %101 = call %struct.objagg_hints_node* @ERR_PTR(i32 %100)
  store %struct.objagg_hints_node* %101, %struct.objagg_hints_node** %5, align 8
  br label %102

102:                                              ; preds = %97, %83, %24
  %103 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %5, align 8
  ret %struct.objagg_hints_node* %103
}

declare dso_local %struct.objagg_hints_node* @kzalloc(i32, i32) #1

declare dso_local %struct.objagg_hints_node* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @rhashtable_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.objagg_hints_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
