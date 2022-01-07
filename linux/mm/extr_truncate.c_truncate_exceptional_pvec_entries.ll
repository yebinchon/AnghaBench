; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_truncate.c_truncate_exceptional_pvec_entries.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_truncate.c_truncate_exceptional_pvec_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.pagevec = type { i32, %struct.page** }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.address_space*, %struct.pagevec*, i64*, i64)* @truncate_exceptional_pvec_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @truncate_exceptional_pvec_entries(%struct.address_space* %0, %struct.pagevec* %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.pagevec*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i64, align 8
  store %struct.address_space* %0, %struct.address_space** %5, align 8
  store %struct.pagevec* %1, %struct.pagevec** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.address_space*, %struct.address_space** %5, align 8
  %16 = call i64 @shmem_mapping(%struct.address_space* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %132

19:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %37, %19
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.pagevec*, %struct.pagevec** %6, align 8
  %23 = call i32 @pagevec_count(%struct.pagevec* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load %struct.pagevec*, %struct.pagevec** %6, align 8
  %27 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %26, i32 0, i32 1
  %28 = load %struct.page**, %struct.page*** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.page*, %struct.page** %28, i64 %30
  %32 = load %struct.page*, %struct.page** %31, align 8
  %33 = call i64 @xa_is_value(%struct.page* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %40

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %20

40:                                               ; preds = %35, %20
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.pagevec*, %struct.pagevec** %6, align 8
  %43 = call i32 @pagevec_count(%struct.pagevec* %42)
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %132

46:                                               ; preds = %40
  %47 = load %struct.address_space*, %struct.address_space** %5, align 8
  %48 = call i32 @dax_mapping(%struct.address_space* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = load i64*, i64** %7, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp slt i64 %56, %57
  br label %59

59:                                               ; preds = %51, %46
  %60 = phi i1 [ false, %46 ], [ %58, %51 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.address_space*, %struct.address_space** %5, align 8
  %66 = getelementptr inbounds %struct.address_space, %struct.address_space* %65, i32 0, i32 0
  %67 = call i32 @xa_lock_irq(i32* %66)
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %118, %68
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.pagevec*, %struct.pagevec** %6, align 8
  %73 = call i32 @pagevec_count(%struct.pagevec* %72)
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %121

75:                                               ; preds = %70
  %76 = load %struct.pagevec*, %struct.pagevec** %6, align 8
  %77 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %76, i32 0, i32 1
  %78 = load %struct.page**, %struct.page*** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.page*, %struct.page** %78, i64 %80
  %82 = load %struct.page*, %struct.page** %81, align 8
  store %struct.page* %82, %struct.page** %13, align 8
  %83 = load i64*, i64** %7, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %14, align 8
  %88 = load %struct.page*, %struct.page** %13, align 8
  %89 = call i64 @xa_is_value(%struct.page* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %75
  %92 = load %struct.page*, %struct.page** %13, align 8
  %93 = load %struct.pagevec*, %struct.pagevec** %6, align 8
  %94 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %93, i32 0, i32 1
  %95 = load %struct.page**, %struct.page*** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds %struct.page*, %struct.page** %95, i64 %98
  store %struct.page* %92, %struct.page** %99, align 8
  br label %118

100:                                              ; preds = %75
  %101 = load i64, i64* %14, align 8
  %102 = load i64, i64* %8, align 8
  %103 = icmp sge i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %118

105:                                              ; preds = %100
  %106 = load i32, i32* %11, align 4
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load %struct.address_space*, %struct.address_space** %5, align 8
  %111 = load i64, i64* %14, align 8
  %112 = call i32 @dax_delete_mapping_entry(%struct.address_space* %110, i64 %111)
  br label %118

113:                                              ; preds = %105
  %114 = load %struct.address_space*, %struct.address_space** %5, align 8
  %115 = load i64, i64* %14, align 8
  %116 = load %struct.page*, %struct.page** %13, align 8
  %117 = call i32 @__clear_shadow_entry(%struct.address_space* %114, i64 %115, %struct.page* %116)
  br label %118

118:                                              ; preds = %113, %109, %104, %91
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %70

121:                                              ; preds = %70
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load %struct.address_space*, %struct.address_space** %5, align 8
  %126 = getelementptr inbounds %struct.address_space, %struct.address_space* %125, i32 0, i32 0
  %127 = call i32 @xa_unlock_irq(i32* %126)
  br label %128

128:                                              ; preds = %124, %121
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.pagevec*, %struct.pagevec** %6, align 8
  %131 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %128, %45, %18
  ret void
}

declare dso_local i64 @shmem_mapping(%struct.address_space*) #1

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local i64 @xa_is_value(%struct.page*) #1

declare dso_local i32 @dax_mapping(%struct.address_space*) #1

declare dso_local i32 @xa_lock_irq(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dax_delete_mapping_entry(%struct.address_space*, i64) #1

declare dso_local i32 @__clear_shadow_entry(%struct.address_space*, i64, %struct.page*) #1

declare dso_local i32 @xa_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
