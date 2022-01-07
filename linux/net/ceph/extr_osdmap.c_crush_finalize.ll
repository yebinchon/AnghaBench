; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_crush_finalize.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_crush_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crush_map = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crush_map*)* @crush_finalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crush_finalize(%struct.crush_map* %0) #0 {
  %2 = alloca %struct.crush_map*, align 8
  %3 = alloca i64, align 8
  store %struct.crush_map* %0, %struct.crush_map** %2, align 8
  %4 = load %struct.crush_map*, %struct.crush_map** %2, align 8
  %5 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 8
  %9 = add i64 4, %8
  %10 = trunc i64 %9 to i32
  %11 = load %struct.crush_map*, %struct.crush_map** %2, align 8
  %12 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  store i64 0, i64* %3, align 8
  br label %13

13:                                               ; preds = %62, %1
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.crush_map*, %struct.crush_map** %2, align 8
  %16 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %14, %18
  br i1 %19, label %20, label %65

20:                                               ; preds = %13
  %21 = load %struct.crush_map*, %struct.crush_map** %2, align 8
  %22 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %62

29:                                               ; preds = %20
  %30 = load %struct.crush_map*, %struct.crush_map** %2, align 8
  %31 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %33
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %38 [
  ]

38:                                               ; preds = %29
  %39 = load %struct.crush_map*, %struct.crush_map** %2, align 8
  %40 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = add i64 %42, 4
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 8
  br label %45

45:                                               ; preds = %38
  %46 = load %struct.crush_map*, %struct.crush_map** %2, align 8
  %47 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %47, align 8
  %49 = load i64, i64* %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %48, i64 %49
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = load %struct.crush_map*, %struct.crush_map** %2, align 8
  %57 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = add i64 %59, %55
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 8
  br label %62

62:                                               ; preds = %45, %28
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %3, align 8
  br label %13

65:                                               ; preds = %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
