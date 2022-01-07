; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_do_read_cache_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_do_read_cache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i8*, %struct.page*)* }

@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.address_space*, i32, i32 (i8*, %struct.page*)*, i8*, i32)* @do_read_cache_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @do_read_cache_page(%struct.address_space* %0, i32 %1, i32 (i8*, %struct.page*)* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (i8*, %struct.page*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 (i8*, %struct.page*)* %2, i32 (i8*, %struct.page*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  br label %14

14:                                               ; preds = %103, %45, %5
  %15 = load %struct.address_space*, %struct.address_space** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.page* @find_get_page(%struct.address_space* %15, i32 %16)
  store %struct.page* %17, %struct.page** %12, align 8
  %18 = load %struct.page*, %struct.page** %12, align 8
  %19 = icmp ne %struct.page* %18, null
  br i1 %19, label %84, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %11, align 4
  %22 = call %struct.page* @__page_cache_alloc(i32 %21)
  store %struct.page* %22, %struct.page** %12, align 8
  %23 = load %struct.page*, %struct.page** %12, align 8
  %24 = icmp ne %struct.page* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.page* @ERR_PTR(i32 %27)
  store %struct.page* %28, %struct.page** %6, align 8
  br label %120

29:                                               ; preds = %20
  %30 = load %struct.page*, %struct.page** %12, align 8
  %31 = load %struct.address_space*, %struct.address_space** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @add_to_page_cache_lru(%struct.page* %30, %struct.address_space* %31, i32 %32, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %29
  %39 = load %struct.page*, %struct.page** %12, align 8
  %40 = call i32 @put_page(%struct.page* %39)
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @EEXIST, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %14

46:                                               ; preds = %38
  %47 = load i32, i32* %13, align 4
  %48 = call %struct.page* @ERR_PTR(i32 %47)
  store %struct.page* %48, %struct.page** %6, align 8
  br label %120

49:                                               ; preds = %29
  br label %50

50:                                               ; preds = %115, %49
  %51 = load i32 (i8*, %struct.page*)*, i32 (i8*, %struct.page*)** %9, align 8
  %52 = icmp ne i32 (i8*, %struct.page*)* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32 (i8*, %struct.page*)*, i32 (i8*, %struct.page*)** %9, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load %struct.page*, %struct.page** %12, align 8
  %57 = call i32 %54(i8* %55, %struct.page* %56)
  store i32 %57, i32* %13, align 4
  br label %67

58:                                               ; preds = %50
  %59 = load %struct.address_space*, %struct.address_space** %7, align 8
  %60 = getelementptr inbounds %struct.address_space, %struct.address_space* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (i8*, %struct.page*)*, i32 (i8*, %struct.page*)** %62, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load %struct.page*, %struct.page** %12, align 8
  %66 = call i32 %63(i8* %64, %struct.page* %65)
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %58, %53
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load %struct.page*, %struct.page** %12, align 8
  %72 = call i32 @put_page(%struct.page* %71)
  %73 = load i32, i32* %13, align 4
  %74 = call %struct.page* @ERR_PTR(i32 %73)
  store %struct.page* %74, %struct.page** %6, align 8
  br label %120

75:                                               ; preds = %67
  %76 = load %struct.page*, %struct.page** %12, align 8
  %77 = call %struct.page* @wait_on_page_read(%struct.page* %76)
  store %struct.page* %77, %struct.page** %12, align 8
  %78 = load %struct.page*, %struct.page** %12, align 8
  %79 = call i64 @IS_ERR(%struct.page* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %82, %struct.page** %6, align 8
  br label %120

83:                                               ; preds = %75
  br label %116

84:                                               ; preds = %14
  %85 = load %struct.page*, %struct.page** %12, align 8
  %86 = call i64 @PageUptodate(%struct.page* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %116

89:                                               ; preds = %84
  %90 = load %struct.page*, %struct.page** %12, align 8
  %91 = call i32 @wait_on_page_locked(%struct.page* %90)
  %92 = load %struct.page*, %struct.page** %12, align 8
  %93 = call i64 @PageUptodate(%struct.page* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %116

96:                                               ; preds = %89
  %97 = load %struct.page*, %struct.page** %12, align 8
  %98 = call i32 @lock_page(%struct.page* %97)
  %99 = load %struct.page*, %struct.page** %12, align 8
  %100 = getelementptr inbounds %struct.page, %struct.page* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %96
  %104 = load %struct.page*, %struct.page** %12, align 8
  %105 = call i32 @unlock_page(%struct.page* %104)
  %106 = load %struct.page*, %struct.page** %12, align 8
  %107 = call i32 @put_page(%struct.page* %106)
  br label %14

108:                                              ; preds = %96
  %109 = load %struct.page*, %struct.page** %12, align 8
  %110 = call i64 @PageUptodate(%struct.page* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load %struct.page*, %struct.page** %12, align 8
  %114 = call i32 @unlock_page(%struct.page* %113)
  br label %116

115:                                              ; preds = %108
  br label %50

116:                                              ; preds = %112, %95, %88, %83
  %117 = load %struct.page*, %struct.page** %12, align 8
  %118 = call i32 @mark_page_accessed(%struct.page* %117)
  %119 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %119, %struct.page** %6, align 8
  br label %120

120:                                              ; preds = %116, %81, %70, %46, %25
  %121 = load %struct.page*, %struct.page** %6, align 8
  ret %struct.page* %121
}

declare dso_local %struct.page* @find_get_page(%struct.address_space*, i32) #1

declare dso_local %struct.page* @__page_cache_alloc(i32) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

declare dso_local i32 @add_to_page_cache_lru(%struct.page*, %struct.address_space*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local %struct.page* @wait_on_page_read(%struct.page*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @wait_on_page_locked(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @mark_page_accessed(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
