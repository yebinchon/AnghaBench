; ModuleID = '/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_randomize_layout_plugin.c_register_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_randomize_layout_plugin.c_register_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32, i8* }

@.str = private unnamed_addr constant [17 x i8] c"randomize_layout\00", align 1
@randomize_layout_attr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@handle_randomize_layout_attr = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"no_randomize_layout\00", align 1
@no_randomize_layout_attr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"randomize_considered\00", align 1
@randomize_considered_attr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@handle_randomize_considered_attr = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"randomize_performed\00", align 1
@randomize_performed_attr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@handle_randomize_performed_attr = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @register_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_attributes(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @randomize_layout_attr, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @randomize_layout_attr, i32 0, i32 1), align 8
  %5 = load i8*, i8** @handle_randomize_layout_attr, align 8
  store i8* %5, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @randomize_layout_attr, i32 0, i32 3), align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @no_randomize_layout_attr, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @no_randomize_layout_attr, i32 0, i32 1), align 8
  %6 = load i8*, i8** @handle_randomize_layout_attr, align 8
  store i8* %6, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @no_randomize_layout_attr, i32 0, i32 3), align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @randomize_considered_attr, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @randomize_considered_attr, i32 0, i32 1), align 8
  %7 = load i8*, i8** @handle_randomize_considered_attr, align 8
  store i8* %7, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @randomize_considered_attr, i32 0, i32 3), align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @randomize_performed_attr, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @randomize_performed_attr, i32 0, i32 1), align 8
  %8 = load i8*, i8** @handle_randomize_performed_attr, align 8
  store i8* %8, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @randomize_performed_attr, i32 0, i32 3), align 8
  %9 = call i32 @register_attribute(%struct.TYPE_6__* @randomize_layout_attr)
  %10 = call i32 @register_attribute(%struct.TYPE_6__* @no_randomize_layout_attr)
  %11 = call i32 @register_attribute(%struct.TYPE_6__* @randomize_considered_attr)
  %12 = call i32 @register_attribute(%struct.TYPE_6__* @randomize_performed_attr)
  ret void
}

declare dso_local i32 @register_attribute(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
