; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_flattree.c_flatten_reserve_list.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_flattree.c_flatten_reserve_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i32 }
%struct.reserve_info = type { i32, i32, %struct.reserve_info* }
%struct.version_info = type { i32 }

@empty_data = common dso_local global %struct.data zeroinitializer, align 4
@reservenum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reserve_info*, %struct.version_info*)* @flatten_reserve_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flatten_reserve_list(%struct.reserve_info* %0, %struct.version_info* %1) #0 {
  %3 = alloca %struct.data, align 4
  %4 = alloca %struct.reserve_info*, align 8
  %5 = alloca %struct.version_info*, align 8
  %6 = alloca %struct.reserve_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.data, align 4
  %9 = alloca %struct.data, align 4
  store %struct.reserve_info* %0, %struct.reserve_info** %4, align 8
  store %struct.version_info* %1, %struct.version_info** %5, align 8
  %10 = bitcast %struct.data* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.data* @empty_data to i8*), i64 4, i1 false)
  %11 = load %struct.reserve_info*, %struct.reserve_info** %4, align 8
  store %struct.reserve_info* %11, %struct.reserve_info** %6, align 8
  br label %12

12:                                               ; preds = %28, %2
  %13 = load %struct.reserve_info*, %struct.reserve_info** %6, align 8
  %14 = icmp ne %struct.reserve_info* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = load %struct.reserve_info*, %struct.reserve_info** %6, align 8
  %17 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.reserve_info*, %struct.reserve_info** %6, align 8
  %20 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @data_append_re(i32 %23, i32 %18, i32 %21)
  %25 = getelementptr inbounds %struct.data, %struct.data* %8, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = bitcast %struct.data* %3 to i8*
  %27 = bitcast %struct.data* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  br label %28

28:                                               ; preds = %15
  %29 = load %struct.reserve_info*, %struct.reserve_info** %6, align 8
  %30 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %29, i32 0, i32 2
  %31 = load %struct.reserve_info*, %struct.reserve_info** %30, align 8
  store %struct.reserve_info* %31, %struct.reserve_info** %6, align 8
  br label %12

32:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %44, %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @reservenum, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @data_append_re(i32 %39, i32 0, i32 0)
  %41 = getelementptr inbounds %struct.data, %struct.data* %9, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = bitcast %struct.data* %3 to i8*
  %43 = bitcast %struct.data* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %33

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  ret i32 %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @data_append_re(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
