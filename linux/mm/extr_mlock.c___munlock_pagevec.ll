; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mlock.c___munlock_pagevec.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mlock.c___munlock_pagevec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pagevec = type { %struct.page** }
%struct.page = type { i32 }
%struct.zone = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NR_MLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pagevec*, %struct.zone*)* @__munlock_pagevec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__munlock_pagevec(%struct.pagevec* %0, %struct.zone* %1) #0 {
  %3 = alloca %struct.pagevec*, align 8
  %4 = alloca %struct.zone*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pagevec, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.page*, align 8
  store %struct.pagevec* %0, %struct.pagevec** %3, align 8
  store %struct.zone* %1, %struct.zone** %4, align 8
  %12 = load %struct.pagevec*, %struct.pagevec** %3, align 8
  %13 = call i32 @pagevec_count(%struct.pagevec* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %16 = call i32 @pagevec_init(%struct.pagevec* %8)
  %17 = load %struct.zone*, %struct.zone** %4, align 8
  %18 = getelementptr inbounds %struct.zone, %struct.zone* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_irq(i32* %20)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %64, %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %67

26:                                               ; preds = %22
  %27 = load %struct.pagevec*, %struct.pagevec** %3, align 8
  %28 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %27, i32 0, i32 0
  %29 = load %struct.page**, %struct.page*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.page*, %struct.page** %29, i64 %31
  %33 = load %struct.page*, %struct.page** %32, align 8
  store %struct.page* %33, %struct.page** %10, align 8
  %34 = load %struct.page*, %struct.page** %10, align 8
  %35 = call i64 @TestClearPageMlocked(%struct.page* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %26
  %38 = load %struct.page*, %struct.page** %10, align 8
  %39 = call i64 @__munlock_isolate_lru_page(%struct.page* %38, i32 0)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %64

42:                                               ; preds = %37
  %43 = load %struct.page*, %struct.page** %10, align 8
  %44 = call i32 @__munlock_isolation_failed(%struct.page* %43)
  br label %45

45:                                               ; preds = %42
  br label %49

46:                                               ; preds = %26
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %46, %45
  %50 = load %struct.pagevec*, %struct.pagevec** %3, align 8
  %51 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %50, i32 0, i32 0
  %52 = load %struct.page**, %struct.page*** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.page*, %struct.page** %52, i64 %54
  %56 = load %struct.page*, %struct.page** %55, align 8
  %57 = call i32 @pagevec_add(%struct.pagevec* %8, %struct.page* %56)
  %58 = load %struct.pagevec*, %struct.pagevec** %3, align 8
  %59 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %58, i32 0, i32 0
  %60 = load %struct.page**, %struct.page*** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.page*, %struct.page** %60, i64 %62
  store %struct.page* null, %struct.page** %63, align 8
  br label %64

64:                                               ; preds = %49, %41
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %22

67:                                               ; preds = %22
  %68 = load %struct.zone*, %struct.zone** %4, align 8
  %69 = load i32, i32* @NR_MLOCK, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @__mod_zone_page_state(%struct.zone* %68, i32 %69, i32 %70)
  %72 = load %struct.zone*, %struct.zone** %4, align 8
  %73 = getelementptr inbounds %struct.zone, %struct.zone* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock_irq(i32* %75)
  %77 = call i32 @pagevec_release(%struct.pagevec* %8)
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %109, %67
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %112

82:                                               ; preds = %78
  %83 = load %struct.pagevec*, %struct.pagevec** %3, align 8
  %84 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %83, i32 0, i32 0
  %85 = load %struct.page**, %struct.page*** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.page*, %struct.page** %85, i64 %87
  %89 = load %struct.page*, %struct.page** %88, align 8
  store %struct.page* %89, %struct.page** %11, align 8
  %90 = load %struct.page*, %struct.page** %11, align 8
  %91 = icmp ne %struct.page* %90, null
  br i1 %91, label %92, label %108

92:                                               ; preds = %82
  %93 = load %struct.page*, %struct.page** %11, align 8
  %94 = call i32 @lock_page(%struct.page* %93)
  %95 = load %struct.page*, %struct.page** %11, align 8
  %96 = call i32 @__putback_lru_fast_prepare(%struct.page* %95, %struct.pagevec* %8, i32* %9)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %92
  %99 = load %struct.page*, %struct.page** %11, align 8
  %100 = call i32 @get_page(%struct.page* %99)
  %101 = load %struct.page*, %struct.page** %11, align 8
  %102 = call i32 @__munlock_isolated_page(%struct.page* %101)
  %103 = load %struct.page*, %struct.page** %11, align 8
  %104 = call i32 @unlock_page(%struct.page* %103)
  %105 = load %struct.page*, %struct.page** %11, align 8
  %106 = call i32 @put_page(%struct.page* %105)
  br label %107

107:                                              ; preds = %98, %92
  br label %108

108:                                              ; preds = %107, %82
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %78

112:                                              ; preds = %78
  %113 = call i32 @pagevec_count(%struct.pagevec* %8)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @__putback_lru_fast(%struct.pagevec* %8, i32 %116)
  br label %118

118:                                              ; preds = %115, %112
  ret void
}

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local i32 @pagevec_init(%struct.pagevec*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @TestClearPageMlocked(%struct.page*) #1

declare dso_local i64 @__munlock_isolate_lru_page(%struct.page*, i32) #1

declare dso_local i32 @__munlock_isolation_failed(%struct.page*) #1

declare dso_local i32 @pagevec_add(%struct.pagevec*, %struct.page*) #1

declare dso_local i32 @__mod_zone_page_state(%struct.zone*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @__putback_lru_fast_prepare(%struct.page*, %struct.pagevec*, i32*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @__munlock_isolated_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @__putback_lru_fast(%struct.pagevec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
