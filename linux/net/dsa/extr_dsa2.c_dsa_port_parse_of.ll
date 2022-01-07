; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_port_parse_of.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_port_parse_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"ethernet\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_port*, %struct.device_node*)* @dsa_port_parse_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_port_parse_of(%struct.dsa_port* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsa_port*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  store %struct.dsa_port* %0, %struct.dsa_port** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %11, %struct.device_node** %6, align 8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = call i8* @of_get_property(%struct.device_node* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %13, i8** %7, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = call i32 @of_property_read_bool(%struct.device_node* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %15, i32* %8, align 4
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %18 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %17, i32 0, i32 0
  store %struct.device_node* %16, %struct.device_node** %18, align 8
  %19 = load %struct.device_node*, %struct.device_node** %6, align 8
  %20 = icmp ne %struct.device_node* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load %struct.device_node*, %struct.device_node** %6, align 8
  %23 = call %struct.net_device* @of_find_net_device_by_node(%struct.device_node* %22)
  store %struct.net_device* %23, %struct.net_device** %9, align 8
  %24 = load %struct.net_device*, %struct.net_device** %9, align 8
  %25 = icmp ne %struct.net_device* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @EPROBE_DEFER, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %21
  %30 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %31 = load %struct.net_device*, %struct.net_device** %9, align 8
  %32 = call i32 @dsa_port_parse_cpu(%struct.dsa_port* %30, %struct.net_device* %31)
  store i32 %32, i32* %3, align 4
  br label %43

33:                                               ; preds = %2
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %38 = call i32 @dsa_port_parse_dsa(%struct.dsa_port* %37)
  store i32 %38, i32* %3, align 4
  br label %43

39:                                               ; preds = %33
  %40 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @dsa_port_parse_user(%struct.dsa_port* %40, i8* %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %36, %29, %26
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local %struct.net_device* @of_find_net_device_by_node(%struct.device_node*) #1

declare dso_local i32 @dsa_port_parse_cpu(%struct.dsa_port*, %struct.net_device*) #1

declare dso_local i32 @dsa_port_parse_dsa(%struct.dsa_port*) #1

declare dso_local i32 @dsa_port_parse_user(%struct.dsa_port*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
