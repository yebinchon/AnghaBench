; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump__dump_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump__dump_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dump = type { i32, i32*, %struct.TYPE_2__*, i8*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ORDERED = common dso_local global i32 0, align 4
@EMITTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btf_dump__dump_type(%struct.btf_dump* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_dump*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.btf_dump* %0, %struct.btf_dump** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %10 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @btf__get_nr_types(i32 %11)
  %13 = icmp sgt i64 %8, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %106

17:                                               ; preds = %2
  %18 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %19 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %75, label %22

22:                                               ; preds = %17
  %23 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %24 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @btf__get_nr_types(i32 %25)
  %27 = add nsw i64 1, %26
  %28 = call i8* @calloc(i64 %27, i32 8)
  %29 = bitcast i8* %28 to %struct.TYPE_2__*
  %30 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %31 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %30, i32 0, i32 2
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %31, align 8
  %32 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %33 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = icmp ne %struct.TYPE_2__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %22
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %106

39:                                               ; preds = %22
  %40 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %41 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @btf__get_nr_types(i32 %42)
  %44 = add nsw i64 1, %43
  %45 = call i8* @calloc(i64 %44, i32 1)
  %46 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %47 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %49 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %39
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %106

55:                                               ; preds = %39
  %56 = load i32, i32* @ORDERED, align 4
  %57 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %58 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %56, i32* %61, align 4
  %62 = load i32, i32* @EMITTED, align 4
  %63 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %64 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 4
  %68 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %69 = call i32 @btf_dump_mark_referenced(%struct.btf_dump* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %55
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %106

74:                                               ; preds = %55
  br label %75

75:                                               ; preds = %74, %17
  %76 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %77 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @btf_dump_order_type(%struct.btf_dump* %78, i64 %79, i32 0)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  br label %106

85:                                               ; preds = %75
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %102, %85
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %89 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %86
  %93 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %94 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %95 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @btf_dump_emit_type(%struct.btf_dump* %93, i32 %100, i32 0)
  br label %102

102:                                              ; preds = %92
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %86

105:                                              ; preds = %86
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %83, %72, %52, %36, %14
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i64 @btf__get_nr_types(i32) #1

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i32 @btf_dump_mark_referenced(%struct.btf_dump*) #1

declare dso_local i32 @btf_dump_order_type(%struct.btf_dump*, i64, i32) #1

declare dso_local i32 @btf_dump_emit_type(%struct.btf_dump*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
