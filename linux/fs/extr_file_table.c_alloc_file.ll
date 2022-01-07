; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_file_table.c_alloc_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_file_table.c_alloc_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.file_operations*, i32, i32, %struct.TYPE_4__*, %struct.path }
%struct.TYPE_4__ = type { i32 }
%struct.path = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.file_operations = type { i64, i64, i64, i64 }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_CAN_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_CAN_WRITE = common dso_local global i32 0, align 4
@FMODE_OPENED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file* (%struct.path*, i32, %struct.file_operations*)* @alloc_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file* @alloc_file(%struct.path* %0, i32 %1, %struct.file_operations* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_operations*, align 8
  %8 = alloca %struct.file*, align 8
  store %struct.path* %0, %struct.path** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.file_operations* %2, %struct.file_operations** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 (...) @current_cred()
  %11 = call %struct.file* @alloc_empty_file(i32 %9, i32 %10)
  store %struct.file* %11, %struct.file** %8, align 8
  %12 = load %struct.file*, %struct.file** %8, align 8
  %13 = call i64 @IS_ERR(%struct.file* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load %struct.file*, %struct.file** %8, align 8
  store %struct.file* %16, %struct.file** %4, align 8
  br label %127

17:                                               ; preds = %3
  %18 = load %struct.file*, %struct.file** %8, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 5
  %20 = load %struct.path*, %struct.path** %5, align 8
  %21 = bitcast %struct.path* %19 to i8*
  %22 = bitcast %struct.path* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 8, i1 false)
  %23 = load %struct.path*, %struct.path** %5, align 8
  %24 = getelementptr inbounds %struct.path, %struct.path* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load %struct.file*, %struct.file** %8, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 4
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %29, align 8
  %30 = load %struct.path*, %struct.path** %5, align 8
  %31 = getelementptr inbounds %struct.path, %struct.path* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.file*, %struct.file** %8, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.file*, %struct.file** %8, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @filemap_sample_wb_err(i32 %41)
  %43 = load %struct.file*, %struct.file** %8, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.file*, %struct.file** %8, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @FMODE_READ, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %17
  %52 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %53 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %58 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi i1 [ true, %51 ], [ %60, %56 ]
  %63 = zext i1 %62 to i32
  %64 = call i64 @likely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* @FMODE_CAN_READ, align 4
  %68 = load %struct.file*, %struct.file** %8, align 8
  %69 = getelementptr inbounds %struct.file, %struct.file* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %66, %61, %17
  %73 = load %struct.file*, %struct.file** %8, align 8
  %74 = getelementptr inbounds %struct.file, %struct.file* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @FMODE_WRITE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %72
  %80 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %81 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %86 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br label %89

89:                                               ; preds = %84, %79
  %90 = phi i1 [ true, %79 ], [ %88, %84 ]
  %91 = zext i1 %90 to i32
  %92 = call i64 @likely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32, i32* @FMODE_CAN_WRITE, align 4
  %96 = load %struct.file*, %struct.file** %8, align 8
  %97 = getelementptr inbounds %struct.file, %struct.file* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %94, %89, %72
  %101 = load i32, i32* @FMODE_OPENED, align 4
  %102 = load %struct.file*, %struct.file** %8, align 8
  %103 = getelementptr inbounds %struct.file, %struct.file* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %107 = load %struct.file*, %struct.file** %8, align 8
  %108 = getelementptr inbounds %struct.file, %struct.file* %107, i32 0, i32 1
  store %struct.file_operations* %106, %struct.file_operations** %108, align 8
  %109 = load %struct.file*, %struct.file** %8, align 8
  %110 = getelementptr inbounds %struct.file, %struct.file* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @FMODE_READ, align 4
  %113 = load i32, i32* @FMODE_WRITE, align 4
  %114 = or i32 %112, %113
  %115 = and i32 %111, %114
  %116 = load i32, i32* @FMODE_READ, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %100
  %119 = load %struct.path*, %struct.path** %5, align 8
  %120 = getelementptr inbounds %struct.path, %struct.path* %119, i32 0, i32 0
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = call i32 @i_readcount_inc(%struct.TYPE_4__* %123)
  br label %125

125:                                              ; preds = %118, %100
  %126 = load %struct.file*, %struct.file** %8, align 8
  store %struct.file* %126, %struct.file** %4, align 8
  br label %127

127:                                              ; preds = %125, %15
  %128 = load %struct.file*, %struct.file** %4, align 8
  ret %struct.file* %128
}

declare dso_local %struct.file* @alloc_empty_file(i32, i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @filemap_sample_wb_err(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @i_readcount_inc(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
