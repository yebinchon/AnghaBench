; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_copy_service.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_copy_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_service_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ip_vs_service = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ip_vs_scheduler = type { i8* }
%struct.ip_vs_kstats = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_service_entry*, %struct.ip_vs_service*)* @ip_vs_copy_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_copy_service(%struct.ip_vs_service_entry* %0, %struct.ip_vs_service* %1) #0 {
  %3 = alloca %struct.ip_vs_service_entry*, align 8
  %4 = alloca %struct.ip_vs_service*, align 8
  %5 = alloca %struct.ip_vs_scheduler*, align 8
  %6 = alloca %struct.ip_vs_kstats, align 4
  %7 = alloca i8*, align 8
  store %struct.ip_vs_service_entry* %0, %struct.ip_vs_service_entry** %3, align 8
  store %struct.ip_vs_service* %1, %struct.ip_vs_service** %4, align 8
  %8 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %9 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %8, i32 0, i32 9
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ip_vs_scheduler* @rcu_dereference_protected(i32 %10, i32 1)
  store %struct.ip_vs_scheduler* %11, %struct.ip_vs_scheduler** %5, align 8
  %12 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %5, align 8
  %13 = icmp ne %struct.ip_vs_scheduler* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %5, align 8
  %16 = getelementptr inbounds %struct.ip_vs_scheduler, %struct.ip_vs_scheduler* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i8* [ %17, %14 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %18 ]
  store i8* %20, i8** %7, align 8
  %21 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %22 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ip_vs_service_entry*, %struct.ip_vs_service_entry** %3, align 8
  %25 = getelementptr inbounds %struct.ip_vs_service_entry, %struct.ip_vs_service_entry* %24, i32 0, i32 9
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %27 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ip_vs_service_entry*, %struct.ip_vs_service_entry** %3, align 8
  %31 = getelementptr inbounds %struct.ip_vs_service_entry, %struct.ip_vs_service_entry* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %33 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ip_vs_service_entry*, %struct.ip_vs_service_entry** %3, align 8
  %36 = getelementptr inbounds %struct.ip_vs_service_entry, %struct.ip_vs_service_entry* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %38 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ip_vs_service_entry*, %struct.ip_vs_service_entry** %3, align 8
  %41 = getelementptr inbounds %struct.ip_vs_service_entry, %struct.ip_vs_service_entry* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ip_vs_service_entry*, %struct.ip_vs_service_entry** %3, align 8
  %43 = getelementptr inbounds %struct.ip_vs_service_entry, %struct.ip_vs_service_entry* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @strlcpy(i32 %44, i8* %45, i32 4)
  %47 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %48 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ip_vs_service_entry*, %struct.ip_vs_service_entry** %3, align 8
  %51 = getelementptr inbounds %struct.ip_vs_service_entry, %struct.ip_vs_service_entry* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %53 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @HZ, align 4
  %56 = sdiv i32 %54, %55
  %57 = load %struct.ip_vs_service_entry*, %struct.ip_vs_service_entry** %3, align 8
  %58 = getelementptr inbounds %struct.ip_vs_service_entry, %struct.ip_vs_service_entry* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %60 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ip_vs_service_entry*, %struct.ip_vs_service_entry** %3, align 8
  %63 = getelementptr inbounds %struct.ip_vs_service_entry, %struct.ip_vs_service_entry* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %65 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ip_vs_service_entry*, %struct.ip_vs_service_entry** %3, align 8
  %68 = getelementptr inbounds %struct.ip_vs_service_entry, %struct.ip_vs_service_entry* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %70 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %69, i32 0, i32 1
  %71 = call i32 @ip_vs_copy_stats(%struct.ip_vs_kstats* %6, i32* %70)
  %72 = load %struct.ip_vs_service_entry*, %struct.ip_vs_service_entry** %3, align 8
  %73 = getelementptr inbounds %struct.ip_vs_service_entry, %struct.ip_vs_service_entry* %72, i32 0, i32 1
  %74 = call i32 @ip_vs_export_stats_user(i32* %73, %struct.ip_vs_kstats* %6)
  ret void
}

declare dso_local %struct.ip_vs_scheduler* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @ip_vs_copy_stats(%struct.ip_vs_kstats*, i32*) #1

declare dso_local i32 @ip_vs_export_stats_user(i32*, %struct.ip_vs_kstats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
