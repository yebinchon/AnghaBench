; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_crush_init_workspace.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_crush_init_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crush_map = type { i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i32 }
%struct.crush_work = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i8*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crush_init_workspace(%struct.crush_map* %0, i8* %1) #0 {
  %3 = alloca %struct.crush_map*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.crush_work*, align 8
  %6 = alloca i64, align 8
  store %struct.crush_map* %0, %struct.crush_map** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.crush_work*
  store %struct.crush_work* %8, %struct.crush_work** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr i8, i8* %9, i64 8
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_3__**
  %13 = load %struct.crush_work*, %struct.crush_work** %5, align 8
  %14 = getelementptr inbounds %struct.crush_work, %struct.crush_work* %13, i32 0, i32 0
  store %struct.TYPE_3__** %12, %struct.TYPE_3__*** %14, align 8
  %15 = load %struct.crush_map*, %struct.crush_map** %3, align 8
  %16 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr i8, i8* %20, i64 %19
  store i8* %21, i8** %4, align 8
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %92, %2
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.crush_map*, %struct.crush_map** %3, align 8
  %25 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %23, %27
  br i1 %28, label %29, label %95

29:                                               ; preds = %22
  %30 = load %struct.crush_map*, %struct.crush_map** %3, align 8
  %31 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %32, i64 %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %92

38:                                               ; preds = %29
  %39 = load i8*, i8** %4, align 8
  %40 = bitcast i8* %39 to %struct.TYPE_3__*
  %41 = load %struct.crush_work*, %struct.crush_work** %5, align 8
  %42 = getelementptr inbounds %struct.crush_work, %struct.crush_work* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %43, i64 %44
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %45, align 8
  %46 = load %struct.crush_map*, %struct.crush_map** %3, align 8
  %47 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %48, i64 %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %54 [
  ]

54:                                               ; preds = %38
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr i8, i8* %55, i64 4
  store i8* %56, i8** %4, align 8
  br label %57

57:                                               ; preds = %54
  %58 = load %struct.crush_work*, %struct.crush_work** %5, align 8
  %59 = getelementptr inbounds %struct.crush_work, %struct.crush_work* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %60, i64 %61
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load %struct.crush_work*, %struct.crush_work** %5, align 8
  %66 = getelementptr inbounds %struct.crush_work, %struct.crush_work* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %67, i64 %68
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = load %struct.crush_work*, %struct.crush_work** %5, align 8
  %74 = getelementptr inbounds %struct.crush_work, %struct.crush_work* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %75, i64 %76
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i8* %72, i8** %79, align 8
  %80 = load %struct.crush_map*, %struct.crush_map** %3, align 8
  %81 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %82, i64 %83
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr i8, i8* %90, i64 %89
  store i8* %91, i8** %4, align 8
  br label %92

92:                                               ; preds = %57, %37
  %93 = load i64, i64* %6, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %6, align 8
  br label %22

95:                                               ; preds = %22
  %96 = load i8*, i8** %4, align 8
  %97 = load %struct.crush_work*, %struct.crush_work** %5, align 8
  %98 = bitcast %struct.crush_work* %97 to i8*
  %99 = ptrtoint i8* %96 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = load %struct.crush_map*, %struct.crush_map** %3, align 8
  %103 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp ne i64 %101, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @BUG_ON(i32 %107)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
