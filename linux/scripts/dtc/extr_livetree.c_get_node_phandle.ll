; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_livetree.c_get_node_phandle.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_livetree.c_get_node_phandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i32 }
%struct.node = type { i64 }

@get_node_phandle.phandle = internal global i32 1, align 4
@empty_data = common dso_local global %struct.data zeroinitializer, align 4
@TYPE_UINT32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@phandle_format = common dso_local global i32 0, align 4
@PHANDLE_LEGACY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@PHANDLE_EPAPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_node_phandle(%struct.node* %0, %struct.node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.node*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca %struct.data, align 4
  %7 = alloca %struct.data, align 4
  %8 = alloca %struct.data, align 4
  store %struct.node* %0, %struct.node** %4, align 8
  store %struct.node* %1, %struct.node** %5, align 8
  %9 = bitcast %struct.data* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.data* @empty_data to i8*), i64 4, i1 false)
  %10 = load %struct.node*, %struct.node** %5, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.node*, %struct.node** %5, align 8
  %16 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, -1
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.node*, %struct.node** %5, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %86

24:                                               ; preds = %14, %2
  br label %25

25:                                               ; preds = %30, %24
  %26 = load %struct.node*, %struct.node** %4, align 8
  %27 = load i32, i32* @get_node_phandle.phandle, align 4
  %28 = call i64 @get_node_by_phandle(%struct.node* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @get_node_phandle.phandle, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @get_node_phandle.phandle, align 4
  br label %25

33:                                               ; preds = %25
  %34 = load i32, i32* @get_node_phandle.phandle, align 4
  %35 = sext i32 %34 to i64
  %36 = load %struct.node*, %struct.node** %5, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* @TYPE_UINT32, align 4
  %39 = getelementptr inbounds %struct.data, %struct.data* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @data_add_marker(i32 %40, i32 %38, i32* null)
  %42 = getelementptr inbounds %struct.data, %struct.data* %7, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = bitcast %struct.data* %6 to i8*
  %44 = bitcast %struct.data* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 4, i1 false)
  %45 = load i32, i32* @get_node_phandle.phandle, align 4
  %46 = getelementptr inbounds %struct.data, %struct.data* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @data_append_cell(i32 %47, i32 %45)
  %49 = getelementptr inbounds %struct.data, %struct.data* %8, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = bitcast %struct.data* %6 to i8*
  %51 = bitcast %struct.data* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 4, i1 false)
  %52 = load %struct.node*, %struct.node** %5, align 8
  %53 = call i32 @get_property(%struct.node* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %33
  %56 = load i32, i32* @phandle_format, align 4
  %57 = load i32, i32* @PHANDLE_LEGACY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.node*, %struct.node** %5, align 8
  %62 = getelementptr inbounds %struct.data, %struct.data* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @build_property(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %63, i32* null)
  %65 = call i32 @add_property(%struct.node* %61, i32 %64)
  br label %66

66:                                               ; preds = %60, %55, %33
  %67 = load %struct.node*, %struct.node** %5, align 8
  %68 = call i32 @get_property(%struct.node* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* @phandle_format, align 4
  %72 = load i32, i32* @PHANDLE_EPAPR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.node*, %struct.node** %5, align 8
  %77 = getelementptr inbounds %struct.data, %struct.data* %6, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @build_property(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32* null)
  %80 = call i32 @add_property(%struct.node* %76, i32 %79)
  br label %81

81:                                               ; preds = %75, %70, %66
  %82 = load %struct.node*, %struct.node** %5, align 8
  %83 = getelementptr inbounds %struct.node, %struct.node* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %81, %19
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @get_node_by_phandle(%struct.node*, i32) #2

declare dso_local i32 @data_add_marker(i32, i32, i32*) #2

declare dso_local i32 @data_append_cell(i32, i32) #2

declare dso_local i32 @get_property(%struct.node*, i8*) #2

declare dso_local i32 @add_property(%struct.node*, i32) #2

declare dso_local i32 @build_property(i8*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
