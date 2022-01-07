; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_unlink_class.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_unlink_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_class = type { %struct.cbq_class*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.cbq_class* }
%struct.cbq_sched_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cbq_class*)* @cbq_unlink_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbq_unlink_class(%struct.cbq_class* %0) #0 {
  %2 = alloca %struct.cbq_class*, align 8
  %3 = alloca %struct.cbq_class*, align 8
  %4 = alloca %struct.cbq_class**, align 8
  %5 = alloca %struct.cbq_sched_data*, align 8
  store %struct.cbq_class* %0, %struct.cbq_class** %2, align 8
  %6 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %7 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.cbq_sched_data* @qdisc_priv(i32 %8)
  store %struct.cbq_sched_data* %9, %struct.cbq_sched_data** %5, align 8
  %10 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %11 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %10, i32 0, i32 0
  %12 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %13 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %12, i32 0, i32 2
  %14 = call i32 @qdisc_class_hash_remove(i32* %11, i32* %13)
  %15 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %16 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %71

19:                                               ; preds = %1
  %20 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %21 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %20, i32 0, i32 0
  store %struct.cbq_class** %21, %struct.cbq_class*** %4, align 8
  %22 = load %struct.cbq_class**, %struct.cbq_class*** %4, align 8
  %23 = load %struct.cbq_class*, %struct.cbq_class** %22, align 8
  store %struct.cbq_class* %23, %struct.cbq_class** %3, align 8
  br label %24

24:                                               ; preds = %36, %19
  %25 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %26 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %27 = icmp eq %struct.cbq_class* %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %30 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %29, i32 0, i32 0
  %31 = load %struct.cbq_class*, %struct.cbq_class** %30, align 8
  %32 = load %struct.cbq_class**, %struct.cbq_class*** %4, align 8
  store %struct.cbq_class* %31, %struct.cbq_class** %32, align 8
  br label %43

33:                                               ; preds = %24
  %34 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %35 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %34, i32 0, i32 0
  store %struct.cbq_class** %35, %struct.cbq_class*** %4, align 8
  br label %36

36:                                               ; preds = %33
  %37 = load %struct.cbq_class**, %struct.cbq_class*** %4, align 8
  %38 = load %struct.cbq_class*, %struct.cbq_class** %37, align 8
  store %struct.cbq_class* %38, %struct.cbq_class** %3, align 8
  %39 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %40 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %39, i32 0, i32 0
  %41 = load %struct.cbq_class*, %struct.cbq_class** %40, align 8
  %42 = icmp ne %struct.cbq_class* %38, %41
  br i1 %42, label %24, label %43

43:                                               ; preds = %36, %28
  %44 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %45 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.cbq_class*, %struct.cbq_class** %47, align 8
  %49 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %50 = icmp eq %struct.cbq_class* %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %43
  %52 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %53 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %52, i32 0, i32 0
  %54 = load %struct.cbq_class*, %struct.cbq_class** %53, align 8
  %55 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %56 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store %struct.cbq_class* %54, %struct.cbq_class** %58, align 8
  %59 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %60 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %59, i32 0, i32 0
  %61 = load %struct.cbq_class*, %struct.cbq_class** %60, align 8
  %62 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %63 = icmp eq %struct.cbq_class* %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %51
  %65 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %66 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store %struct.cbq_class* null, %struct.cbq_class** %68, align 8
  br label %69

69:                                               ; preds = %64, %51
  br label %70

70:                                               ; preds = %69, %43
  br label %79

71:                                               ; preds = %1
  %72 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %73 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %72, i32 0, i32 0
  %74 = load %struct.cbq_class*, %struct.cbq_class** %73, align 8
  %75 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %76 = icmp ne %struct.cbq_class* %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @WARN_ON(i32 %77)
  br label %79

79:                                               ; preds = %71, %70
  ret void
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(i32) #1

declare dso_local i32 @qdisc_class_hash_remove(i32*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
