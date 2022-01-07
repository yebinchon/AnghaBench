; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_change_defmap.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_change_defmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_class = type { i64, %struct.cbq_class*, %struct.TYPE_2__, %struct.cbq_class* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cbq_class*, i64, i64, i64)* @cbq_change_defmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbq_change_defmap(%struct.cbq_class* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.cbq_class*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cbq_class*, align 8
  store %struct.cbq_class* %0, %struct.cbq_class** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store %struct.cbq_class* null, %struct.cbq_class** %9, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %4
  %13 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %14 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %13, i32 0, i32 1
  %15 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  store %struct.cbq_class* %15, %struct.cbq_class** %9, align 8
  %16 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %17 = icmp ne %struct.cbq_class* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %94

19:                                               ; preds = %12
  %20 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %21 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %19, %4
  %25 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %26 = icmp eq %struct.cbq_class* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %29 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %27, %24
  %35 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %36 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %35, i32 0, i32 3
  %37 = load %struct.cbq_class*, %struct.cbq_class** %36, align 8
  store %struct.cbq_class* %37, %struct.cbq_class** %9, align 8
  br label %38

38:                                               ; preds = %50, %34
  %39 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %40 = icmp ne %struct.cbq_class* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %43 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %54

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %52 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %51, i32 0, i32 3
  %53 = load %struct.cbq_class*, %struct.cbq_class** %52, align 8
  store %struct.cbq_class* %53, %struct.cbq_class** %9, align 8
  br label %38

54:                                               ; preds = %48, %38
  br label %55

55:                                               ; preds = %54, %27
  %56 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %57 = icmp eq %struct.cbq_class* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %94

59:                                               ; preds = %55
  %60 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %61 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %60, i32 0, i32 1
  %62 = load %struct.cbq_class*, %struct.cbq_class** %61, align 8
  %63 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %64 = icmp ne %struct.cbq_class* %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %67 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %69 = call i32 @cbq_sync_defmap(%struct.cbq_class* %68)
  %70 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %71 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %72 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %71, i32 0, i32 1
  store %struct.cbq_class* %70, %struct.cbq_class** %72, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %8, align 8
  %75 = and i64 %73, %74
  %76 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %77 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %91

78:                                               ; preds = %59
  %79 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %80 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = xor i64 %82, -1
  %84 = and i64 %81, %83
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* %8, align 8
  %87 = and i64 %85, %86
  %88 = or i64 %84, %87
  %89 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %90 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %78, %65
  %92 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %93 = call i32 @cbq_sync_defmap(%struct.cbq_class* %92)
  br label %94

94:                                               ; preds = %91, %58, %18
  ret void
}

declare dso_local i32 @cbq_sync_defmap(%struct.cbq_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
