; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_fdtput.c_do_fdtput.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_fdtput.c_do_fdtput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.display_info*, i8*, i8**, i32)* @do_fdtput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_fdtput(%struct.display_info* %0, i8* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.display_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.display_info* %0, %struct.display_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i8* @utilfdt_read(i8* %14)
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %101

19:                                               ; preds = %4
  %20 = load %struct.display_info*, %struct.display_info** %6, align 8
  %21 = getelementptr inbounds %struct.display_info, %struct.display_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %90 [
    i32 128, label %23
    i32 129, label %60
  ]

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  %25 = icmp sge i32 %24, 2
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.display_info*, %struct.display_info** %6, align 8
  %29 = getelementptr inbounds %struct.display_info, %struct.display_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load i8*, i8** %11, align 8
  %34 = load i8**, i8*** %8, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @create_paths(i8* %33, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 -1, i32* %5, align 4
  br label %101

39:                                               ; preds = %32, %23
  %40 = load %struct.display_info*, %struct.display_info** %6, align 8
  %41 = load i8**, i8*** %8, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %43, 2
  %45 = call i32 @encode_value(%struct.display_info* %40, i8** %42, i32 %44, i8** %10, i32* %12)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %39
  %48 = load i8*, i8** %11, align 8
  %49 = load i8**, i8*** %8, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i8**, i8*** %8, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @store_key_value(i8* %48, i8* %50, i8* %53, i8* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47, %39
  store i32 -1, i32* %13, align 4
  br label %59

59:                                               ; preds = %58, %47
  br label %90

60:                                               ; preds = %19
  br label %61

61:                                               ; preds = %86, %60
  %62 = load i32, i32* %13, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %9, align 4
  %67 = icmp ne i32 %65, 0
  br label %68

68:                                               ; preds = %64, %61
  %69 = phi i1 [ false, %61 ], [ %67, %64 ]
  br i1 %69, label %70, label %89

70:                                               ; preds = %68
  %71 = load %struct.display_info*, %struct.display_info** %6, align 8
  %72 = getelementptr inbounds %struct.display_info, %struct.display_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i8*, i8** %11, align 8
  %77 = load i8**, i8*** %8, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @create_paths(i8* %76, i8* %78)
  store i32 %79, i32* %13, align 4
  br label %85

80:                                               ; preds = %70
  %81 = load i8*, i8** %11, align 8
  %82 = load i8**, i8*** %8, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @create_node(i8* %81, i8* %83)
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %80, %75
  br label %86

86:                                               ; preds = %85
  %87 = load i8**, i8*** %8, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i32 1
  store i8** %88, i8*** %8, align 8
  br label %61

89:                                               ; preds = %68
  br label %90

90:                                               ; preds = %19, %89, %59
  %91 = load i32, i32* %13, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i8*, i8** %7, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @utilfdt_write(i8* %94, i8* %95)
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %93, %90
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 @free(i8* %98)
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %97, %38, %18
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i8* @utilfdt_read(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @create_paths(i8*, i8*) #1

declare dso_local i32 @encode_value(%struct.display_info*, i8**, i32, i8**, i32*) #1

declare dso_local i32 @store_key_value(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @create_node(i8*, i8*) #1

declare dso_local i32 @utilfdt_write(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
