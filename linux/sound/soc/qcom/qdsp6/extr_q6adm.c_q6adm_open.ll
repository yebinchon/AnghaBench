; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6adm.c_q6adm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6adm.c_q6adm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6copp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.q6adm = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Invalid port_id 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Found Matching Copp 0x%x\0A\00", align 1
@q6adm_free_copp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.q6copp* @q6adm_open(%struct.device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.q6copp*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.q6adm*, align 8
  %23 = alloca %struct.q6copp*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %26 = load %struct.device*, %struct.device** %12, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.q6adm* @dev_get_drvdata(i32 %28)
  store %struct.q6adm* %29, %struct.q6adm** %22, align 8
  store i32 0, i32* %25, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %10
  %33 = load %struct.device*, %struct.device** %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.q6copp* @ERR_PTR(i32 %37)
  store %struct.q6copp* %38, %struct.q6copp** %11, align 8
  br label %127

39:                                               ; preds = %10
  %40 = load %struct.q6adm*, %struct.q6adm** %22, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %19, align 4
  %47 = load i32, i32* %20, align 4
  %48 = call %struct.q6copp* @q6adm_find_matching_copp(%struct.q6adm* %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  store %struct.q6copp* %48, %struct.q6copp** %23, align 8
  %49 = load %struct.q6copp*, %struct.q6copp** %23, align 8
  %50 = icmp ne %struct.q6copp* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %39
  %52 = load %struct.device*, %struct.device** %12, align 8
  %53 = load %struct.q6copp*, %struct.q6copp** %23, align 8
  %54 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load %struct.q6copp*, %struct.q6copp** %23, align 8
  store %struct.q6copp* %57, %struct.q6copp** %11, align 8
  br label %127

58:                                               ; preds = %39
  %59 = load %struct.q6adm*, %struct.q6adm** %22, align 8
  %60 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %59, i32 0, i32 0
  %61 = load i64, i64* %24, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load %struct.q6adm*, %struct.q6adm** %22, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call %struct.q6copp* @q6adm_alloc_copp(%struct.q6adm* %63, i32 %64)
  store %struct.q6copp* %65, %struct.q6copp** %23, align 8
  %66 = load %struct.q6copp*, %struct.q6copp** %23, align 8
  %67 = call i64 @IS_ERR_OR_NULL(%struct.q6copp* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %58
  %70 = load %struct.q6adm*, %struct.q6adm** %22, align 8
  %71 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %70, i32 0, i32 0
  %72 = load i64, i64* %24, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load %struct.q6copp*, %struct.q6copp** %23, align 8
  %75 = call %struct.q6copp* @ERR_CAST(%struct.q6copp* %74)
  store %struct.q6copp* %75, %struct.q6copp** %11, align 8
  br label %127

76:                                               ; preds = %58
  %77 = load %struct.q6copp*, %struct.q6copp** %23, align 8
  %78 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %77, i32 0, i32 8
  %79 = load %struct.q6adm*, %struct.q6adm** %22, align 8
  %80 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %79, i32 0, i32 1
  %81 = call i32 @list_add_tail(i32* %78, i32* %80)
  %82 = load %struct.q6adm*, %struct.q6adm** %22, align 8
  %83 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %82, i32 0, i32 0
  %84 = load i64, i64* %24, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load %struct.q6copp*, %struct.q6copp** %23, align 8
  %87 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %86, i32 0, i32 6
  %88 = call i32 @kref_init(i32* %87)
  %89 = load i32, i32* %17, align 4
  %90 = load %struct.q6copp*, %struct.q6copp** %23, align 8
  %91 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %18, align 4
  %93 = load %struct.q6copp*, %struct.q6copp** %23, align 8
  %94 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load %struct.q6copp*, %struct.q6copp** %23, align 8
  %97 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load %struct.q6copp*, %struct.q6copp** %23, align 8
  %100 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %19, align 4
  %102 = load %struct.q6copp*, %struct.q6copp** %23, align 8
  %103 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %102, i32 0, i32 7
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %20, align 4
  %105 = load %struct.q6copp*, %struct.q6copp** %23, align 8
  %106 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 4
  %107 = load %struct.q6adm*, %struct.q6adm** %22, align 8
  %108 = load %struct.q6copp*, %struct.q6copp** %23, align 8
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* %15, align 4
  %115 = call i32 @q6adm_device_open(%struct.q6adm* %107, %struct.q6copp* %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114)
  store i32 %115, i32* %25, align 4
  %116 = load i32, i32* %25, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %76
  %119 = load %struct.q6copp*, %struct.q6copp** %23, align 8
  %120 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %119, i32 0, i32 6
  %121 = load i32, i32* @q6adm_free_copp, align 4
  %122 = call i32 @kref_put(i32* %120, i32 %121)
  %123 = load i32, i32* %25, align 4
  %124 = call %struct.q6copp* @ERR_PTR(i32 %123)
  store %struct.q6copp* %124, %struct.q6copp** %11, align 8
  br label %127

125:                                              ; preds = %76
  %126 = load %struct.q6copp*, %struct.q6copp** %23, align 8
  store %struct.q6copp* %126, %struct.q6copp** %11, align 8
  br label %127

127:                                              ; preds = %125, %118, %69, %51, %32
  %128 = load %struct.q6copp*, %struct.q6copp** %11, align 8
  ret %struct.q6copp* %128
}

declare dso_local %struct.q6adm* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.q6copp* @ERR_PTR(i32) #1

declare dso_local %struct.q6copp* @q6adm_find_matching_copp(%struct.q6adm*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.q6copp* @q6adm_alloc_copp(%struct.q6adm*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.q6copp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.q6copp* @ERR_CAST(%struct.q6copp*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @q6adm_device_open(%struct.q6adm*, %struct.q6copp*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
