; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_dump_key_mpls.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_dump_key_mpls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.flow_dissector_key_mpls = type { i64, i64, i64, i64 }

@TCA_FLOWER_KEY_MPLS_TTL = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_MPLS_TC = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_MPLS_LABEL = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_MPLS_BOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.flow_dissector_key_mpls*, %struct.flow_dissector_key_mpls*)* @fl_dump_key_mpls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_dump_key_mpls(%struct.sk_buff* %0, %struct.flow_dissector_key_mpls* %1, %struct.flow_dissector_key_mpls* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.flow_dissector_key_mpls*, align 8
  %7 = alloca %struct.flow_dissector_key_mpls*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.flow_dissector_key_mpls* %1, %struct.flow_dissector_key_mpls** %6, align 8
  store %struct.flow_dissector_key_mpls* %2, %struct.flow_dissector_key_mpls** %7, align 8
  %9 = load %struct.flow_dissector_key_mpls*, %struct.flow_dissector_key_mpls** %7, align 8
  %10 = call i32 @memchr_inv(%struct.flow_dissector_key_mpls* %9, i32 0, i32 32)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %82

13:                                               ; preds = %3
  %14 = load %struct.flow_dissector_key_mpls*, %struct.flow_dissector_key_mpls** %7, align 8
  %15 = getelementptr inbounds %struct.flow_dissector_key_mpls, %struct.flow_dissector_key_mpls* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = load i32, i32* @TCA_FLOWER_KEY_MPLS_TTL, align 4
  %21 = load %struct.flow_dissector_key_mpls*, %struct.flow_dissector_key_mpls** %6, align 8
  %22 = getelementptr inbounds %struct.flow_dissector_key_mpls, %struct.flow_dissector_key_mpls* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @nla_put_u8(%struct.sk_buff* %19, i32 %20, i64 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %82

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %13
  %31 = load %struct.flow_dissector_key_mpls*, %struct.flow_dissector_key_mpls** %7, align 8
  %32 = getelementptr inbounds %struct.flow_dissector_key_mpls, %struct.flow_dissector_key_mpls* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load i32, i32* @TCA_FLOWER_KEY_MPLS_TC, align 4
  %38 = load %struct.flow_dissector_key_mpls*, %struct.flow_dissector_key_mpls** %6, align 8
  %39 = getelementptr inbounds %struct.flow_dissector_key_mpls, %struct.flow_dissector_key_mpls* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @nla_put_u8(%struct.sk_buff* %36, i32 %37, i64 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %82

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %30
  %48 = load %struct.flow_dissector_key_mpls*, %struct.flow_dissector_key_mpls** %7, align 8
  %49 = getelementptr inbounds %struct.flow_dissector_key_mpls, %struct.flow_dissector_key_mpls* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load i32, i32* @TCA_FLOWER_KEY_MPLS_LABEL, align 4
  %55 = load %struct.flow_dissector_key_mpls*, %struct.flow_dissector_key_mpls** %6, align 8
  %56 = getelementptr inbounds %struct.flow_dissector_key_mpls, %struct.flow_dissector_key_mpls* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @nla_put_u32(%struct.sk_buff* %53, i32 %54, i64 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %82

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %47
  %65 = load %struct.flow_dissector_key_mpls*, %struct.flow_dissector_key_mpls** %7, align 8
  %66 = getelementptr inbounds %struct.flow_dissector_key_mpls, %struct.flow_dissector_key_mpls* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = load i32, i32* @TCA_FLOWER_KEY_MPLS_BOS, align 4
  %72 = load %struct.flow_dissector_key_mpls*, %struct.flow_dissector_key_mpls** %6, align 8
  %73 = getelementptr inbounds %struct.flow_dissector_key_mpls, %struct.flow_dissector_key_mpls* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @nla_put_u8(%struct.sk_buff* %70, i32 %71, i64 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %82

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %64
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %78, %61, %44, %27, %12
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @memchr_inv(%struct.flow_dissector_key_mpls*, i32, i32) #1

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
