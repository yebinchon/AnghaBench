; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_process_v2.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_process_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i64 }
%struct.mld2_query = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet6_dev*, %struct.mld2_query*, i64*)* @mld_process_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mld_process_v2(%struct.inet6_dev* %0, %struct.mld2_query* %1, i64* %2) #0 {
  %4 = alloca %struct.inet6_dev*, align 8
  %5 = alloca %struct.mld2_query*, align 8
  %6 = alloca i64*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %4, align 8
  store %struct.mld2_query* %1, %struct.mld2_query** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load %struct.mld2_query*, %struct.mld2_query** %5, align 8
  %8 = call i32 @mldv2_mrc(%struct.mld2_query* %7)
  %9 = call i32 @msecs_to_jiffies(i32 %8)
  %10 = call i64 @max(i32 %9, i64 1)
  %11 = load i64*, i64** %6, align 8
  store i64 %10, i64* %11, align 8
  %12 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %13 = load %struct.mld2_query*, %struct.mld2_query** %5, align 8
  %14 = call i32 @mld_update_qrv(%struct.inet6_dev* %12, %struct.mld2_query* %13)
  %15 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %16 = load %struct.mld2_query*, %struct.mld2_query** %5, align 8
  %17 = call i32 @mld_update_qi(%struct.inet6_dev* %15, %struct.mld2_query* %16)
  %18 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %19 = load %struct.mld2_query*, %struct.mld2_query** %5, align 8
  %20 = call i32 @mld_update_qri(%struct.inet6_dev* %18, %struct.mld2_query* %19)
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %24 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  ret i32 0
}

declare dso_local i64 @max(i32, i64) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mldv2_mrc(%struct.mld2_query*) #1

declare dso_local i32 @mld_update_qrv(%struct.inet6_dev*, %struct.mld2_query*) #1

declare dso_local i32 @mld_update_qi(%struct.inet6_dev*, %struct.mld2_query*) #1

declare dso_local i32 @mld_update_qri(%struct.inet6_dev*, %struct.mld2_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
