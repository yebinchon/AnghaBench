; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_convert_context_handle_invalid_context.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_convert_context_handle_invalid_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinux_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.policydb }
%struct.policydb = type { i32 }
%struct.context = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"SELinux:  Context %s would be invalid if enforcing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.selinux_state*, %struct.context*)* @convert_context_handle_invalid_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_context_handle_invalid_context(%struct.selinux_state* %0, %struct.context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.selinux_state*, align 8
  %5 = alloca %struct.context*, align 8
  %6 = alloca %struct.policydb*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.selinux_state* %0, %struct.selinux_state** %4, align 8
  store %struct.context* %1, %struct.context** %5, align 8
  %9 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %10 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.policydb* %12, %struct.policydb** %6, align 8
  %13 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %14 = call i64 @enforcing_enabled(%struct.selinux_state* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %30

19:                                               ; preds = %2
  %20 = load %struct.policydb*, %struct.policydb** %6, align 8
  %21 = load %struct.context*, %struct.context** %5, align 8
  %22 = call i32 @context_struct_to_string(%struct.policydb* %20, %struct.context* %21, i8** %7, i32* %8)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @pr_warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @kfree(i8* %27)
  br label %29

29:                                               ; preds = %24, %19
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @enforcing_enabled(%struct.selinux_state*) #1

declare dso_local i32 @context_struct_to_string(%struct.policydb*, %struct.context*, i8**, i32*) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
