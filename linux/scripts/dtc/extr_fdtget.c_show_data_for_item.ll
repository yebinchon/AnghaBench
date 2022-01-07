; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_fdtget.c_show_data_for_item.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_fdtget.c_show_data_for_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_info = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.display_info*, i32, i8*)* @show_data_for_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_data_for_item(i8* %0, %struct.display_info* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.display_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.display_info* %1, %struct.display_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.display_info*, %struct.display_info** %6, align 8
  %13 = getelementptr inbounds %struct.display_info, %struct.display_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %23 [
    i32 129, label %15
    i32 128, label %19
  ]

15:                                               ; preds = %4
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @list_properties(i8* %16, i32 %17)
  store i32 %18, i32* %11, align 4
  br label %58

19:                                               ; preds = %4
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @list_subnodes(i8* %20, i32 %21)
  store i32 %22, i32* %11, align 4
  br label %58

23:                                               ; preds = %4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @assert(i8* %24)
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @fdt_getprop(i8* %26, i32 %27, i8* %28, i32* %10)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load %struct.display_info*, %struct.display_info** %6, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @show_data(%struct.display_info* %33, i8* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 -1, i32* %11, align 4
  br label %41

39:                                               ; preds = %32
  %40 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %38
  br label %57

42:                                               ; preds = %23
  %43 = load %struct.display_info*, %struct.display_info** %6, align 8
  %44 = getelementptr inbounds %struct.display_info, %struct.display_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.display_info*, %struct.display_info** %6, align 8
  %49 = getelementptr inbounds %struct.display_info, %struct.display_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @puts(i32 %50)
  br label %56

52:                                               ; preds = %42
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @report_error(i8* %53, i32 %54)
  store i32 -1, i32* %11, align 4
  br label %56

56:                                               ; preds = %52, %47
  br label %57

57:                                               ; preds = %56, %41
  br label %58

58:                                               ; preds = %57, %19, %15
  %59 = load i32, i32* %11, align 4
  ret i32 %59
}

declare dso_local i32 @list_properties(i8*, i32) #1

declare dso_local i32 @list_subnodes(i8*, i32) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i8* @fdt_getprop(i8*, i32, i8*, i32*) #1

declare dso_local i32 @show_data(%struct.display_info*, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @puts(i32) #1

declare dso_local i32 @report_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
