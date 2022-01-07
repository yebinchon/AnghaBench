; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_register_qdisc.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_register_qdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc_ops = type { %struct.Qdisc_ops*, %struct.Qdisc_class_ops*, i32*, i32*, i32*, i32 }
%struct.Qdisc_class_ops = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32*, i32*, i32* }

@EEXIST = common dso_local global i32 0, align 4
@qdisc_mod_lock = common dso_local global i32 0, align 4
@qdisc_base = common dso_local global %struct.Qdisc_ops* null, align 8
@noop_qdisc_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_qdisc(%struct.Qdisc_ops* %0) #0 {
  %2 = alloca %struct.Qdisc_ops*, align 8
  %3 = alloca %struct.Qdisc_ops*, align 8
  %4 = alloca %struct.Qdisc_ops**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Qdisc_class_ops*, align 8
  store %struct.Qdisc_ops* %0, %struct.Qdisc_ops** %2, align 8
  %7 = load i32, i32* @EEXIST, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = call i32 @write_lock(i32* @qdisc_mod_lock)
  store %struct.Qdisc_ops** @qdisc_base, %struct.Qdisc_ops*** %4, align 8
  br label %10

10:                                               ; preds = %25, %1
  %11 = load %struct.Qdisc_ops**, %struct.Qdisc_ops*** %4, align 8
  %12 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %11, align 8
  store %struct.Qdisc_ops* %12, %struct.Qdisc_ops** %3, align 8
  %13 = icmp ne %struct.Qdisc_ops* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %2, align 8
  %16 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %3, align 8
  %19 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @strcmp(i32 %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %108

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %3, align 8
  %27 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %26, i32 0, i32 0
  store %struct.Qdisc_ops** %27, %struct.Qdisc_ops*** %4, align 8
  br label %10

28:                                               ; preds = %10
  %29 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %2, align 8
  %30 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @noop_qdisc_ops, i32 0, i32 2), align 8
  %35 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %2, align 8
  %36 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %35, i32 0, i32 4
  store i32* %34, i32** %36, align 8
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %2, align 8
  %39 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %2, align 8
  %44 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @noop_qdisc_ops, i32 0, i32 1), align 8
  %49 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %2, align 8
  %50 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %49, i32 0, i32 3
  store i32* %48, i32** %50, align 8
  br label %52

51:                                               ; preds = %42
  br label %111

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %37
  %54 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %2, align 8
  %55 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @noop_qdisc_ops, i32 0, i32 0), align 8
  %60 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %2, align 8
  %61 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %60, i32 0, i32 2
  store i32* %59, i32** %61, align 8
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %2, align 8
  %64 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %63, i32 0, i32 1
  %65 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %64, align 8
  %66 = icmp ne %struct.Qdisc_class_ops* %65, null
  br i1 %66, label %67, label %103

67:                                               ; preds = %62
  %68 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %2, align 8
  %69 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %68, i32 0, i32 1
  %70 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %69, align 8
  store %struct.Qdisc_class_ops* %70, %struct.Qdisc_class_ops** %6, align 8
  %71 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %6, align 8
  %72 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %67
  %76 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %6, align 8
  %77 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %6, align 8
  %82 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80, %75, %67
  br label %111

86:                                               ; preds = %80
  %87 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %6, align 8
  %88 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %6, align 8
  %93 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %6, align 8
  %98 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96, %91
  br label %111

102:                                              ; preds = %96, %86
  br label %103

103:                                              ; preds = %102, %62
  %104 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %2, align 8
  %105 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %104, i32 0, i32 0
  store %struct.Qdisc_ops* null, %struct.Qdisc_ops** %105, align 8
  %106 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %2, align 8
  %107 = load %struct.Qdisc_ops**, %struct.Qdisc_ops*** %4, align 8
  store %struct.Qdisc_ops* %106, %struct.Qdisc_ops** %107, align 8
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %111, %103, %23
  %109 = call i32 @write_unlock(i32* @qdisc_mod_lock)
  %110 = load i32, i32* %5, align 4
  ret i32 %110

111:                                              ; preds = %101, %85, %51
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %5, align 4
  br label %108
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
