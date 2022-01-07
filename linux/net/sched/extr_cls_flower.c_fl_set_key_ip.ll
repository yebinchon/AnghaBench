; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_set_key_ip.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_set_key_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.flow_dissector_key_ip = type { i32, i32 }

@TCA_FLOWER_KEY_ENC_IP_TOS = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_IP_TOS = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ENC_IP_TTL = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_IP_TTL = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ENC_IP_TOS_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_IP_TOS_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ENC_IP_TTL_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_IP_TTL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlattr**, i32, %struct.flow_dissector_key_ip*, %struct.flow_dissector_key_ip*)* @fl_set_key_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fl_set_key_ip(%struct.nlattr** %0, i32 %1, %struct.flow_dissector_key_ip* %2, %struct.flow_dissector_key_ip* %3) #0 {
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.flow_dissector_key_ip*, align 8
  %8 = alloca %struct.flow_dissector_key_ip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.flow_dissector_key_ip* %2, %struct.flow_dissector_key_ip** %7, align 8
  store %struct.flow_dissector_key_ip* %3, %struct.flow_dissector_key_ip** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @TCA_FLOWER_KEY_ENC_IP_TOS, align 4
  br label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @TCA_FLOWER_KEY_IP_TOS, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @TCA_FLOWER_KEY_ENC_IP_TTL, align 4
  br label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @TCA_FLOWER_KEY_IP_TTL, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @TCA_FLOWER_KEY_ENC_IP_TOS_MASK, align 4
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @TCA_FLOWER_KEY_IP_TOS_MASK, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @TCA_FLOWER_KEY_ENC_IP_TTL_MASK, align 4
  br label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @TCA_FLOWER_KEY_IP_TTL_MASK, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %12, align 4
  %45 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %46 = load %struct.flow_dissector_key_ip*, %struct.flow_dissector_key_ip** %7, align 8
  %47 = getelementptr inbounds %struct.flow_dissector_key_ip, %struct.flow_dissector_key_ip* %46, i32 0, i32 1
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.flow_dissector_key_ip*, %struct.flow_dissector_key_ip** %8, align 8
  %50 = getelementptr inbounds %struct.flow_dissector_key_ip, %struct.flow_dissector_key_ip* %49, i32 0, i32 1
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @fl_set_key_val(%struct.nlattr** %45, i32* %47, i32 %48, i32* %50, i32 %51, i32 4)
  %53 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %54 = load %struct.flow_dissector_key_ip*, %struct.flow_dissector_key_ip** %7, align 8
  %55 = getelementptr inbounds %struct.flow_dissector_key_ip, %struct.flow_dissector_key_ip* %54, i32 0, i32 0
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.flow_dissector_key_ip*, %struct.flow_dissector_key_ip** %8, align 8
  %58 = getelementptr inbounds %struct.flow_dissector_key_ip, %struct.flow_dissector_key_ip* %57, i32 0, i32 0
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @fl_set_key_val(%struct.nlattr** %53, i32* %55, i32 %56, i32* %58, i32 %59, i32 4)
  ret void
}

declare dso_local i32 @fl_set_key_val(%struct.nlattr**, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
