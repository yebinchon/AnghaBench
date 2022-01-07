; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_create_fwspec_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_create_fwspec_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_fwspec = type { i64 }
%struct.irq_data = type { i32 }

@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@DOMAIN_BUS_WIRED = common dso_local global i32 0, align 4
@DOMAIN_BUS_ANY = common dso_local global i32 0, align 4
@irq_default_domain = common dso_local global %struct.irq_domain* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"no irq domain found for %s !\0A\00", align 1
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"type mismatch, failed to map hwirq-%lu for %s!\0A\00", align 1
@NUMA_NO_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_create_fwspec_mapping(%struct.irq_fwspec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_fwspec*, align 8
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_fwspec* %0, %struct.irq_fwspec** %3, align 8
  %9 = load i32, i32* @IRQ_TYPE_NONE, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.irq_fwspec*, %struct.irq_fwspec** %3, align 8
  %11 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.irq_fwspec*, %struct.irq_fwspec** %3, align 8
  %16 = load i32, i32* @DOMAIN_BUS_WIRED, align 4
  %17 = call %struct.irq_domain* @irq_find_matching_fwspec(%struct.irq_fwspec* %15, i32 %16)
  store %struct.irq_domain* %17, %struct.irq_domain** %4, align 8
  %18 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %19 = icmp ne %struct.irq_domain* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load %struct.irq_fwspec*, %struct.irq_fwspec** %3, align 8
  %22 = load i32, i32* @DOMAIN_BUS_ANY, align 4
  %23 = call %struct.irq_domain* @irq_find_matching_fwspec(%struct.irq_fwspec* %21, i32 %22)
  store %struct.irq_domain* %23, %struct.irq_domain** %4, align 8
  br label %24

24:                                               ; preds = %20, %14
  br label %27

25:                                               ; preds = %1
  %26 = load %struct.irq_domain*, %struct.irq_domain** @irq_default_domain, align 8
  store %struct.irq_domain* %26, %struct.irq_domain** %4, align 8
  br label %27

27:                                               ; preds = %25, %24
  %28 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %29 = icmp ne %struct.irq_domain* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load %struct.irq_fwspec*, %struct.irq_fwspec** %3, align 8
  %32 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @to_of_node(i64 %33)
  %35 = call i32 @of_node_full_name(i32 %34)
  %36 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 0, i32* %2, align 4
  br label %138

37:                                               ; preds = %27
  %38 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %39 = load %struct.irq_fwspec*, %struct.irq_fwspec** %3, align 8
  %40 = call i64 @irq_domain_translate(%struct.irq_domain* %38, %struct.irq_fwspec* %39, i32* %6, i32* %7)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %138

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = call i64 @WARN_ON(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %50, %43
  %55 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @irq_find_mapping(%struct.irq_domain* %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %95

60:                                               ; preds = %54
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @irq_get_trigger_type(i32 %66)
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64, %60
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %2, align 4
  br label %138

71:                                               ; preds = %64
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @irq_get_trigger_type(i32 %72)
  %74 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = call %struct.irq_data* @irq_get_irq_data(i32 %77)
  store %struct.irq_data* %78, %struct.irq_data** %5, align 8
  %79 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %80 = icmp ne %struct.irq_data* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %138

82:                                               ; preds = %76
  %83 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @irqd_set_trigger_type(%struct.irq_data* %83, i32 %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %2, align 4
  br label %138

87:                                               ; preds = %71
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.irq_fwspec*, %struct.irq_fwspec** %3, align 8
  %90 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @to_of_node(i64 %91)
  %93 = call i32 @of_node_full_name(i32 %92)
  %94 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %93)
  store i32 0, i32* %2, align 4
  br label %138

95:                                               ; preds = %54
  %96 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %97 = call i64 @irq_domain_is_hierarchy(%struct.irq_domain* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %101 = load i32, i32* @NUMA_NO_NODE, align 4
  %102 = load %struct.irq_fwspec*, %struct.irq_fwspec** %3, align 8
  %103 = call i32 @irq_domain_alloc_irqs(%struct.irq_domain* %100, i32 1, i32 %101, %struct.irq_fwspec* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp sle i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %138

107:                                              ; preds = %99
  br label %117

108:                                              ; preds = %95
  %109 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @irq_create_mapping(%struct.irq_domain* %109, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %2, align 4
  br label %138

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %116, %107
  %118 = load i32, i32* %8, align 4
  %119 = call %struct.irq_data* @irq_get_irq_data(i32 %118)
  store %struct.irq_data* %119, %struct.irq_data** %5, align 8
  %120 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %121 = icmp ne %struct.irq_data* %120, null
  br i1 %121, label %133, label %122

122:                                              ; preds = %117
  %123 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %124 = call i64 @irq_domain_is_hierarchy(%struct.irq_domain* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @irq_domain_free_irqs(i32 %127, i32 1)
  br label %132

129:                                              ; preds = %122
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @irq_dispose_mapping(i32 %130)
  br label %132

132:                                              ; preds = %129, %126
  store i32 0, i32* %2, align 4
  br label %138

133:                                              ; preds = %117
  %134 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @irqd_set_trigger_type(%struct.irq_data* %134, i32 %135)
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %133, %132, %114, %106, %87, %82, %81, %69, %42, %30
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.irq_domain* @irq_find_matching_fwspec(%struct.irq_fwspec*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local i32 @of_node_full_name(i32) #1

declare dso_local i32 @to_of_node(i64) #1

declare dso_local i64 @irq_domain_translate(%struct.irq_domain*, %struct.irq_fwspec*, i32*, i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @irq_find_mapping(%struct.irq_domain*, i32) #1

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local i32 @irqd_set_trigger_type(%struct.irq_data*, i32) #1

declare dso_local i64 @irq_domain_is_hierarchy(%struct.irq_domain*) #1

declare dso_local i32 @irq_domain_alloc_irqs(%struct.irq_domain*, i32, i32, %struct.irq_fwspec*) #1

declare dso_local i32 @irq_create_mapping(%struct.irq_domain*, i32) #1

declare dso_local i32 @irq_domain_free_irqs(i32, i32) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
