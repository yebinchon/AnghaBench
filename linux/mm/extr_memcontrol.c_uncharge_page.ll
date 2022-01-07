; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_uncharge_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_uncharge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32* }
%struct.uncharge_gather = type { i32, i32, i32, i32, %struct.page*, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.uncharge_gather*)* @uncharge_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uncharge_page(%struct.page* %0, %struct.uncharge_gather* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.uncharge_gather*, align 8
  %5 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.uncharge_gather* %1, %struct.uncharge_gather** %4, align 8
  %6 = load %struct.page*, %struct.page** %3, align 8
  %7 = call i32 @PageLRU(%struct.page* %6)
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = call i32 @VM_BUG_ON_PAGE(i32 %7, %struct.page* %8)
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = call i64 @page_count(%struct.page* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = call i32 @is_zone_device_page(%struct.page* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load %struct.page*, %struct.page** %3, align 8
  %19 = call i32 @PageHWPoison(%struct.page* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %17, %13, %2
  %23 = phi i1 [ false, %13 ], [ false, %2 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = load %struct.page*, %struct.page** %3, align 8
  %26 = call i32 @VM_BUG_ON_PAGE(i32 %24, %struct.page* %25)
  %27 = load %struct.page*, %struct.page** %3, align 8
  %28 = getelementptr inbounds %struct.page, %struct.page* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %118

32:                                               ; preds = %22
  %33 = load %struct.uncharge_gather*, %struct.uncharge_gather** %4, align 8
  %34 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %33, i32 0, i32 7
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.page*, %struct.page** %3, align 8
  %37 = getelementptr inbounds %struct.page, %struct.page* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %35, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %32
  %41 = load %struct.uncharge_gather*, %struct.uncharge_gather** %4, align 8
  %42 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %41, i32 0, i32 7
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.uncharge_gather*, %struct.uncharge_gather** %4, align 8
  %47 = call i32 @uncharge_batch(%struct.uncharge_gather* %46)
  %48 = load %struct.uncharge_gather*, %struct.uncharge_gather** %4, align 8
  %49 = call i32 @uncharge_gather_clear(%struct.uncharge_gather* %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.page*, %struct.page** %3, align 8
  %52 = getelementptr inbounds %struct.page, %struct.page* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.uncharge_gather*, %struct.uncharge_gather** %4, align 8
  %55 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %54, i32 0, i32 7
  store i32* %53, i32** %55, align 8
  br label %56

56:                                               ; preds = %50, %32
  %57 = load %struct.page*, %struct.page** %3, align 8
  %58 = call i32 @PageKmemcg(%struct.page* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %103, label %60

60:                                               ; preds = %56
  store i32 1, i32* %5, align 4
  %61 = load %struct.page*, %struct.page** %3, align 8
  %62 = call i64 @PageTransHuge(%struct.page* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load %struct.page*, %struct.page** %3, align 8
  %66 = call i32 @compound_nr(%struct.page* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.uncharge_gather*, %struct.uncharge_gather** %4, align 8
  %69 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %64, %60
  %73 = load %struct.page*, %struct.page** %3, align 8
  %74 = call i64 @PageAnon(%struct.page* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.uncharge_gather*, %struct.uncharge_gather** %4, align 8
  %79 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %98

82:                                               ; preds = %72
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.uncharge_gather*, %struct.uncharge_gather** %4, align 8
  %85 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = add i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.page*, %struct.page** %3, align 8
  %89 = call i64 @PageSwapBacked(%struct.page* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %82
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.uncharge_gather*, %struct.uncharge_gather** %4, align 8
  %94 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = add i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %91, %82
  br label %98

98:                                               ; preds = %97, %76
  %99 = load %struct.uncharge_gather*, %struct.uncharge_gather** %4, align 8
  %100 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %112

103:                                              ; preds = %56
  %104 = load %struct.page*, %struct.page** %3, align 8
  %105 = call i32 @compound_nr(%struct.page* %104)
  %106 = load %struct.uncharge_gather*, %struct.uncharge_gather** %4, align 8
  %107 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = add i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load %struct.page*, %struct.page** %3, align 8
  %111 = call i32 @__ClearPageKmemcg(%struct.page* %110)
  br label %112

112:                                              ; preds = %103, %98
  %113 = load %struct.page*, %struct.page** %3, align 8
  %114 = load %struct.uncharge_gather*, %struct.uncharge_gather** %4, align 8
  %115 = getelementptr inbounds %struct.uncharge_gather, %struct.uncharge_gather* %114, i32 0, i32 4
  store %struct.page* %113, %struct.page** %115, align 8
  %116 = load %struct.page*, %struct.page** %3, align 8
  %117 = getelementptr inbounds %struct.page, %struct.page* %116, i32 0, i32 0
  store i32* null, i32** %117, align 8
  br label %118

118:                                              ; preds = %112, %31
  ret void
}

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageLRU(%struct.page*) #1

declare dso_local i64 @page_count(%struct.page*) #1

declare dso_local i32 @is_zone_device_page(%struct.page*) #1

declare dso_local i32 @PageHWPoison(%struct.page*) #1

declare dso_local i32 @uncharge_batch(%struct.uncharge_gather*) #1

declare dso_local i32 @uncharge_gather_clear(%struct.uncharge_gather*) #1

declare dso_local i32 @PageKmemcg(%struct.page*) #1

declare dso_local i64 @PageTransHuge(%struct.page*) #1

declare dso_local i32 @compound_nr(%struct.page*) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i64 @PageSwapBacked(%struct.page*) #1

declare dso_local i32 @__ClearPageKmemcg(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
