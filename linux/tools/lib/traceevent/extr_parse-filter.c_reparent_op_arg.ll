; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_reparent_op_arg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_reparent_op_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_filter_arg = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tep_filter_arg*, %struct.tep_filter_arg* }

@TEP_FILTER_ARG_OP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"can not reparent other than OP\00", align 1
@TEP_ERRNO__REPARENT_NOT_OP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Error in reparent op, find other child\00", align 1
@TEP_ERRNO__REPARENT_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Error in reparent op\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_filter_arg*, %struct.tep_filter_arg*, %struct.tep_filter_arg*, i8*)* @reparent_op_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reparent_op_arg(%struct.tep_filter_arg* %0, %struct.tep_filter_arg* %1, %struct.tep_filter_arg* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tep_filter_arg*, align 8
  %7 = alloca %struct.tep_filter_arg*, align 8
  %8 = alloca %struct.tep_filter_arg*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tep_filter_arg*, align 8
  %11 = alloca %struct.tep_filter_arg**, align 8
  store %struct.tep_filter_arg* %0, %struct.tep_filter_arg** %6, align 8
  store %struct.tep_filter_arg* %1, %struct.tep_filter_arg** %7, align 8
  store %struct.tep_filter_arg* %2, %struct.tep_filter_arg** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %13 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TEP_FILTER_ARG_OP, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %8, align 8
  %19 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TEP_FILTER_ARG_OP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @show_error(i8* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @TEP_ERRNO__REPARENT_NOT_OP, align 4
  store i32 %26, i32* %5, align 4
  br label %108

27:                                               ; preds = %17, %4
  %28 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %29 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %30, align 8
  %32 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %8, align 8
  %33 = icmp eq %struct.tep_filter_arg* %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %36 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store %struct.tep_filter_arg** %37, %struct.tep_filter_arg*** %11, align 8
  %38 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %39 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %40, align 8
  store %struct.tep_filter_arg* %41, %struct.tep_filter_arg** %10, align 8
  br label %62

42:                                               ; preds = %27
  %43 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %44 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %45, align 8
  %47 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %8, align 8
  %48 = icmp eq %struct.tep_filter_arg* %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %51 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store %struct.tep_filter_arg** %52, %struct.tep_filter_arg*** %11, align 8
  %53 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %54 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %55, align 8
  store %struct.tep_filter_arg* %56, %struct.tep_filter_arg** %10, align 8
  br label %61

57:                                               ; preds = %42
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @show_error(i8* %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @TEP_ERRNO__REPARENT_FAILED, align 4
  store i32 %60, i32* %5, align 4
  br label %108

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %34
  %63 = load %struct.tep_filter_arg**, %struct.tep_filter_arg*** %11, align 8
  store %struct.tep_filter_arg* null, %struct.tep_filter_arg** %63, align 8
  %64 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %65 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %66 = icmp eq %struct.tep_filter_arg* %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %10, align 8
  %69 = call i32 @free_arg(%struct.tep_filter_arg* %68)
  %70 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %71 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %8, align 8
  %72 = bitcast %struct.tep_filter_arg* %70 to i8*
  %73 = bitcast %struct.tep_filter_arg* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 24, i1 false)
  %74 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %8, align 8
  %75 = call i32 @free(%struct.tep_filter_arg* %74)
  store i32 0, i32* %5, align 4
  br label %108

76:                                               ; preds = %62
  %77 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %78 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %79, align 8
  %81 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %82 = icmp eq %struct.tep_filter_arg* %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %85 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store %struct.tep_filter_arg** %86, %struct.tep_filter_arg*** %11, align 8
  br label %103

87:                                               ; preds = %76
  %88 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %89 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %90, align 8
  %92 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %93 = icmp eq %struct.tep_filter_arg* %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %96 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store %struct.tep_filter_arg** %97, %struct.tep_filter_arg*** %11, align 8
  br label %102

98:                                               ; preds = %87
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @show_error(i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i32, i32* @TEP_ERRNO__REPARENT_FAILED, align 4
  store i32 %101, i32* %5, align 4
  br label %108

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %83
  %104 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %8, align 8
  %105 = load %struct.tep_filter_arg**, %struct.tep_filter_arg*** %11, align 8
  store %struct.tep_filter_arg* %104, %struct.tep_filter_arg** %105, align 8
  %106 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %107 = call i32 @free_arg(%struct.tep_filter_arg* %106)
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %103, %98, %67, %57, %23
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @show_error(i8*, i8*) #1

declare dso_local i32 @free_arg(%struct.tep_filter_arg*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(%struct.tep_filter_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
