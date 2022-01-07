; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_synproxy_core.c_synproxy_options_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_synproxy_core.c_synproxy_options_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synproxy_options = type { i32 }

@NF_SYNPROXY_OPT_MSS = common dso_local global i32 0, align 4
@TCPOLEN_MSS_ALIGNED = common dso_local global i64 0, align 8
@NF_SYNPROXY_OPT_TIMESTAMP = common dso_local global i32 0, align 4
@TCPOLEN_TSTAMP_ALIGNED = common dso_local global i64 0, align 8
@NF_SYNPROXY_OPT_SACK_PERM = common dso_local global i32 0, align 4
@TCPOLEN_SACKPERM_ALIGNED = common dso_local global i64 0, align 8
@NF_SYNPROXY_OPT_WSCALE = common dso_local global i32 0, align 4
@TCPOLEN_WSCALE_ALIGNED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.synproxy_options*)* @synproxy_options_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synproxy_options_size(%struct.synproxy_options* %0) #0 {
  %2 = alloca %struct.synproxy_options*, align 8
  %3 = alloca i32, align 4
  store %struct.synproxy_options* %0, %struct.synproxy_options** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.synproxy_options*, %struct.synproxy_options** %2, align 8
  %5 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @NF_SYNPROXY_OPT_MSS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i64, i64* @TCPOLEN_MSS_ALIGNED, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = add nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.synproxy_options*, %struct.synproxy_options** %2, align 8
  %18 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NF_SYNPROXY_OPT_TIMESTAMP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load i64, i64* @TCPOLEN_TSTAMP_ALIGNED, align 8
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %16
  %30 = load %struct.synproxy_options*, %struct.synproxy_options** %2, align 8
  %31 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NF_SYNPROXY_OPT_SACK_PERM, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i64, i64* @TCPOLEN_SACKPERM_ALIGNED, align 8
  %38 = load i32, i32* %3, align 4
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %36, %29
  br label %43

43:                                               ; preds = %42, %23
  %44 = load %struct.synproxy_options*, %struct.synproxy_options** %2, align 8
  %45 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @NF_SYNPROXY_OPT_WSCALE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i64, i64* @TCPOLEN_WSCALE_ALIGNED, align 8
  %52 = load i32, i32* %3, align 4
  %53 = zext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %50, %43
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
