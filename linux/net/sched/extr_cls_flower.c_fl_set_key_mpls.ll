; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_set_key_mpls.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_set_key_mpls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.flow_dissector_key_mpls = type { i32, i32, i32, i8* }

@TCA_FLOWER_KEY_MPLS_TTL = common dso_local global i64 0, align 8
@MPLS_TTL_MASK = common dso_local global i8* null, align 8
@TCA_FLOWER_KEY_MPLS_BOS = common dso_local global i64 0, align 8
@MPLS_BOS_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_MPLS_TC = common dso_local global i64 0, align 8
@MPLS_TC_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_MPLS_LABEL = common dso_local global i64 0, align 8
@MPLS_LABEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.flow_dissector_key_mpls*, %struct.flow_dissector_key_mpls*)* @fl_set_key_mpls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_set_key_mpls(%struct.nlattr** %0, %struct.flow_dissector_key_mpls* %1, %struct.flow_dissector_key_mpls* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.flow_dissector_key_mpls*, align 8
  %7 = alloca %struct.flow_dissector_key_mpls*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %5, align 8
  store %struct.flow_dissector_key_mpls* %1, %struct.flow_dissector_key_mpls** %6, align 8
  store %struct.flow_dissector_key_mpls* %2, %struct.flow_dissector_key_mpls** %7, align 8
  %11 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %12 = load i64, i64* @TCA_FLOWER_KEY_MPLS_TTL, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %12
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %18 = load i64, i64* @TCA_FLOWER_KEY_MPLS_TTL, align 8
  %19 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %18
  %20 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %21 = call i8* @nla_get_u8(%struct.nlattr* %20)
  %22 = load %struct.flow_dissector_key_mpls*, %struct.flow_dissector_key_mpls** %6, align 8
  %23 = getelementptr inbounds %struct.flow_dissector_key_mpls, %struct.flow_dissector_key_mpls* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @MPLS_TTL_MASK, align 8
  %25 = load %struct.flow_dissector_key_mpls*, %struct.flow_dissector_key_mpls** %7, align 8
  %26 = getelementptr inbounds %struct.flow_dissector_key_mpls, %struct.flow_dissector_key_mpls* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  br label %27

27:                                               ; preds = %16, %3
  %28 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %29 = load i64, i64* @TCA_FLOWER_KEY_MPLS_BOS, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = icmp ne %struct.nlattr* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %35 = load i64, i64* @TCA_FLOWER_KEY_MPLS_BOS, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = call i8* @nla_get_u8(%struct.nlattr* %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @MPLS_BOS_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %111

48:                                               ; preds = %33
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.flow_dissector_key_mpls*, %struct.flow_dissector_key_mpls** %6, align 8
  %51 = getelementptr inbounds %struct.flow_dissector_key_mpls, %struct.flow_dissector_key_mpls* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @MPLS_BOS_MASK, align 4
  %53 = load %struct.flow_dissector_key_mpls*, %struct.flow_dissector_key_mpls** %7, align 8
  %54 = getelementptr inbounds %struct.flow_dissector_key_mpls, %struct.flow_dissector_key_mpls* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %48, %27
  %56 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %57 = load i64, i64* @TCA_FLOWER_KEY_MPLS_TC, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %56, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = icmp ne %struct.nlattr* %59, null
  br i1 %60, label %61, label %83

61:                                               ; preds = %55
  %62 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %63 = load i64, i64* @TCA_FLOWER_KEY_MPLS_TC, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %62, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = call i8* @nla_get_u8(%struct.nlattr* %65)
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @MPLS_TC_MASK, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %61
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %111

76:                                               ; preds = %61
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.flow_dissector_key_mpls*, %struct.flow_dissector_key_mpls** %6, align 8
  %79 = getelementptr inbounds %struct.flow_dissector_key_mpls, %struct.flow_dissector_key_mpls* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @MPLS_TC_MASK, align 4
  %81 = load %struct.flow_dissector_key_mpls*, %struct.flow_dissector_key_mpls** %7, align 8
  %82 = getelementptr inbounds %struct.flow_dissector_key_mpls, %struct.flow_dissector_key_mpls* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %76, %55
  %84 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %85 = load i64, i64* @TCA_FLOWER_KEY_MPLS_LABEL, align 8
  %86 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %84, i64 %85
  %87 = load %struct.nlattr*, %struct.nlattr** %86, align 8
  %88 = icmp ne %struct.nlattr* %87, null
  br i1 %88, label %89, label %110

89:                                               ; preds = %83
  %90 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %91 = load i64, i64* @TCA_FLOWER_KEY_MPLS_LABEL, align 8
  %92 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %90, i64 %91
  %93 = load %struct.nlattr*, %struct.nlattr** %92, align 8
  %94 = call i32 @nla_get_u32(%struct.nlattr* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @MPLS_LABEL_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %95, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %111

103:                                              ; preds = %89
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.flow_dissector_key_mpls*, %struct.flow_dissector_key_mpls** %6, align 8
  %106 = getelementptr inbounds %struct.flow_dissector_key_mpls, %struct.flow_dissector_key_mpls* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @MPLS_LABEL_MASK, align 4
  %108 = load %struct.flow_dissector_key_mpls*, %struct.flow_dissector_key_mpls** %7, align 8
  %109 = getelementptr inbounds %struct.flow_dissector_key_mpls, %struct.flow_dissector_key_mpls* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %103, %83
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %100, %73, %45
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i8* @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
