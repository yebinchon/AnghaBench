; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_em_meta.c_meta_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_em_meta.c_meta_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_pkt_info = type { i32 }
%struct.meta_value = type { i32, i32 }
%struct.meta_obj = type { i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.sk_buff*, %struct.tcf_pkt_info*, %struct.meta_value*, %struct.meta_obj*, i32*)* }
%struct.TYPE_3__ = type { i32 (%struct.meta_value*, %struct.meta_obj*)* }

@TCF_META_ID_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_pkt_info*, %struct.meta_value*, %struct.meta_obj*)* @meta_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meta_get(%struct.sk_buff* %0, %struct.tcf_pkt_info* %1, %struct.meta_value* %2, %struct.meta_obj* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tcf_pkt_info*, align 8
  %8 = alloca %struct.meta_value*, align 8
  %9 = alloca %struct.meta_obj*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tcf_pkt_info* %1, %struct.tcf_pkt_info** %7, align 8
  store %struct.meta_value* %2, %struct.meta_value** %8, align 8
  store %struct.meta_obj* %3, %struct.meta_obj** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.meta_value*, %struct.meta_value** %8, align 8
  %12 = call i64 @meta_id(%struct.meta_value* %11)
  %13 = load i64, i64* @TCF_META_ID_VALUE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %4
  %16 = load %struct.meta_value*, %struct.meta_value** %8, align 8
  %17 = getelementptr inbounds %struct.meta_value, %struct.meta_value* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.meta_obj*, %struct.meta_obj** %9, align 8
  %20 = getelementptr inbounds %struct.meta_obj, %struct.meta_obj* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.meta_value*, %struct.meta_value** %8, align 8
  %22 = getelementptr inbounds %struct.meta_value, %struct.meta_value* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.meta_obj*, %struct.meta_obj** %9, align 8
  %25 = getelementptr inbounds %struct.meta_obj, %struct.meta_obj* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  store i32 0, i32* %5, align 4
  br label %55

26:                                               ; preds = %4
  %27 = load %struct.meta_value*, %struct.meta_value** %8, align 8
  %28 = call %struct.TYPE_4__* @meta_ops(%struct.meta_value* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (%struct.sk_buff*, %struct.tcf_pkt_info*, %struct.meta_value*, %struct.meta_obj*, i32*)*, i32 (%struct.sk_buff*, %struct.tcf_pkt_info*, %struct.meta_value*, %struct.meta_obj*, i32*)** %29, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = load %struct.tcf_pkt_info*, %struct.tcf_pkt_info** %7, align 8
  %33 = load %struct.meta_value*, %struct.meta_value** %8, align 8
  %34 = load %struct.meta_obj*, %struct.meta_obj** %9, align 8
  %35 = call i32 %30(%struct.sk_buff* %31, %struct.tcf_pkt_info* %32, %struct.meta_value* %33, %struct.meta_obj* %34, i32* %10)
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %55

40:                                               ; preds = %26
  %41 = load %struct.meta_value*, %struct.meta_value** %8, align 8
  %42 = call %struct.TYPE_3__* @meta_type_ops(%struct.meta_value* %41)
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.meta_value*, %struct.meta_obj*)*, i32 (%struct.meta_value*, %struct.meta_obj*)** %43, align 8
  %45 = icmp ne i32 (%struct.meta_value*, %struct.meta_obj*)* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.meta_value*, %struct.meta_value** %8, align 8
  %48 = call %struct.TYPE_3__* @meta_type_ops(%struct.meta_value* %47)
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32 (%struct.meta_value*, %struct.meta_obj*)*, i32 (%struct.meta_value*, %struct.meta_obj*)** %49, align 8
  %51 = load %struct.meta_value*, %struct.meta_value** %8, align 8
  %52 = load %struct.meta_obj*, %struct.meta_obj** %9, align 8
  %53 = call i32 %50(%struct.meta_value* %51, %struct.meta_obj* %52)
  br label %54

54:                                               ; preds = %46, %40
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %38, %15
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @meta_id(%struct.meta_value*) #1

declare dso_local %struct.TYPE_4__* @meta_ops(%struct.meta_value*) #1

declare dso_local %struct.TYPE_3__* @meta_type_ops(%struct.meta_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
