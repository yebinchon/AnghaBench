; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_dump_key_ip.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_dump_key_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.flow_dissector_key_ip = type { i32, i32 }

@TCA_FLOWER_KEY_ENC_IP_TOS = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_IP_TOS = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ENC_IP_TTL = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_IP_TTL = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ENC_IP_TOS_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_IP_TOS_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ENC_IP_TTL_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_IP_TTL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.flow_dissector_key_ip*, %struct.flow_dissector_key_ip*)* @fl_dump_key_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_dump_key_ip(%struct.sk_buff* %0, i32 %1, %struct.flow_dissector_key_ip* %2, %struct.flow_dissector_key_ip* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.flow_dissector_key_ip*, align 8
  %9 = alloca %struct.flow_dissector_key_ip*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.flow_dissector_key_ip* %2, %struct.flow_dissector_key_ip** %8, align 8
  store %struct.flow_dissector_key_ip* %3, %struct.flow_dissector_key_ip** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @TCA_FLOWER_KEY_ENC_IP_TOS, align 4
  br label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @TCA_FLOWER_KEY_IP_TOS, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @TCA_FLOWER_KEY_ENC_IP_TTL, align 4
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @TCA_FLOWER_KEY_IP_TTL, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @TCA_FLOWER_KEY_ENC_IP_TOS_MASK, align 4
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @TCA_FLOWER_KEY_IP_TOS_MASK, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @TCA_FLOWER_KEY_ENC_IP_TTL_MASK, align 4
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @TCA_FLOWER_KEY_IP_TTL_MASK, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %13, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = load %struct.flow_dissector_key_ip*, %struct.flow_dissector_key_ip** %8, align 8
  %48 = getelementptr inbounds %struct.flow_dissector_key_ip, %struct.flow_dissector_key_ip* %47, i32 0, i32 1
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.flow_dissector_key_ip*, %struct.flow_dissector_key_ip** %9, align 8
  %51 = getelementptr inbounds %struct.flow_dissector_key_ip, %struct.flow_dissector_key_ip* %50, i32 0, i32 1
  %52 = load i32, i32* %12, align 4
  %53 = call i64 @fl_dump_key_val(%struct.sk_buff* %46, i32* %48, i32 %49, i32* %51, i32 %52, i32 4)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %44
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = load %struct.flow_dissector_key_ip*, %struct.flow_dissector_key_ip** %8, align 8
  %58 = getelementptr inbounds %struct.flow_dissector_key_ip, %struct.flow_dissector_key_ip* %57, i32 0, i32 0
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.flow_dissector_key_ip*, %struct.flow_dissector_key_ip** %9, align 8
  %61 = getelementptr inbounds %struct.flow_dissector_key_ip, %struct.flow_dissector_key_ip* %60, i32 0, i32 0
  %62 = load i32, i32* %13, align 4
  %63 = call i64 @fl_dump_key_val(%struct.sk_buff* %56, i32* %58, i32 %59, i32* %61, i32 %62, i32 4)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55, %44
  store i32 -1, i32* %5, align 4
  br label %67

66:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %65
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @fl_dump_key_val(%struct.sk_buff*, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
