; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card.c_simple_parse_convert.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card.c_simple_parse_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.asoc_simple_data = type { i32 }

@PREFIX = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.device_node*, %struct.asoc_simple_data*)* @simple_parse_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simple_parse_convert(%struct.device* %0, %struct.device_node* %1, %struct.asoc_simple_data* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.asoc_simple_data*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store %struct.asoc_simple_data* %2, %struct.asoc_simple_data** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %7, align 8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = call %struct.device_node* @of_get_parent(%struct.device_node* %12)
  store %struct.device_node* %13, %struct.device_node** %8, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load %struct.device_node*, %struct.device_node** %7, align 8
  %16 = load i32*, i32** @PREFIX, align 8
  %17 = load %struct.asoc_simple_data*, %struct.asoc_simple_data** %6, align 8
  %18 = call i32 @asoc_simple_parse_convert(%struct.device* %14, %struct.device_node* %15, i32* %16, %struct.asoc_simple_data* %17)
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.device_node*, %struct.device_node** %8, align 8
  %21 = load i32*, i32** @PREFIX, align 8
  %22 = load %struct.asoc_simple_data*, %struct.asoc_simple_data** %6, align 8
  %23 = call i32 @asoc_simple_parse_convert(%struct.device* %19, %struct.device_node* %20, i32* %21, %struct.asoc_simple_data* %22)
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.device_node*, %struct.device_node** %8, align 8
  %26 = load %struct.asoc_simple_data*, %struct.asoc_simple_data** %6, align 8
  %27 = call i32 @asoc_simple_parse_convert(%struct.device* %24, %struct.device_node* %25, i32* null, %struct.asoc_simple_data* %26)
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = load %struct.asoc_simple_data*, %struct.asoc_simple_data** %6, align 8
  %31 = call i32 @asoc_simple_parse_convert(%struct.device* %28, %struct.device_node* %29, i32* null, %struct.asoc_simple_data* %30)
  %32 = load %struct.device_node*, %struct.device_node** %8, align 8
  %33 = call i32 @of_node_put(%struct.device_node* %32)
  ret void
}

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local i32 @asoc_simple_parse_convert(%struct.device*, %struct.device_node*, i32*, %struct.asoc_simple_data*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
