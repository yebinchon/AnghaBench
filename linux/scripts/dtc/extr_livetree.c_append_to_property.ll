; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_livetree.c_append_to_property.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_livetree.c_append_to_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i32 }
%struct.node = type { i32 }
%struct.property = type { %struct.data }

@empty_data = common dso_local global %struct.data zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @append_to_property(%struct.node* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.data, align 4
  %12 = alloca %struct.property*, align 8
  %13 = alloca %struct.data, align 4
  %14 = alloca %struct.data, align 4
  %15 = alloca %struct.data, align 4
  %16 = alloca %struct.data, align 4
  store %struct.node* %0, %struct.node** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.node*, %struct.node** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call %struct.property* @get_property(%struct.node* %17, i8* %18)
  store %struct.property* %19, %struct.property** %12, align 8
  %20 = load %struct.property*, %struct.property** %12, align 8
  %21 = icmp ne %struct.property* %20, null
  br i1 %21, label %22, label %45

22:                                               ; preds = %5
  %23 = load %struct.property*, %struct.property** %12, align 8
  %24 = getelementptr inbounds %struct.property, %struct.property* %23, i32 0, i32 0
  %25 = load i32, i32* %10, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds %struct.data, %struct.data* %24, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @data_add_marker(i32 %28, i32 %25, i8* %26)
  %30 = getelementptr inbounds %struct.data, %struct.data* %13, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = bitcast %struct.data* %11 to i8*
  %32 = bitcast %struct.data* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = getelementptr inbounds %struct.data, %struct.data* %11, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @data_append_data(i32 %36, i8* %33, i32 %34)
  %38 = getelementptr inbounds %struct.data, %struct.data* %14, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = bitcast %struct.data* %11 to i8*
  %40 = bitcast %struct.data* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 4, i1 false)
  %41 = load %struct.property*, %struct.property** %12, align 8
  %42 = getelementptr inbounds %struct.property, %struct.property* %41, i32 0, i32 0
  %43 = bitcast %struct.data* %42 to i8*
  %44 = bitcast %struct.data* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 4, i1 false)
  br label %68

45:                                               ; preds = %5
  %46 = load i32, i32* %10, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @empty_data, i32 0, i32 0), align 4
  %49 = call i32 @data_add_marker(i32 %48, i32 %46, i8* %47)
  %50 = getelementptr inbounds %struct.data, %struct.data* %15, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = bitcast %struct.data* %11 to i8*
  %52 = bitcast %struct.data* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = getelementptr inbounds %struct.data, %struct.data* %11, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @data_append_data(i32 %56, i8* %53, i32 %54)
  %58 = getelementptr inbounds %struct.data, %struct.data* %16, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = bitcast %struct.data* %11 to i8*
  %60 = bitcast %struct.data* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 4, i1 false)
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds %struct.data, %struct.data* %11, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.property* @build_property(i8* %61, i32 %63, i32* null)
  store %struct.property* %64, %struct.property** %12, align 8
  %65 = load %struct.node*, %struct.node** %6, align 8
  %66 = load %struct.property*, %struct.property** %12, align 8
  %67 = call i32 @add_property(%struct.node* %65, %struct.property* %66)
  br label %68

68:                                               ; preds = %45, %22
  ret void
}

declare dso_local %struct.property* @get_property(%struct.node*, i8*) #1

declare dso_local i32 @data_add_marker(i32, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @data_append_data(i32, i8*, i32) #1

declare dso_local %struct.property* @build_property(i8*, i32, i32*) #1

declare dso_local i32 @add_property(%struct.node*, %struct.property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
