; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_crush_find_rule.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_crush_find_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crush_map = type { i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crush_find_rule(%struct.crush_map* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crush_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.crush_map* %0, %struct.crush_map** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %77, %4
  %12 = load i64, i64* %10, align 8
  %13 = load %struct.crush_map*, %struct.crush_map** %6, align 8
  %14 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %80

17:                                               ; preds = %11
  %18 = load %struct.crush_map*, %struct.crush_map** %6, align 8
  %19 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %19, align 8
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %20, i64 %21
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %76

25:                                               ; preds = %17
  %26 = load %struct.crush_map*, %struct.crush_map** %6, align 8
  %27 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %28, i64 %29
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %76

37:                                               ; preds = %25
  %38 = load %struct.crush_map*, %struct.crush_map** %6, align 8
  %39 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %40, i64 %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %37
  %50 = load %struct.crush_map*, %struct.crush_map** %6, align 8
  %51 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %52, i64 %53
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %49
  %62 = load %struct.crush_map*, %struct.crush_map** %6, align 8
  %63 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %64, i64 %65
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %61
  %74 = load i64, i64* %10, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %5, align 4
  br label %81

76:                                               ; preds = %61, %49, %37, %25, %17
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %10, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %10, align 8
  br label %11

80:                                               ; preds = %11
  store i32 -1, i32* %5, align 4
  br label %81

81:                                               ; preds = %80, %73
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
