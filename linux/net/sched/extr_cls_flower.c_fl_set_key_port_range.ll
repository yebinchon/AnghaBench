; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_set_key_port_range.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_set_key_port_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.fl_flow_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@TCA_FLOWER_KEY_PORT_DST_MIN = common dso_local global i32 0, align 4
@TCA_FLOWER_UNSPEC = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_PORT_DST_MAX = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_PORT_SRC_MIN = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_PORT_SRC_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.fl_flow_key*, %struct.fl_flow_key*)* @fl_set_key_port_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_set_key_port_range(%struct.nlattr** %0, %struct.fl_flow_key* %1, %struct.fl_flow_key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.fl_flow_key*, align 8
  %7 = alloca %struct.fl_flow_key*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %5, align 8
  store %struct.fl_flow_key* %1, %struct.fl_flow_key** %6, align 8
  store %struct.fl_flow_key* %2, %struct.fl_flow_key** %7, align 8
  %8 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %9 = load %struct.fl_flow_key*, %struct.fl_flow_key** %6, align 8
  %10 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* @TCA_FLOWER_KEY_PORT_DST_MIN, align 4
  %13 = load %struct.fl_flow_key*, %struct.fl_flow_key** %7, align 8
  %14 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* @TCA_FLOWER_UNSPEC, align 4
  %17 = call i32 @fl_set_key_val(%struct.nlattr** %8, i64* %11, i32 %12, i64* %15, i32 %16, i32 8)
  %18 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %19 = load %struct.fl_flow_key*, %struct.fl_flow_key** %6, align 8
  %20 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* @TCA_FLOWER_KEY_PORT_DST_MAX, align 4
  %23 = load %struct.fl_flow_key*, %struct.fl_flow_key** %7, align 8
  %24 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* @TCA_FLOWER_UNSPEC, align 4
  %27 = call i32 @fl_set_key_val(%struct.nlattr** %18, i64* %21, i32 %22, i64* %25, i32 %26, i32 8)
  %28 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %29 = load %struct.fl_flow_key*, %struct.fl_flow_key** %6, align 8
  %30 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* @TCA_FLOWER_KEY_PORT_SRC_MIN, align 4
  %33 = load %struct.fl_flow_key*, %struct.fl_flow_key** %7, align 8
  %34 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* @TCA_FLOWER_UNSPEC, align 4
  %37 = call i32 @fl_set_key_val(%struct.nlattr** %28, i64* %31, i32 %32, i64* %35, i32 %36, i32 8)
  %38 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %39 = load %struct.fl_flow_key*, %struct.fl_flow_key** %6, align 8
  %40 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* @TCA_FLOWER_KEY_PORT_SRC_MAX, align 4
  %43 = load %struct.fl_flow_key*, %struct.fl_flow_key** %7, align 8
  %44 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* @TCA_FLOWER_UNSPEC, align 4
  %47 = call i32 @fl_set_key_val(%struct.nlattr** %38, i64* %41, i32 %42, i64* %45, i32 %46, i32 8)
  %48 = load %struct.fl_flow_key*, %struct.fl_flow_key** %7, align 8
  %49 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %3
  %54 = load %struct.fl_flow_key*, %struct.fl_flow_key** %7, align 8
  %55 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load %struct.fl_flow_key*, %struct.fl_flow_key** %6, align 8
  %61 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @htons(i64 %63)
  %65 = load %struct.fl_flow_key*, %struct.fl_flow_key** %6, align 8
  %66 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @htons(i64 %68)
  %70 = icmp sle i64 %64, %69
  br i1 %70, label %95, label %71

71:                                               ; preds = %59, %53, %3
  %72 = load %struct.fl_flow_key*, %struct.fl_flow_key** %7, align 8
  %73 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %71
  %78 = load %struct.fl_flow_key*, %struct.fl_flow_key** %7, align 8
  %79 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %77
  %84 = load %struct.fl_flow_key*, %struct.fl_flow_key** %6, align 8
  %85 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @htons(i64 %87)
  %89 = load %struct.fl_flow_key*, %struct.fl_flow_key** %6, align 8
  %90 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @htons(i64 %92)
  %94 = icmp sle i64 %88, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %83, %59
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %99

98:                                               ; preds = %83, %77, %71
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %95
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @fl_set_key_val(%struct.nlattr**, i64*, i32, i64*, i32, i32) #1

declare dso_local i64 @htons(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
