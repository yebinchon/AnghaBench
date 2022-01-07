; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pdmic.c_atmel_pdmic_dt_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pdmic.c_atmel_pdmic_dt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_pdmic_pdata = type { i8*, i64, i64, i64 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"device node not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"atmel,model\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"PDMIC\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"atmel,mic-min-freq\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to get mic-min-freq\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"atmel,mic-max-freq\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to get mic-max-freq\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"mic-max-freq should not be less than mic-min-freq\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"atmel,mic-offset\00", align 1
@PDMIC_OFFSET_MAX_VAL = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [81 x i8] c"mic-offset value %d is larger than the max value %d, the max value is specified\0A\00", align 1
@PDMIC_OFFSET_MIN_VAL = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [79 x i8] c"mic-offset value %d is less than the min value %d, the min value is specified\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atmel_pdmic_pdata* (%struct.device*)* @atmel_pdmic_dt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atmel_pdmic_pdata* @atmel_pdmic_dt_init(%struct.device* %0) #0 {
  %2 = alloca %struct.atmel_pdmic_pdata*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.atmel_pdmic_pdata*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load %struct.device_node*, %struct.device_node** %7, align 8
  store %struct.device_node* %8, %struct.device_node** %4, align 8
  %9 = load %struct.device_node*, %struct.device_node** %4, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call i32 @dev_err(%struct.device* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.atmel_pdmic_pdata* @ERR_PTR(i32 %15)
  store %struct.atmel_pdmic_pdata* %16, %struct.atmel_pdmic_pdata** %2, align 8
  br label %118

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.atmel_pdmic_pdata* @devm_kzalloc(%struct.device* %18, i32 32, i32 %19)
  store %struct.atmel_pdmic_pdata* %20, %struct.atmel_pdmic_pdata** %5, align 8
  %21 = load %struct.atmel_pdmic_pdata*, %struct.atmel_pdmic_pdata** %5, align 8
  %22 = icmp ne %struct.atmel_pdmic_pdata* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.atmel_pdmic_pdata* @ERR_PTR(i32 %25)
  store %struct.atmel_pdmic_pdata* %26, %struct.atmel_pdmic_pdata** %2, align 8
  br label %118

27:                                               ; preds = %17
  %28 = load %struct.device_node*, %struct.device_node** %4, align 8
  %29 = load %struct.atmel_pdmic_pdata*, %struct.atmel_pdmic_pdata** %5, align 8
  %30 = getelementptr inbounds %struct.atmel_pdmic_pdata, %struct.atmel_pdmic_pdata* %29, i32 0, i32 0
  %31 = call i64 @of_property_read_string(%struct.device_node* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.atmel_pdmic_pdata*, %struct.atmel_pdmic_pdata** %5, align 8
  %35 = getelementptr inbounds %struct.atmel_pdmic_pdata, %struct.atmel_pdmic_pdata* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %35, align 8
  br label %36

36:                                               ; preds = %33, %27
  %37 = load %struct.device_node*, %struct.device_node** %4, align 8
  %38 = load %struct.atmel_pdmic_pdata*, %struct.atmel_pdmic_pdata** %5, align 8
  %39 = getelementptr inbounds %struct.atmel_pdmic_pdata, %struct.atmel_pdmic_pdata* %38, i32 0, i32 1
  %40 = call i64 @of_property_read_u32(%struct.device_node* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  %47 = call %struct.atmel_pdmic_pdata* @ERR_PTR(i32 %46)
  store %struct.atmel_pdmic_pdata* %47, %struct.atmel_pdmic_pdata** %2, align 8
  br label %118

48:                                               ; preds = %36
  %49 = load %struct.device_node*, %struct.device_node** %4, align 8
  %50 = load %struct.atmel_pdmic_pdata*, %struct.atmel_pdmic_pdata** %5, align 8
  %51 = getelementptr inbounds %struct.atmel_pdmic_pdata, %struct.atmel_pdmic_pdata* %50, i32 0, i32 2
  %52 = call i64 @of_property_read_u32(%struct.device_node* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.device*, %struct.device** %3, align 8
  %56 = call i32 @dev_err(%struct.device* %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.atmel_pdmic_pdata* @ERR_PTR(i32 %58)
  store %struct.atmel_pdmic_pdata* %59, %struct.atmel_pdmic_pdata** %2, align 8
  br label %118

60:                                               ; preds = %48
  %61 = load %struct.atmel_pdmic_pdata*, %struct.atmel_pdmic_pdata** %5, align 8
  %62 = getelementptr inbounds %struct.atmel_pdmic_pdata, %struct.atmel_pdmic_pdata* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.atmel_pdmic_pdata*, %struct.atmel_pdmic_pdata** %5, align 8
  %65 = getelementptr inbounds %struct.atmel_pdmic_pdata, %struct.atmel_pdmic_pdata* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %63, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load %struct.device*, %struct.device** %3, align 8
  %70 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  %73 = call %struct.atmel_pdmic_pdata* @ERR_PTR(i32 %72)
  store %struct.atmel_pdmic_pdata* %73, %struct.atmel_pdmic_pdata** %2, align 8
  br label %118

74:                                               ; preds = %60
  %75 = load %struct.device_node*, %struct.device_node** %4, align 8
  %76 = load %struct.atmel_pdmic_pdata*, %struct.atmel_pdmic_pdata** %5, align 8
  %77 = getelementptr inbounds %struct.atmel_pdmic_pdata, %struct.atmel_pdmic_pdata* %76, i32 0, i32 3
  %78 = call i64 @of_property_read_s32(%struct.device_node* %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i64* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.atmel_pdmic_pdata*, %struct.atmel_pdmic_pdata** %5, align 8
  %82 = getelementptr inbounds %struct.atmel_pdmic_pdata, %struct.atmel_pdmic_pdata* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %80, %74
  %84 = load %struct.atmel_pdmic_pdata*, %struct.atmel_pdmic_pdata** %5, align 8
  %85 = getelementptr inbounds %struct.atmel_pdmic_pdata, %struct.atmel_pdmic_pdata* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PDMIC_OFFSET_MAX_VAL, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %83
  %90 = load %struct.device*, %struct.device** %3, align 8
  %91 = load %struct.atmel_pdmic_pdata*, %struct.atmel_pdmic_pdata** %5, align 8
  %92 = getelementptr inbounds %struct.atmel_pdmic_pdata, %struct.atmel_pdmic_pdata* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @PDMIC_OFFSET_MAX_VAL, align 8
  %95 = call i32 @dev_warn(%struct.device* %90, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.9, i64 0, i64 0), i64 %93, i64 %94)
  %96 = load i64, i64* @PDMIC_OFFSET_MAX_VAL, align 8
  %97 = load %struct.atmel_pdmic_pdata*, %struct.atmel_pdmic_pdata** %5, align 8
  %98 = getelementptr inbounds %struct.atmel_pdmic_pdata, %struct.atmel_pdmic_pdata* %97, i32 0, i32 3
  store i64 %96, i64* %98, align 8
  br label %116

99:                                               ; preds = %83
  %100 = load %struct.atmel_pdmic_pdata*, %struct.atmel_pdmic_pdata** %5, align 8
  %101 = getelementptr inbounds %struct.atmel_pdmic_pdata, %struct.atmel_pdmic_pdata* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PDMIC_OFFSET_MIN_VAL, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %99
  %106 = load %struct.device*, %struct.device** %3, align 8
  %107 = load %struct.atmel_pdmic_pdata*, %struct.atmel_pdmic_pdata** %5, align 8
  %108 = getelementptr inbounds %struct.atmel_pdmic_pdata, %struct.atmel_pdmic_pdata* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @PDMIC_OFFSET_MIN_VAL, align 8
  %111 = call i32 @dev_warn(%struct.device* %106, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.10, i64 0, i64 0), i64 %109, i64 %110)
  %112 = load i64, i64* @PDMIC_OFFSET_MIN_VAL, align 8
  %113 = load %struct.atmel_pdmic_pdata*, %struct.atmel_pdmic_pdata** %5, align 8
  %114 = getelementptr inbounds %struct.atmel_pdmic_pdata, %struct.atmel_pdmic_pdata* %113, i32 0, i32 3
  store i64 %112, i64* %114, align 8
  br label %115

115:                                              ; preds = %105, %99
  br label %116

116:                                              ; preds = %115, %89
  %117 = load %struct.atmel_pdmic_pdata*, %struct.atmel_pdmic_pdata** %5, align 8
  store %struct.atmel_pdmic_pdata* %117, %struct.atmel_pdmic_pdata** %2, align 8
  br label %118

118:                                              ; preds = %116, %68, %54, %42, %23, %11
  %119 = load %struct.atmel_pdmic_pdata*, %struct.atmel_pdmic_pdata** %2, align 8
  ret %struct.atmel_pdmic_pdata* %119
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.atmel_pdmic_pdata* @ERR_PTR(i32) #1

declare dso_local %struct.atmel_pdmic_pdata* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i64 @of_property_read_s32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
