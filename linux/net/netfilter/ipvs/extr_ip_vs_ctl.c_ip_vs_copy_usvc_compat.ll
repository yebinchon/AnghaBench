; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_copy_usvc_compat.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_copy_usvc_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_service_user_kern = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ip_vs_service_user = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user*)* @ip_vs_copy_usvc_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_copy_usvc_compat(%struct.ip_vs_service_user_kern* %0, %struct.ip_vs_service_user* %1) #0 {
  %3 = alloca %struct.ip_vs_service_user_kern*, align 8
  %4 = alloca %struct.ip_vs_service_user*, align 8
  store %struct.ip_vs_service_user_kern* %0, %struct.ip_vs_service_user_kern** %3, align 8
  store %struct.ip_vs_service_user* %1, %struct.ip_vs_service_user** %4, align 8
  %5 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %3, align 8
  %6 = call i32 @memset(%struct.ip_vs_service_user_kern* %5, i32 0, i32 36)
  %7 = load i32, i32* @AF_INET, align 4
  %8 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %3, align 8
  %9 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %8, i32 0, i32 8
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ip_vs_service_user*, %struct.ip_vs_service_user** %4, align 8
  %11 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %3, align 8
  %14 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ip_vs_service_user*, %struct.ip_vs_service_user** %4, align 8
  %16 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %3, align 8
  %19 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.ip_vs_service_user*, %struct.ip_vs_service_user** %4, align 8
  %22 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %3, align 8
  %25 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ip_vs_service_user*, %struct.ip_vs_service_user** %4, align 8
  %27 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %3, align 8
  %30 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ip_vs_service_user*, %struct.ip_vs_service_user** %4, align 8
  %32 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %3, align 8
  %35 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ip_vs_service_user*, %struct.ip_vs_service_user** %4, align 8
  %37 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %3, align 8
  %40 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ip_vs_service_user*, %struct.ip_vs_service_user** %4, align 8
  %42 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %3, align 8
  %45 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ip_vs_service_user*, %struct.ip_vs_service_user** %4, align 8
  %47 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %3, align 8
  %50 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  ret void
}

declare dso_local i32 @memset(%struct.ip_vs_service_user_kern*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
