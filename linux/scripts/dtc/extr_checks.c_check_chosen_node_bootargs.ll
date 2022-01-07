; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_chosen_node_bootargs.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_chosen_node_bootargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32 }
%struct.dt_info = type { i32 }
%struct.node = type { i32 }
%struct.property = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"chosen\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"bootargs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check*, %struct.dt_info*, %struct.node*)* @check_chosen_node_bootargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_chosen_node_bootargs(%struct.check* %0, %struct.dt_info* %1, %struct.node* %2) #0 {
  %4 = alloca %struct.check*, align 8
  %5 = alloca %struct.dt_info*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.property*, align 8
  store %struct.check* %0, %struct.check** %4, align 8
  store %struct.dt_info* %1, %struct.dt_info** %5, align 8
  store %struct.node* %2, %struct.node** %6, align 8
  %8 = load %struct.node*, %struct.node** %6, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @streq(i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %30

14:                                               ; preds = %3
  %15 = load %struct.node*, %struct.node** %6, align 8
  %16 = call %struct.property* @get_property(%struct.node* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store %struct.property* %16, %struct.property** %7, align 8
  %17 = load %struct.property*, %struct.property** %7, align 8
  %18 = icmp ne %struct.property* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %30

20:                                               ; preds = %14
  %21 = load %struct.property*, %struct.property** %7, align 8
  %22 = getelementptr inbounds %struct.property, %struct.property* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.check*, %struct.check** %4, align 8
  %25 = getelementptr inbounds %struct.check, %struct.check* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.check*, %struct.check** %4, align 8
  %27 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %28 = load %struct.node*, %struct.node** %6, align 8
  %29 = call i32 @check_is_string(%struct.check* %26, %struct.dt_info* %27, %struct.node* %28)
  br label %30

30:                                               ; preds = %20, %19, %13
  ret void
}

declare dso_local i32 @streq(i32, i8*) #1

declare dso_local %struct.property* @get_property(%struct.node*, i8*) #1

declare dso_local i32 @check_is_string(%struct.check*, %struct.dt_info*, %struct.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
