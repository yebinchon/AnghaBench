; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_affinity.c_irq_create_affinity_masks.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_affinity.c_irq_create_affinity_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_affinity_desc = type { i32, i32 }
%struct.irq_affinity = type { i32, i32, i32, i32*, i32 (%struct.irq_affinity*, i32)* }

@IRQ_AFFINITY_MAX_SETS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@irq_default_affinity = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.irq_affinity_desc* @irq_create_affinity_masks(i32 %0, %struct.irq_affinity* %1) #0 {
  %3 = alloca %struct.irq_affinity_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_affinity*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.irq_affinity_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.irq_affinity* %1, %struct.irq_affinity** %5, align 8
  store %struct.irq_affinity_desc* null, %struct.irq_affinity_desc** %10, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.irq_affinity*, %struct.irq_affinity** %5, align 8
  %15 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.irq_affinity*, %struct.irq_affinity** %5, align 8
  %18 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add i32 %16, %19
  %21 = icmp ugt i32 %13, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.irq_affinity*, %struct.irq_affinity** %5, align 8
  %25 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub i32 %23, %26
  %28 = load %struct.irq_affinity*, %struct.irq_affinity** %5, align 8
  %29 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub i32 %27, %30
  store i32 %31, i32* %6, align 4
  br label %33

32:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %22
  %34 = load %struct.irq_affinity*, %struct.irq_affinity** %5, align 8
  %35 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %34, i32 0, i32 4
  %36 = load i32 (%struct.irq_affinity*, i32)*, i32 (%struct.irq_affinity*, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.irq_affinity*, i32)* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load %struct.irq_affinity*, %struct.irq_affinity** %5, align 8
  %40 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %39, i32 0, i32 4
  store i32 (%struct.irq_affinity*, i32)* @default_calc_sets, i32 (%struct.irq_affinity*, i32)** %40, align 8
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.irq_affinity*, %struct.irq_affinity** %5, align 8
  %43 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %42, i32 0, i32 4
  %44 = load i32 (%struct.irq_affinity*, i32)*, i32 (%struct.irq_affinity*, i32)** %43, align 8
  %45 = load %struct.irq_affinity*, %struct.irq_affinity** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 %44(%struct.irq_affinity* %45, i32 %46)
  %48 = load %struct.irq_affinity*, %struct.irq_affinity** %5, align 8
  %49 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IRQ_AFFINITY_MAX_SETS, align 4
  %52 = icmp ugt i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @WARN_ON_ONCE(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  store %struct.irq_affinity_desc* null, %struct.irq_affinity_desc** %3, align 8
  br label %176

57:                                               ; preds = %41
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store %struct.irq_affinity_desc* null, %struct.irq_affinity_desc** %3, align 8
  br label %176

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.irq_affinity_desc* @kcalloc(i32 %62, i32 8, i32 %63)
  store %struct.irq_affinity_desc* %64, %struct.irq_affinity_desc** %10, align 8
  %65 = load %struct.irq_affinity_desc*, %struct.irq_affinity_desc** %10, align 8
  %66 = icmp ne %struct.irq_affinity_desc* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  store %struct.irq_affinity_desc* null, %struct.irq_affinity_desc** %3, align 8
  br label %176

68:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %83, %68
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.irq_affinity*, %struct.irq_affinity** %5, align 8
  %72 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ult i32 %70, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load %struct.irq_affinity_desc*, %struct.irq_affinity_desc** %10, align 8
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.irq_affinity_desc, %struct.irq_affinity_desc* %76, i64 %78
  %80 = getelementptr inbounds %struct.irq_affinity_desc, %struct.irq_affinity_desc* %79, i32 0, i32 1
  %81 = load i32, i32* @irq_default_affinity, align 4
  %82 = call i32 @cpumask_copy(i32* %80, i32 %81)
  br label %83

83:                                               ; preds = %75
  %84 = load i32, i32* %7, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %69

86:                                               ; preds = %69
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %118, %86
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.irq_affinity*, %struct.irq_affinity** %5, align 8
  %90 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ult i32 %88, %91
  br i1 %92, label %93, label %121

93:                                               ; preds = %87
  %94 = load %struct.irq_affinity*, %struct.irq_affinity** %5, align 8
  %95 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.irq_affinity_desc*, %struct.irq_affinity_desc** %10, align 8
  %105 = call i32 @irq_build_affinity_masks(i32 %101, i32 %102, i32 %103, %struct.irq_affinity_desc* %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %93
  %109 = load %struct.irq_affinity_desc*, %struct.irq_affinity_desc** %10, align 8
  %110 = call i32 @kfree(%struct.irq_affinity_desc* %109)
  store %struct.irq_affinity_desc* null, %struct.irq_affinity_desc** %3, align 8
  br label %176

111:                                              ; preds = %93
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %7, align 4
  %114 = add i32 %113, %112
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %8, align 4
  %117 = add i32 %116, %115
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %9, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %87

121:                                              ; preds = %87
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp uge i32 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = load %struct.irq_affinity*, %struct.irq_affinity** %5, align 8
  %127 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = add i32 %128, %129
  store i32 %130, i32* %7, align 4
  br label %137

131:                                              ; preds = %121
  %132 = load %struct.irq_affinity*, %struct.irq_affinity** %5, align 8
  %133 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = add i32 %134, %135
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %131, %125
  br label %138

138:                                              ; preds = %150, %137
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp ult i32 %139, %140
  br i1 %141, label %142, label %153

142:                                              ; preds = %138
  %143 = load %struct.irq_affinity_desc*, %struct.irq_affinity_desc** %10, align 8
  %144 = load i32, i32* %7, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.irq_affinity_desc, %struct.irq_affinity_desc* %143, i64 %145
  %147 = getelementptr inbounds %struct.irq_affinity_desc, %struct.irq_affinity_desc* %146, i32 0, i32 1
  %148 = load i32, i32* @irq_default_affinity, align 4
  %149 = call i32 @cpumask_copy(i32* %147, i32 %148)
  br label %150

150:                                              ; preds = %142
  %151 = load i32, i32* %7, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %7, align 4
  br label %138

153:                                              ; preds = %138
  %154 = load %struct.irq_affinity*, %struct.irq_affinity** %5, align 8
  %155 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  store i32 %156, i32* %9, align 4
  br label %157

157:                                              ; preds = %171, %153
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %4, align 4
  %160 = load %struct.irq_affinity*, %struct.irq_affinity** %5, align 8
  %161 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = sub i32 %159, %162
  %164 = icmp ult i32 %158, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %157
  %166 = load %struct.irq_affinity_desc*, %struct.irq_affinity_desc** %10, align 8
  %167 = load i32, i32* %9, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.irq_affinity_desc, %struct.irq_affinity_desc* %166, i64 %168
  %170 = getelementptr inbounds %struct.irq_affinity_desc, %struct.irq_affinity_desc* %169, i32 0, i32 0
  store i32 1, i32* %170, align 4
  br label %171

171:                                              ; preds = %165
  %172 = load i32, i32* %9, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %157

174:                                              ; preds = %157
  %175 = load %struct.irq_affinity_desc*, %struct.irq_affinity_desc** %10, align 8
  store %struct.irq_affinity_desc* %175, %struct.irq_affinity_desc** %3, align 8
  br label %176

176:                                              ; preds = %174, %108, %67, %60, %56
  %177 = load %struct.irq_affinity_desc*, %struct.irq_affinity_desc** %3, align 8
  ret %struct.irq_affinity_desc* %177
}

declare dso_local i32 @default_calc_sets(%struct.irq_affinity*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.irq_affinity_desc* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @cpumask_copy(i32*, i32) #1

declare dso_local i32 @irq_build_affinity_masks(i32, i32, i32, %struct.irq_affinity_desc*) #1

declare dso_local i32 @kfree(%struct.irq_affinity_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
