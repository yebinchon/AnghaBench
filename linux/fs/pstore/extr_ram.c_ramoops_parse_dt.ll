; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_ram.c_ramoops_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_ram.c_ramoops_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ramoops_platform_data = type { i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"using Device Tree\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to locate DT /reserved-memory resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"unbuffered\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"no-dump-oops\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"record-size\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"console-size\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"ftrace-size\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"pmsg-size\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"ecc-size\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"reserved-memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.ramoops_platform_data*)* @ramoops_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ramoops_parse_dt(%struct.platform_device* %0, %struct.ramoops_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.ramoops_platform_data*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.ramoops_platform_data* %1, %struct.ramoops_platform_data** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @dev_dbg(%struct.TYPE_5__* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %8, align 8
  %21 = load %struct.resource*, %struct.resource** %8, align 8
  %22 = icmp ne %struct.resource* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @dev_err(%struct.TYPE_5__* %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %151

29:                                               ; preds = %2
  %30 = load %struct.resource*, %struct.resource** %8, align 8
  %31 = call i32 @resource_size(%struct.resource* %30)
  %32 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %33 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %32, i32 0, i32 9
  store i32 %31, i32* %33, align 4
  %34 = load %struct.resource*, %struct.resource** %8, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %38 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 4
  %39 = load %struct.device_node*, %struct.device_node** %6, align 8
  %40 = call i32 @of_property_read_bool(%struct.device_node* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %42 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load %struct.device_node*, %struct.device_node** %6, align 8
  %44 = call i32 @of_property_read_bool(%struct.device_node* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %49 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %51 = call i32 (%struct.platform_device*, i8*, i32*, ...) bitcast (i32 (...)* @ramoops_parse_dt_size to i32 (%struct.platform_device*, i8*, i32*, ...)*)(%struct.platform_device* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %9)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %29
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %3, align 4
  br label %151

56:                                               ; preds = %29
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %59 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %61 = call i32 (%struct.platform_device*, i8*, i32*, ...) bitcast (i32 (...)* @ramoops_parse_dt_size to i32 (%struct.platform_device*, i8*, i32*, ...)*)(%struct.platform_device* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* %9)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %3, align 4
  br label %151

66:                                               ; preds = %56
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %69 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %71 = call i32 (%struct.platform_device*, i8*, i32*, ...) bitcast (i32 (...)* @ramoops_parse_dt_size to i32 (%struct.platform_device*, i8*, i32*, ...)*)(%struct.platform_device* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32* %9)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %3, align 4
  br label %151

76:                                               ; preds = %66
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %79 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %81 = call i32 (%struct.platform_device*, i8*, i32*, ...) bitcast (i32 (...)* @ramoops_parse_dt_size to i32 (%struct.platform_device*, i8*, i32*, ...)*)(%struct.platform_device* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32* %9)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %3, align 4
  br label %151

86:                                               ; preds = %76
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %89 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %91 = call i32 (%struct.platform_device*, i8*, i32*, ...) bitcast (i32 (...)* @ramoops_parse_dt_size to i32 (%struct.platform_device*, i8*, i32*, ...)*)(%struct.platform_device* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* %9)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %3, align 4
  br label %151

96:                                               ; preds = %86
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %99 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 4
  %101 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %102 = call i32 (%struct.platform_device*, i8*, i32*, ...) bitcast (i32 (...)* @ramoops_parse_dt_size to i32 (%struct.platform_device*, i8*, i32*, ...)*)(%struct.platform_device* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32* %9)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %3, align 4
  br label %151

107:                                              ; preds = %96
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %110 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 4
  %111 = load %struct.device_node*, %struct.device_node** %6, align 8
  %112 = call %struct.device_node* @of_get_parent(%struct.device_node* %111)
  store %struct.device_node* %112, %struct.device_node** %7, align 8
  %113 = load %struct.device_node*, %struct.device_node** %7, align 8
  %114 = call i32 @of_node_name_eq(%struct.device_node* %113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %148, label %116

116:                                              ; preds = %107
  %117 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %118 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %148, label %121

121:                                              ; preds = %116
  %122 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %123 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %148, label %126

126:                                              ; preds = %121
  %127 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %128 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %148, label %131

131:                                              ; preds = %126
  %132 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %133 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %148, label %137

137:                                              ; preds = %131
  %138 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %139 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %142 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  %143 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %144 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %147 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %137, %131, %126, %121, %116, %107
  %149 = load %struct.device_node*, %struct.device_node** %7, align 8
  %150 = call i32 @of_node_put(%struct.device_node* %149)
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %148, %105, %94, %84, %74, %64, %54, %23
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @ramoops_parse_dt_size(...) #1

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local i32 @of_node_name_eq(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
