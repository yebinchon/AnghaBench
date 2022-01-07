; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_set_feature.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_set_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.audit_features = type { i32, i32, i32 }

@AUDIT_LAST_FEATURE = common dso_local global i32 0, align 4
@audit_feature_names = common dso_local global i32 0, align 4
@af = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @audit_set_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_set_feature(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.audit_features*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %16 = load i32, i32* @AUDIT_LAST_FEATURE, align 4
  %17 = add nsw i32 %16, 1
  %18 = load i32, i32* @audit_feature_names, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = icmp sgt i32 %17, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUILD_BUG_ON(i32 %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = call i32 @nlmsg_hdr(%struct.sk_buff* %23)
  %25 = call %struct.audit_features* @nlmsg_data(i32 %24)
  store %struct.audit_features* %25, %struct.audit_features** %4, align 8
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %75, %1
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @AUDIT_LAST_FEATURE, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %78

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @AUDIT_FEATURE_TO_MASK(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.audit_features*, %struct.audit_features** %4, align 8
  %35 = getelementptr inbounds %struct.audit_features, %struct.audit_features* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %75

40:                                               ; preds = %30
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @af, i32 0, i32 0), align 4
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %7, align 4
  %44 = load %struct.audit_features*, %struct.audit_features** %4, align 8
  %45 = getelementptr inbounds %struct.audit_features, %struct.audit_features* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %8, align 4
  %49 = load %struct.audit_features*, %struct.audit_features** %4, align 8
  %50 = getelementptr inbounds %struct.audit_features, %struct.audit_features* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @af, i32 0, i32 1), align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @af, i32 0, i32 1), align 4
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %40
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @audit_log_feature_change(i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 0)
  %72 = load i32, i32* @EPERM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %142

74:                                               ; preds = %61, %40
  br label %75

75:                                               ; preds = %74, %39
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %26

78:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %138, %78
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @AUDIT_LAST_FEATURE, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %141

83:                                               ; preds = %79
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @AUDIT_FEATURE_TO_MASK(i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.audit_features*, %struct.audit_features** %4, align 8
  %88 = getelementptr inbounds %struct.audit_features, %struct.audit_features* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %83
  br label %138

93:                                               ; preds = %83
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @af, i32 0, i32 0), align 4
  %95 = load i32, i32* %11, align 4
  %96 = and i32 %94, %95
  store i32 %96, i32* %12, align 4
  %97 = load %struct.audit_features*, %struct.audit_features** %4, align 8
  %98 = getelementptr inbounds %struct.audit_features, %struct.audit_features* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %11, align 4
  %101 = and i32 %99, %100
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @af, i32 0, i32 1), align 4
  %103 = load i32, i32* %11, align 4
  %104 = and i32 %102, %103
  store i32 %104, i32* %14, align 4
  %105 = load %struct.audit_features*, %struct.audit_features** %4, align 8
  %106 = getelementptr inbounds %struct.audit_features, %struct.audit_features* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @af, i32 0, i32 1), align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* %11, align 4
  %111 = and i32 %109, %110
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %93
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @audit_log_feature_change(i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 1)
  br label %122

122:                                              ; preds = %115, %93
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @af, i32 0, i32 0), align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @af, i32 0, i32 0), align 4
  br label %134

129:                                              ; preds = %122
  %130 = load i32, i32* %11, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @af, i32 0, i32 0), align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @af, i32 0, i32 0), align 4
  br label %134

134:                                              ; preds = %129, %125
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @af, i32 0, i32 1), align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @af, i32 0, i32 1), align 4
  br label %138

138:                                              ; preds = %134, %92
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %5, align 4
  br label %79

141:                                              ; preds = %79
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %65
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.audit_features* @nlmsg_data(i32) #1

declare dso_local i32 @nlmsg_hdr(%struct.sk_buff*) #1

declare dso_local i32 @AUDIT_FEATURE_TO_MASK(i32) #1

declare dso_local i32 @audit_log_feature_change(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
