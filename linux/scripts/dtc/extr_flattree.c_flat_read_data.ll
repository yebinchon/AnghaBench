; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_flattree.c_flat_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_flattree.c_flat_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i32, i32 }
%struct.inbuf = type { i32 }

@empty_data = common dso_local global %struct.data zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inbuf*, i32)* @flat_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @flat_read_data(%struct.inbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.data, align 4
  %4 = alloca %struct.inbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.data, align 4
  %7 = alloca %struct.data, align 4
  store %struct.inbuf* %0, %struct.inbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = bitcast %struct.data* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.data* @empty_data to i8*), i64 8, i1 false)
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = bitcast %struct.data* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.data* @empty_data to i8*), i64 8, i1 false)
  br label %32

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = bitcast %struct.data* %6 to i64*
  %16 = load i64, i64* %15, align 4
  %17 = call i64 @data_grow_for(i64 %16, i32 %14)
  %18 = bitcast %struct.data* %7 to i64*
  store i64 %17, i64* %18, align 4
  %19 = bitcast %struct.data* %6 to i8*
  %20 = bitcast %struct.data* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 8, i1 false)
  %21 = load i32, i32* %5, align 4
  %22 = getelementptr inbounds %struct.data, %struct.data* %6, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.inbuf*, %struct.inbuf** %4, align 8
  %24 = getelementptr inbounds %struct.data, %struct.data* %6, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @flat_read_chunk(%struct.inbuf* %23, i32 %25, i32 %26)
  %28 = load %struct.inbuf*, %struct.inbuf** %4, align 8
  %29 = call i32 @flat_realign(%struct.inbuf* %28, i32 4)
  %30 = bitcast %struct.data* %3 to i8*
  %31 = bitcast %struct.data* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 8, i1 false)
  br label %32

32:                                               ; preds = %13, %11
  %33 = bitcast %struct.data* %3 to i64*
  %34 = load i64, i64* %33, align 4
  ret i64 %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @data_grow_for(i64, i32) #2

declare dso_local i32 @flat_read_chunk(%struct.inbuf*, i32, i32) #2

declare dso_local i32 @flat_realign(%struct.inbuf*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
