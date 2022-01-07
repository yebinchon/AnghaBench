; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_provider_cells_property.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_provider_cells_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { %struct.provider* }
%struct.provider = type { i32 }
%struct.dt_info = type { i32 }
%struct.node = type { i32 }
%struct.property = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check*, %struct.dt_info*, %struct.node*)* @check_provider_cells_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_provider_cells_property(%struct.check* %0, %struct.dt_info* %1, %struct.node* %2) #0 {
  %4 = alloca %struct.check*, align 8
  %5 = alloca %struct.dt_info*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.provider*, align 8
  %8 = alloca %struct.property*, align 8
  store %struct.check* %0, %struct.check** %4, align 8
  store %struct.dt_info* %1, %struct.dt_info** %5, align 8
  store %struct.node* %2, %struct.node** %6, align 8
  %9 = load %struct.check*, %struct.check** %4, align 8
  %10 = getelementptr inbounds %struct.check, %struct.check* %9, i32 0, i32 0
  %11 = load %struct.provider*, %struct.provider** %10, align 8
  store %struct.provider* %11, %struct.provider** %7, align 8
  %12 = load %struct.node*, %struct.node** %6, align 8
  %13 = load %struct.provider*, %struct.provider** %7, align 8
  %14 = getelementptr inbounds %struct.provider, %struct.provider* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.property* @get_property(%struct.node* %12, i32 %15)
  store %struct.property* %16, %struct.property** %8, align 8
  %17 = load %struct.property*, %struct.property** %8, align 8
  %18 = icmp ne %struct.property* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %27

20:                                               ; preds = %3
  %21 = load %struct.check*, %struct.check** %4, align 8
  %22 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %23 = load %struct.node*, %struct.node** %6, align 8
  %24 = load %struct.property*, %struct.property** %8, align 8
  %25 = load %struct.provider*, %struct.provider** %7, align 8
  %26 = call i32 @check_property_phandle_args(%struct.check* %21, %struct.dt_info* %22, %struct.node* %23, %struct.property* %24, %struct.provider* %25)
  br label %27

27:                                               ; preds = %20, %19
  ret void
}

declare dso_local %struct.property* @get_property(%struct.node*, i32) #1

declare dso_local i32 @check_property_phandle_args(%struct.check*, %struct.dt_info*, %struct.node*, %struct.property*, %struct.provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
