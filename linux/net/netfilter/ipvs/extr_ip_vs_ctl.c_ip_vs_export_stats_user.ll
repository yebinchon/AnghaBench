; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_export_stats_user.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_export_stats_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_stats_user = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.ip_vs_kstats = type { i64, i64, i64, i64, i64, i32, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_stats_user*, %struct.ip_vs_kstats*)* @ip_vs_export_stats_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_export_stats_user(%struct.ip_vs_stats_user* %0, %struct.ip_vs_kstats* %1) #0 {
  %3 = alloca %struct.ip_vs_stats_user*, align 8
  %4 = alloca %struct.ip_vs_kstats*, align 8
  store %struct.ip_vs_stats_user* %0, %struct.ip_vs_stats_user** %3, align 8
  store %struct.ip_vs_kstats* %1, %struct.ip_vs_kstats** %4, align 8
  %5 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %4, align 8
  %6 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %5, i32 0, i32 9
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = load %struct.ip_vs_stats_user*, %struct.ip_vs_stats_user** %3, align 8
  %10 = getelementptr inbounds %struct.ip_vs_stats_user, %struct.ip_vs_stats_user* %9, i32 0, i32 9
  store i8* %8, i8** %10, align 8
  %11 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %4, align 8
  %12 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %11, i32 0, i32 8
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = load %struct.ip_vs_stats_user*, %struct.ip_vs_stats_user** %3, align 8
  %16 = getelementptr inbounds %struct.ip_vs_stats_user, %struct.ip_vs_stats_user* %15, i32 0, i32 8
  store i8* %14, i8** %16, align 8
  %17 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %4, align 8
  %18 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.ip_vs_stats_user*, %struct.ip_vs_stats_user** %3, align 8
  %22 = getelementptr inbounds %struct.ip_vs_stats_user, %struct.ip_vs_stats_user* %21, i32 0, i32 7
  store i8* %20, i8** %22, align 8
  %23 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %4, align 8
  %24 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ip_vs_stats_user*, %struct.ip_vs_stats_user** %3, align 8
  %27 = getelementptr inbounds %struct.ip_vs_stats_user, %struct.ip_vs_stats_user* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %4, align 8
  %29 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ip_vs_stats_user*, %struct.ip_vs_stats_user** %3, align 8
  %32 = getelementptr inbounds %struct.ip_vs_stats_user, %struct.ip_vs_stats_user* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %4, align 8
  %34 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.ip_vs_stats_user*, %struct.ip_vs_stats_user** %3, align 8
  %38 = getelementptr inbounds %struct.ip_vs_stats_user, %struct.ip_vs_stats_user* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  %39 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %4, align 8
  %40 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.ip_vs_stats_user*, %struct.ip_vs_stats_user** %3, align 8
  %44 = getelementptr inbounds %struct.ip_vs_stats_user, %struct.ip_vs_stats_user* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %4, align 8
  %46 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.ip_vs_stats_user*, %struct.ip_vs_stats_user** %3, align 8
  %50 = getelementptr inbounds %struct.ip_vs_stats_user, %struct.ip_vs_stats_user* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %4, align 8
  %52 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.ip_vs_stats_user*, %struct.ip_vs_stats_user** %3, align 8
  %56 = getelementptr inbounds %struct.ip_vs_stats_user, %struct.ip_vs_stats_user* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %4, align 8
  %58 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.ip_vs_stats_user*, %struct.ip_vs_stats_user** %3, align 8
  %62 = getelementptr inbounds %struct.ip_vs_stats_user, %struct.ip_vs_stats_user* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
