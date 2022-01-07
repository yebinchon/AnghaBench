; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_stackmap.c_stack_map_parse_build_id.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_stackmap.c_stack_map_parse_build_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BPF_BUILD_ID = common dso_local global i64 0, align 8
@BPF_BUILD_ID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32)* @stack_map_parse_build_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stack_map_parse_build_id(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr i8, i8* %17, i64 %19
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16, %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %127

26:                                               ; preds = %16
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr i8, i8* %27, i64 %29
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr i8, i8* %31, i64 %33
  %35 = icmp ugt i8* %30, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %127

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %122, %39
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %42, 16
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ult i64 %43, %45
  br i1 %46, label %47, label %124

47:                                               ; preds = %40
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr i8, i8* %48, i64 %50
  %52 = bitcast i8* %51 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %52, %struct.TYPE_2__** %12, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BPF_BUILD_ID, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %101

58:                                               ; preds = %47
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = icmp eq i64 %62, 4
  br i1 %63, label %64, label %101

64:                                               ; preds = %58
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %101

69:                                               ; preds = %64
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @BPF_BUILD_ID_SIZE, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %101

75:                                               ; preds = %69
  %76 = load i8*, i8** %7, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr i8, i8* %77, i64 %79
  %81 = call i32 @ALIGN(i32 4, i32 4)
  %82 = sext i32 %81 to i64
  %83 = getelementptr i8, i8* %80, i64 %82
  %84 = getelementptr i8, i8* %83, i64 16
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @memcpy(i8* %76, i8* %84, i32 %87)
  %89 = load i8*, i8** %7, align 8
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %89, i64 %93
  %95 = load i32, i32* @BPF_BUILD_ID_SIZE, align 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %95, %98
  %100 = call i32 @memset(i8* %94, i32 0, i32 %99)
  store i32 0, i32* %5, align 4
  br label %127

101:                                              ; preds = %69, %64, %58, %47
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = add i64 %103, 16
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @ALIGN(i32 %107, i32 4)
  %109 = sext i32 %108 to i64
  %110 = add i64 %104, %109
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ALIGN(i32 %113, i32 4)
  %115 = sext i32 %114 to i64
  %116 = add i64 %110, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %101
  br label %124

122:                                              ; preds = %101
  %123 = load i32, i32* %11, align 4
  store i32 %123, i32* %10, align 4
  br label %40

124:                                              ; preds = %121, %40
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %124, %75, %36, %23
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
