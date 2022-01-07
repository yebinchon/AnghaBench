; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_data.c_data_append_markers.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_data.c_data_append_markers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.marker = type { %struct.marker* }
%struct.data = type { %struct.marker* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.marker* (%struct.marker*, %struct.marker*)* @data_append_markers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.marker* @data_append_markers(%struct.marker* %0, %struct.marker* %1) #0 {
  %3 = alloca %struct.data, align 8
  %4 = alloca %struct.data, align 8
  %5 = alloca %struct.marker*, align 8
  %6 = alloca %struct.marker**, align 8
  %7 = getelementptr inbounds %struct.data, %struct.data* %4, i32 0, i32 0
  store %struct.marker* %0, %struct.marker** %7, align 8
  store %struct.marker* %1, %struct.marker** %5, align 8
  %8 = getelementptr inbounds %struct.data, %struct.data* %4, i32 0, i32 0
  store %struct.marker** %8, %struct.marker*** %6, align 8
  br label %9

9:                                                ; preds = %13, %2
  %10 = load %struct.marker**, %struct.marker*** %6, align 8
  %11 = load %struct.marker*, %struct.marker** %10, align 8
  %12 = icmp ne %struct.marker* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load %struct.marker**, %struct.marker*** %6, align 8
  %15 = load %struct.marker*, %struct.marker** %14, align 8
  %16 = getelementptr inbounds %struct.marker, %struct.marker* %15, i32 0, i32 0
  store %struct.marker** %16, %struct.marker*** %6, align 8
  br label %9

17:                                               ; preds = %9
  %18 = load %struct.marker*, %struct.marker** %5, align 8
  %19 = load %struct.marker**, %struct.marker*** %6, align 8
  store %struct.marker* %18, %struct.marker** %19, align 8
  %20 = bitcast %struct.data* %3 to i8*
  %21 = bitcast %struct.data* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 8, i1 false)
  %22 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %23 = load %struct.marker*, %struct.marker** %22, align 8
  ret %struct.marker* %23
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
