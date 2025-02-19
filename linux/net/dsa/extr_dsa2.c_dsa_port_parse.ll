; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_port_parse.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_port_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { i32 }
%struct.device = type { i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"dsa\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_port*, i8*, %struct.device*)* @dsa_port_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_port_parse(%struct.dsa_port* %0, i8* %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_port*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.dsa_port* %0, %struct.dsa_port** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.device* %2, %struct.device** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %3
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = call %struct.net_device* @dsa_dev_to_net_device(%struct.device* %13)
  store %struct.net_device* %14, %struct.net_device** %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %8, align 8
  %16 = icmp ne %struct.net_device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @EPROBE_DEFER, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %37

20:                                               ; preds = %12
  %21 = load %struct.net_device*, %struct.net_device** %8, align 8
  %22 = call i32 @dev_put(%struct.net_device* %21)
  %23 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %24 = load %struct.net_device*, %struct.net_device** %8, align 8
  %25 = call i32 @dsa_port_parse_cpu(%struct.dsa_port* %23, %struct.net_device* %24)
  store i32 %25, i32* %4, align 4
  br label %37

26:                                               ; preds = %3
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %32 = call i32 @dsa_port_parse_dsa(%struct.dsa_port* %31)
  store i32 %32, i32* %4, align 4
  br label %37

33:                                               ; preds = %26
  %34 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @dsa_port_parse_user(%struct.dsa_port* %34, i8* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %30, %20, %17
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.net_device* @dsa_dev_to_net_device(%struct.device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @dsa_port_parse_cpu(%struct.dsa_port*, %struct.net_device*) #1

declare dso_local i32 @dsa_port_parse_dsa(%struct.dsa_port*) #1

declare dso_local i32 @dsa_port_parse_user(%struct.dsa_port*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
