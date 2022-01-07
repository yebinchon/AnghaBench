; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c___create_xol_area.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c___create_xol_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.xol_area = type { i64, %struct.xol_area*, i32**, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32**, i32* }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@UPROBE_SWBP_INSN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@UINSNS_PER_PAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"[uprobes]\00", align 1
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@UPROBE_SWBP_INSN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xol_area* (i64)* @__create_xol_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xol_area* @__create_xol_area(i64 %0) #0 {
  %2 = alloca %struct.xol_area*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xol_area*, align 8
  store i64 %0, i64* %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  store %struct.mm_struct* %9, %struct.mm_struct** %4, align 8
  %10 = load i32, i32* @UPROBE_SWBP_INSN, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.xol_area* @kmalloc(i32 56, i32 %11)
  store %struct.xol_area* %12, %struct.xol_area** %6, align 8
  %13 = load %struct.xol_area*, %struct.xol_area** %6, align 8
  %14 = icmp ne %struct.xol_area* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %104

20:                                               ; preds = %1
  %21 = load i32, i32* @UINSNS_PER_PAGE, align 4
  %22 = call i32 @BITS_TO_LONGS(i32 %21)
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.xol_area* @kcalloc(i32 %22, i32 8, i32 %23)
  %25 = load %struct.xol_area*, %struct.xol_area** %6, align 8
  %26 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %25, i32 0, i32 1
  store %struct.xol_area* %24, %struct.xol_area** %26, align 8
  %27 = load %struct.xol_area*, %struct.xol_area** %6, align 8
  %28 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %27, i32 0, i32 1
  %29 = load %struct.xol_area*, %struct.xol_area** %28, align 8
  %30 = icmp ne %struct.xol_area* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  br label %101

32:                                               ; preds = %20
  %33 = load %struct.xol_area*, %struct.xol_area** %6, align 8
  %34 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %35, align 8
  %36 = load %struct.xol_area*, %struct.xol_area** %6, align 8
  %37 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i32* null, i32** %38, align 8
  %39 = load %struct.xol_area*, %struct.xol_area** %6, align 8
  %40 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %39, i32 0, i32 2
  %41 = load i32**, i32*** %40, align 8
  %42 = load %struct.xol_area*, %struct.xol_area** %6, align 8
  %43 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32** %41, i32*** %44, align 8
  %45 = load i32, i32* @GFP_HIGHUSER, align 4
  %46 = call i32* @alloc_page(i32 %45)
  %47 = load %struct.xol_area*, %struct.xol_area** %6, align 8
  %48 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %47, i32 0, i32 2
  %49 = load i32**, i32*** %48, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 0
  store i32* %46, i32** %50, align 8
  %51 = load %struct.xol_area*, %struct.xol_area** %6, align 8
  %52 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %51, i32 0, i32 2
  %53 = load i32**, i32*** %52, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %32
  br label %96

58:                                               ; preds = %32
  %59 = load %struct.xol_area*, %struct.xol_area** %6, align 8
  %60 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %59, i32 0, i32 2
  %61 = load i32**, i32*** %60, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 1
  store i32* null, i32** %62, align 8
  %63 = load i64, i64* %3, align 8
  %64 = load %struct.xol_area*, %struct.xol_area** %6, align 8
  %65 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.xol_area*, %struct.xol_area** %6, align 8
  %67 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %66, i32 0, i32 4
  %68 = call i32 @init_waitqueue_head(i32* %67)
  %69 = load %struct.xol_area*, %struct.xol_area** %6, align 8
  %70 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %69, i32 0, i32 1
  %71 = load %struct.xol_area*, %struct.xol_area** %70, align 8
  %72 = call i32 @set_bit(i32 0, %struct.xol_area* %71)
  %73 = load %struct.xol_area*, %struct.xol_area** %6, align 8
  %74 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %73, i32 0, i32 3
  %75 = call i32 @atomic_set(i32* %74, i32 1)
  %76 = load %struct.xol_area*, %struct.xol_area** %6, align 8
  %77 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %76, i32 0, i32 2
  %78 = load i32**, i32*** %77, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* @UPROBE_SWBP_INSN_SIZE, align 4
  %82 = call i32 @arch_uprobe_copy_ixol(i32* %80, i32 0, i32* %5, i32 %81)
  %83 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %84 = load %struct.xol_area*, %struct.xol_area** %6, align 8
  %85 = call i32 @xol_add_vma(%struct.mm_struct* %83, %struct.xol_area* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %58
  %88 = load %struct.xol_area*, %struct.xol_area** %6, align 8
  store %struct.xol_area* %88, %struct.xol_area** %2, align 8
  br label %105

89:                                               ; preds = %58
  %90 = load %struct.xol_area*, %struct.xol_area** %6, align 8
  %91 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %90, i32 0, i32 2
  %92 = load i32**, i32*** %91, align 8
  %93 = getelementptr inbounds i32*, i32** %92, i64 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @__free_page(i32* %94)
  br label %96

96:                                               ; preds = %89, %57
  %97 = load %struct.xol_area*, %struct.xol_area** %6, align 8
  %98 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %97, i32 0, i32 1
  %99 = load %struct.xol_area*, %struct.xol_area** %98, align 8
  %100 = call i32 @kfree(%struct.xol_area* %99)
  br label %101

101:                                              ; preds = %96, %31
  %102 = load %struct.xol_area*, %struct.xol_area** %6, align 8
  %103 = call i32 @kfree(%struct.xol_area* %102)
  br label %104

104:                                              ; preds = %101, %19
  store %struct.xol_area* null, %struct.xol_area** %2, align 8
  br label %105

105:                                              ; preds = %104, %87
  %106 = load %struct.xol_area*, %struct.xol_area** %2, align 8
  ret %struct.xol_area* %106
}

declare dso_local %struct.xol_area* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.xol_area* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32* @alloc_page(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @set_bit(i32, %struct.xol_area*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @arch_uprobe_copy_ixol(i32*, i32, i32*, i32) #1

declare dso_local i32 @xol_add_vma(%struct.mm_struct*, %struct.xol_area*) #1

declare dso_local i32 @__free_page(i32*) #1

declare dso_local i32 @kfree(%struct.xol_area*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
