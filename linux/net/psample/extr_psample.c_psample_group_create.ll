; ModuleID = '/home/carl/AnghaBench/linux/net/psample/extr_psample.c_psample_group_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/psample/extr_psample.c_psample_group_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psample_group = type { i32, i32, %struct.net* }
%struct.net = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@psample_groups_list = common dso_local global i32 0, align 4
@PSAMPLE_CMD_NEW_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.psample_group* (%struct.net*, i32)* @psample_group_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.psample_group* @psample_group_create(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.psample_group*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.psample_group*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.psample_group* @kzalloc(i32 16, i32 %7)
  store %struct.psample_group* %8, %struct.psample_group** %6, align 8
  %9 = load %struct.psample_group*, %struct.psample_group** %6, align 8
  %10 = icmp ne %struct.psample_group* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.psample_group* null, %struct.psample_group** %3, align 8
  br label %26

12:                                               ; preds = %2
  %13 = load %struct.net*, %struct.net** %4, align 8
  %14 = load %struct.psample_group*, %struct.psample_group** %6, align 8
  %15 = getelementptr inbounds %struct.psample_group, %struct.psample_group* %14, i32 0, i32 2
  store %struct.net* %13, %struct.net** %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.psample_group*, %struct.psample_group** %6, align 8
  %18 = getelementptr inbounds %struct.psample_group, %struct.psample_group* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.psample_group*, %struct.psample_group** %6, align 8
  %20 = getelementptr inbounds %struct.psample_group, %struct.psample_group* %19, i32 0, i32 0
  %21 = call i32 @list_add_tail(i32* %20, i32* @psample_groups_list)
  %22 = load %struct.psample_group*, %struct.psample_group** %6, align 8
  %23 = load i32, i32* @PSAMPLE_CMD_NEW_GROUP, align 4
  %24 = call i32 @psample_group_notify(%struct.psample_group* %22, i32 %23)
  %25 = load %struct.psample_group*, %struct.psample_group** %6, align 8
  store %struct.psample_group* %25, %struct.psample_group** %3, align 8
  br label %26

26:                                               ; preds = %12, %11
  %27 = load %struct.psample_group*, %struct.psample_group** %3, align 8
  ret %struct.psample_group* %27
}

declare dso_local %struct.psample_group* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @psample_group_notify(%struct.psample_group*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
