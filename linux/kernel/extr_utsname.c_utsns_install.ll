; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_utsname.c_utsns_install.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_utsname.c_utsns_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsproxy = type { %struct.uts_namespace* }
%struct.uts_namespace = type { i32 }
%struct.ns_common = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nsproxy*, %struct.ns_common*)* @utsns_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utsns_install(%struct.nsproxy* %0, %struct.ns_common* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nsproxy*, align 8
  %5 = alloca %struct.ns_common*, align 8
  %6 = alloca %struct.uts_namespace*, align 8
  store %struct.nsproxy* %0, %struct.nsproxy** %4, align 8
  store %struct.ns_common* %1, %struct.ns_common** %5, align 8
  %7 = load %struct.ns_common*, %struct.ns_common** %5, align 8
  %8 = call %struct.uts_namespace* @to_uts_ns(%struct.ns_common* %7)
  store %struct.uts_namespace* %8, %struct.uts_namespace** %6, align 8
  %9 = load %struct.uts_namespace*, %struct.uts_namespace** %6, align 8
  %10 = getelementptr inbounds %struct.uts_namespace, %struct.uts_namespace* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %13 = call i32 @ns_capable(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = call i32 (...) @current_user_ns()
  %17 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %18 = call i32 @ns_capable(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %33

23:                                               ; preds = %15
  %24 = load %struct.uts_namespace*, %struct.uts_namespace** %6, align 8
  %25 = call i32 @get_uts_ns(%struct.uts_namespace* %24)
  %26 = load %struct.nsproxy*, %struct.nsproxy** %4, align 8
  %27 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %26, i32 0, i32 0
  %28 = load %struct.uts_namespace*, %struct.uts_namespace** %27, align 8
  %29 = call i32 @put_uts_ns(%struct.uts_namespace* %28)
  %30 = load %struct.uts_namespace*, %struct.uts_namespace** %6, align 8
  %31 = load %struct.nsproxy*, %struct.nsproxy** %4, align 8
  %32 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %31, i32 0, i32 0
  store %struct.uts_namespace* %30, %struct.uts_namespace** %32, align 8
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %23, %20
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.uts_namespace* @to_uts_ns(%struct.ns_common*) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @get_uts_ns(%struct.uts_namespace*) #1

declare dso_local i32 @put_uts_ns(%struct.uts_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
