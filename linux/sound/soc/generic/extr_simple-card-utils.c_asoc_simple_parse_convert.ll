; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_parse_convert.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_parse_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.asoc_simple_data = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"convert-rate\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"convert-channels\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @asoc_simple_parse_convert(%struct.device* %0, %struct.device_node* %1, i8* %2, %struct.asoc_simple_data* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.asoc_simple_data*, align 8
  %9 = alloca [128 x i8], align 16
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.asoc_simple_data* %3, %struct.asoc_simple_data** %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %13

13:                                               ; preds = %12, %4
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @snprintf(i8* %14, i32 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %19 = load %struct.asoc_simple_data*, %struct.asoc_simple_data** %8, align 8
  %20 = getelementptr inbounds %struct.asoc_simple_data, %struct.asoc_simple_data* %19, i32 0, i32 1
  %21 = call i32 @of_property_read_u32(%struct.device_node* %17, i8* %18, i32* %20)
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @snprintf(i8* %22, i32 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %25 = load %struct.device_node*, %struct.device_node** %6, align 8
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %27 = load %struct.asoc_simple_data*, %struct.asoc_simple_data** %8, align 8
  %28 = getelementptr inbounds %struct.asoc_simple_data, %struct.asoc_simple_data* %27, i32 0, i32 0
  %29 = call i32 @of_property_read_u32(%struct.device_node* %25, i8* %26, i32* %28)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
