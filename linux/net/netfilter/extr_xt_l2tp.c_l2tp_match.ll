; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_l2tp.c_l2tp_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_l2tp.c_l2tp_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_l2tp_info = type { i32, i64, i32, i64, i64 }
%struct.l2tp_data = type { i64, i32, i64, i64 }

@XT_L2TP_TYPE = common dso_local global i32 0, align 4
@XT_L2TP_VERSION = common dso_local global i32 0, align 4
@XT_L2TP_TID = common dso_local global i32 0, align 4
@XT_L2TP_TYPE_CONTROL = common dso_local global i64 0, align 8
@XT_L2TP_SID = common dso_local global i32 0, align 4
@XT_L2TP_TYPE_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_l2tp_info*, %struct.l2tp_data*)* @l2tp_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_match(%struct.xt_l2tp_info* %0, %struct.l2tp_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xt_l2tp_info*, align 8
  %5 = alloca %struct.l2tp_data*, align 8
  store %struct.xt_l2tp_info* %0, %struct.xt_l2tp_info** %4, align 8
  store %struct.l2tp_data* %1, %struct.l2tp_data** %5, align 8
  %6 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %7 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @XT_L2TP_TYPE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %14 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.l2tp_data*, %struct.l2tp_data** %5, align 8
  %17 = getelementptr inbounds %struct.l2tp_data, %struct.l2tp_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %87

21:                                               ; preds = %12, %2
  %22 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %23 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @XT_L2TP_VERSION, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %30 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.l2tp_data*, %struct.l2tp_data** %5, align 8
  %33 = getelementptr inbounds %struct.l2tp_data, %struct.l2tp_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %87

37:                                               ; preds = %28, %21
  %38 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %39 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @XT_L2TP_TID, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %37
  %45 = load %struct.l2tp_data*, %struct.l2tp_data** %5, align 8
  %46 = getelementptr inbounds %struct.l2tp_data, %struct.l2tp_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @XT_L2TP_TYPE_CONTROL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %44
  %51 = load %struct.l2tp_data*, %struct.l2tp_data** %5, align 8
  %52 = getelementptr inbounds %struct.l2tp_data, %struct.l2tp_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %64

55:                                               ; preds = %50, %44
  %56 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %57 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.l2tp_data*, %struct.l2tp_data** %5, align 8
  %60 = getelementptr inbounds %struct.l2tp_data, %struct.l2tp_data* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %87

64:                                               ; preds = %55, %50, %37
  %65 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %66 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @XT_L2TP_SID, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %64
  %72 = load %struct.l2tp_data*, %struct.l2tp_data** %5, align 8
  %73 = getelementptr inbounds %struct.l2tp_data, %struct.l2tp_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @XT_L2TP_TYPE_DATA, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %79 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.l2tp_data*, %struct.l2tp_data** %5, align 8
  %82 = getelementptr inbounds %struct.l2tp_data, %struct.l2tp_data* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %87

86:                                               ; preds = %77, %71, %64
  store i32 1, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %85, %63, %36, %20
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
