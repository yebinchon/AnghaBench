; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bitmap.c_bitmap_parse_region.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bitmap.c_bitmap_parse_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.region = type { i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.region*)* @bitmap_parse_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bitmap_parse_region(i8* %0, %struct.region* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.region*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.region* %1, %struct.region** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load %struct.region*, %struct.region** %5, align 8
  %8 = getelementptr inbounds %struct.region, %struct.region* %7, i32 0, i32 3
  %9 = call i8* @bitmap_getnum(i8* %6, i64* %8)
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @IS_ERR(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %3, align 8
  br label %110

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i64 @end_of_region(i8 signext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %82

21:                                               ; preds = %15
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 45
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = call i8* @ERR_PTR(i32 %28)
  store i8* %29, i8** %3, align 8
  br label %110

30:                                               ; preds = %21
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load %struct.region*, %struct.region** %5, align 8
  %34 = getelementptr inbounds %struct.region, %struct.region* %33, i32 0, i32 0
  %35 = call i8* @bitmap_getnum(i8* %32, i64* %34)
  store i8* %35, i8** %4, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @IS_ERR(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i8*, i8** %4, align 8
  store i8* %40, i8** %3, align 8
  br label %110

41:                                               ; preds = %30
  %42 = load i8*, i8** %4, align 8
  %43 = load i8, i8* %42, align 1
  %44 = call i64 @end_of_region(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %88

47:                                               ; preds = %41
  %48 = load i8*, i8** %4, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 58
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  %55 = call i8* @ERR_PTR(i32 %54)
  store i8* %55, i8** %3, align 8
  br label %110

56:                                               ; preds = %47
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load %struct.region*, %struct.region** %5, align 8
  %60 = getelementptr inbounds %struct.region, %struct.region* %59, i32 0, i32 2
  %61 = call i8* @bitmap_getnum(i8* %58, i64* %60)
  store i8* %61, i8** %4, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = call i64 @IS_ERR(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i8*, i8** %4, align 8
  store i8* %66, i8** %3, align 8
  br label %110

67:                                               ; preds = %56
  %68 = load i8*, i8** %4, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 47
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  %75 = call i8* @ERR_PTR(i32 %74)
  store i8* %75, i8** %3, align 8
  br label %110

76:                                               ; preds = %67
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load %struct.region*, %struct.region** %5, align 8
  %80 = getelementptr inbounds %struct.region, %struct.region* %79, i32 0, i32 1
  %81 = call i8* @bitmap_getnum(i8* %78, i64* %80)
  store i8* %81, i8** %3, align 8
  br label %110

82:                                               ; preds = %20
  %83 = load %struct.region*, %struct.region** %5, align 8
  %84 = getelementptr inbounds %struct.region, %struct.region* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.region*, %struct.region** %5, align 8
  %87 = getelementptr inbounds %struct.region, %struct.region* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %82, %46
  %89 = load %struct.region*, %struct.region** %5, align 8
  %90 = getelementptr inbounds %struct.region, %struct.region* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  %93 = load %struct.region*, %struct.region** %5, align 8
  %94 = getelementptr inbounds %struct.region, %struct.region* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  %95 = load %struct.region*, %struct.region** %5, align 8
  %96 = getelementptr inbounds %struct.region, %struct.region* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  %99 = load %struct.region*, %struct.region** %5, align 8
  %100 = getelementptr inbounds %struct.region, %struct.region* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load i8*, i8** %4, align 8
  %102 = load i8, i8* %101, align 1
  %103 = call i64 @end_of_str(i8 signext %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %88
  br label %108

106:                                              ; preds = %88
  %107 = load i8*, i8** %4, align 8
  br label %108

108:                                              ; preds = %106, %105
  %109 = phi i8* [ null, %105 ], [ %107, %106 ]
  store i8* %109, i8** %3, align 8
  br label %110

110:                                              ; preds = %108, %76, %72, %65, %52, %39, %26, %13
  %111 = load i8*, i8** %3, align 8
  ret i8* %111
}

declare dso_local i8* @bitmap_getnum(i8*, i64*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i64 @end_of_region(i8 signext) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i64 @end_of_str(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
