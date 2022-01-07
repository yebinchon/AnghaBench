; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_help-unknown-cmd.c_add_cmd_list.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_help-unknown-cmd.c_add_cmd_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdnames = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdnames*, %struct.cmdnames*)* @add_cmd_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_cmd_list(%struct.cmdnames* %0, %struct.cmdnames* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmdnames*, align 8
  %5 = alloca %struct.cmdnames*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.cmdnames* %0, %struct.cmdnames** %4, align 8
  store %struct.cmdnames* %1, %struct.cmdnames** %5, align 8
  %9 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %10 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.cmdnames*, %struct.cmdnames** %5, align 8
  %13 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add i32 %11, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %18 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ugt i32 %16, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %2
  %22 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %23 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @alloc_nr(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %31 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %39

32:                                               ; preds = %21
  %33 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %34 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @alloc_nr(i32 %35)
  %37 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %38 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %32, %28
  %40 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %41 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %44 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = zext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = call i8* @realloc(i32* %42, i32 %48)
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %91

53:                                               ; preds = %39
  %54 = load i8*, i8** %8, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %57 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %56, i32 0, i32 2
  store i32* %55, i32** %57, align 8
  br label %58

58:                                               ; preds = %53, %2
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %82, %58
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.cmdnames*, %struct.cmdnames** %5, align 8
  %62 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ult i32 %60, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %59
  %66 = load %struct.cmdnames*, %struct.cmdnames** %5, align 8
  %67 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %74 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %77 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = zext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %75, i64 %80
  store i32 %72, i32* %81, align 4
  br label %82

82:                                               ; preds = %65
  %83 = load i32, i32* %6, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %59

85:                                               ; preds = %59
  %86 = load %struct.cmdnames*, %struct.cmdnames** %5, align 8
  %87 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %86, i32 0, i32 2
  %88 = call i32 @zfree(i32** %87)
  %89 = load %struct.cmdnames*, %struct.cmdnames** %5, align 8
  %90 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %85, %52
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @alloc_nr(i32) #1

declare dso_local i8* @realloc(i32*, i32) #1

declare dso_local i32 @zfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
