; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_stackdepot.c_stack_depot_save.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_stackdepot.c_stack_depot_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_record = type { %struct.TYPE_2__, %struct.stack_record* }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@stack_table = common dso_local global %struct.stack_record** null, align 8
@STACK_HASH_MASK = common dso_local global i64 0, align 8
@next_slab_inited = common dso_local global %struct.stack_record* null, align 8
@GFP_ZONEMASK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@STACK_ALLOC_ORDER = common dso_local global i32 0, align 4
@depot_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stack_depot_save(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stack_record*, align 8
  %8 = alloca %struct.stack_record**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.stack_record*, align 8
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.stack_record* null, %struct.stack_record** %7, align 8
  store i32 0, i32* %9, align 4
  store %struct.page* null, %struct.page** %10, align 8
  store i8* null, i8** %11, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %127

21:                                               ; preds = %3
  %22 = load i64*, i64** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @hash_stack(i64* %22, i32 %23)
  store i64 %24, i64* %13, align 8
  %25 = load %struct.stack_record**, %struct.stack_record*** @stack_table, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* @STACK_HASH_MASK, align 8
  %28 = and i64 %26, %27
  %29 = getelementptr inbounds %struct.stack_record*, %struct.stack_record** %25, i64 %28
  store %struct.stack_record** %29, %struct.stack_record*** %8, align 8
  %30 = load %struct.stack_record**, %struct.stack_record*** %8, align 8
  %31 = call %struct.stack_record* @smp_load_acquire(%struct.stack_record** %30)
  %32 = load i64*, i64** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i64, i64* %13, align 8
  %35 = call %struct.stack_record* @find_stack(%struct.stack_record* %31, i64* %32, i32 %33, i64 %34)
  store %struct.stack_record* %35, %struct.stack_record** %7, align 8
  %36 = load %struct.stack_record*, %struct.stack_record** %7, align 8
  %37 = icmp ne %struct.stack_record* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %21
  br label %110

39:                                               ; preds = %21
  %40 = call %struct.stack_record* @smp_load_acquire(%struct.stack_record** @next_slab_inited)
  %41 = icmp ne %struct.stack_record* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %39
  %47 = load i32, i32* @GFP_ZONEMASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @GFP_ATOMIC, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @__GFP_NOWARN, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @STACK_ALLOC_ORDER, align 4
  %61 = call %struct.page* @alloc_pages(i32 %59, i32 %60)
  store %struct.page* %61, %struct.page** %10, align 8
  %62 = load %struct.page*, %struct.page** %10, align 8
  %63 = icmp ne %struct.page* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %46
  %65 = load %struct.page*, %struct.page** %10, align 8
  %66 = call i8* @page_address(%struct.page* %65)
  store i8* %66, i8** %11, align 8
  br label %67

67:                                               ; preds = %64, %46
  br label %68

68:                                               ; preds = %67, %39
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @spin_lock_irqsave(i32* @depot_lock, i64 %69)
  %71 = load %struct.stack_record**, %struct.stack_record*** %8, align 8
  %72 = load %struct.stack_record*, %struct.stack_record** %71, align 8
  %73 = load i64*, i64** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i64, i64* %13, align 8
  %76 = call %struct.stack_record* @find_stack(%struct.stack_record* %72, i64* %73, i32 %74, i64 %75)
  store %struct.stack_record* %76, %struct.stack_record** %7, align 8
  %77 = load %struct.stack_record*, %struct.stack_record** %7, align 8
  %78 = icmp ne %struct.stack_record* %77, null
  br i1 %78, label %97, label %79

79:                                               ; preds = %68
  %80 = load i64*, i64** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i64, i64* %13, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call %struct.stack_record* @depot_alloc_stack(i64* %80, i32 %81, i64 %82, i8** %11, i32 %83)
  store %struct.stack_record* %84, %struct.stack_record** %14, align 8
  %85 = load %struct.stack_record*, %struct.stack_record** %14, align 8
  %86 = icmp ne %struct.stack_record* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %79
  %88 = load %struct.stack_record**, %struct.stack_record*** %8, align 8
  %89 = load %struct.stack_record*, %struct.stack_record** %88, align 8
  %90 = load %struct.stack_record*, %struct.stack_record** %14, align 8
  %91 = getelementptr inbounds %struct.stack_record, %struct.stack_record* %90, i32 0, i32 1
  store %struct.stack_record* %89, %struct.stack_record** %91, align 8
  %92 = load %struct.stack_record**, %struct.stack_record*** %8, align 8
  %93 = load %struct.stack_record*, %struct.stack_record** %14, align 8
  %94 = call i32 @smp_store_release(%struct.stack_record** %92, %struct.stack_record* %93)
  %95 = load %struct.stack_record*, %struct.stack_record** %14, align 8
  store %struct.stack_record* %95, %struct.stack_record** %7, align 8
  br label %96

96:                                               ; preds = %87, %79
  br label %107

97:                                               ; preds = %68
  %98 = load i8*, i8** %11, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = call i32 @init_stack_slab(i8** %11)
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i32 @WARN_ON(i32 %104)
  br label %106

106:                                              ; preds = %100, %97
  br label %107

107:                                              ; preds = %106, %96
  %108 = load i64, i64* %12, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* @depot_lock, i64 %108)
  br label %110

110:                                              ; preds = %107, %38
  %111 = load i8*, i8** %11, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i8*, i8** %11, align 8
  %115 = ptrtoint i8* %114 to i64
  %116 = load i32, i32* @STACK_ALLOC_ORDER, align 4
  %117 = call i32 @free_pages(i64 %115, i32 %116)
  br label %118

118:                                              ; preds = %113, %110
  %119 = load %struct.stack_record*, %struct.stack_record** %7, align 8
  %120 = icmp ne %struct.stack_record* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load %struct.stack_record*, %struct.stack_record** %7, align 8
  %123 = getelementptr inbounds %struct.stack_record, %struct.stack_record* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %121, %118
  br label %127

127:                                              ; preds = %126, %20
  %128 = load i32, i32* %9, align 4
  ret i32 %128
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @hash_stack(i64*, i32) #1

declare dso_local %struct.stack_record* @find_stack(%struct.stack_record*, i64*, i32, i64) #1

declare dso_local %struct.stack_record* @smp_load_acquire(%struct.stack_record**) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.stack_record* @depot_alloc_stack(i64*, i32, i64, i8**, i32) #1

declare dso_local i32 @smp_store_release(%struct.stack_record**, %struct.stack_record*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @init_stack_slab(i8**) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
