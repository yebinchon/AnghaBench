; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4613.c_ak4613_parse_of.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4613.c_ak4613_parse_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4613_priv = type { i32, i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"asahi-kasei,in%d-single-end\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"asahi-kasei,out%d-single-end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ak4613_priv*, %struct.device*)* @ak4613_parse_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ak4613_parse_of(%struct.ak4613_priv* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.ak4613_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.ak4613_priv* %0, %struct.ak4613_priv** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %5, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %31, %2
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i32 @snprintf(i8* %15, i32 32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %21 = call i32 @of_get_property(%struct.device_node* %19, i8* %20, i32* null)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 1, %24
  %26 = load %struct.ak4613_priv*, %struct.ak4613_priv** %3, align 8
  %27 = getelementptr inbounds %struct.ak4613_priv, %struct.ak4613_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %23, %14
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %11

34:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %55, %34
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 6
  br i1 %37, label %38, label %58

38:                                               ; preds = %35
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 @snprintf(i8* %39, i32 32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.device_node*, %struct.device_node** %5, align 8
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %45 = call i32 @of_get_property(%struct.device_node* %43, i8* %44, i32* null)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %7, align 4
  %49 = shl i32 1, %48
  %50 = load %struct.ak4613_priv*, %struct.ak4613_priv** %3, align 8
  %51 = getelementptr inbounds %struct.ak4613_priv, %struct.ak4613_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %47, %38
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %35

58:                                               ; preds = %35
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @of_get_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
