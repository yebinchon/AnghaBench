; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_synproxy_core.c_synproxy_init_timestamp_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_synproxy_core.c_synproxy_init_timestamp_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_synproxy_info = type { i32 }
%struct.synproxy_options = type { i32, i32, i32, i32 }

@NF_SYNPROXY_OPT_WSCALE = common dso_local global i32 0, align 4
@NF_SYNPROXY_OPT_SACK_PERM = common dso_local global i32 0, align 4
@NF_SYNPROXY_OPT_ECN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @synproxy_init_timestamp_cookie(%struct.nf_synproxy_info* %0, %struct.synproxy_options* %1) #0 {
  %3 = alloca %struct.nf_synproxy_info*, align 8
  %4 = alloca %struct.synproxy_options*, align 8
  store %struct.nf_synproxy_info* %0, %struct.nf_synproxy_info** %3, align 8
  store %struct.synproxy_options* %1, %struct.synproxy_options** %4, align 8
  %5 = load %struct.synproxy_options*, %struct.synproxy_options** %4, align 8
  %6 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.synproxy_options*, %struct.synproxy_options** %4, align 8
  %9 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = call i32 (...) @tcp_time_stamp_raw()
  %11 = and i32 %10, -64
  %12 = load %struct.synproxy_options*, %struct.synproxy_options** %4, align 8
  %13 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.synproxy_options*, %struct.synproxy_options** %4, align 8
  %15 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NF_SYNPROXY_OPT_WSCALE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load %struct.synproxy_options*, %struct.synproxy_options** %4, align 8
  %22 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.synproxy_options*, %struct.synproxy_options** %4, align 8
  %25 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.nf_synproxy_info*, %struct.nf_synproxy_info** %3, align 8
  %29 = getelementptr inbounds %struct.nf_synproxy_info, %struct.nf_synproxy_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.synproxy_options*, %struct.synproxy_options** %4, align 8
  %32 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  br label %38

33:                                               ; preds = %2
  %34 = load %struct.synproxy_options*, %struct.synproxy_options** %4, align 8
  %35 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, 15
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %20
  %39 = load %struct.synproxy_options*, %struct.synproxy_options** %4, align 8
  %40 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NF_SYNPROXY_OPT_SACK_PERM, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.synproxy_options*, %struct.synproxy_options** %4, align 8
  %47 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, 16
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %45, %38
  %51 = load %struct.synproxy_options*, %struct.synproxy_options** %4, align 8
  %52 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @NF_SYNPROXY_OPT_ECN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.synproxy_options*, %struct.synproxy_options** %4, align 8
  %59 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, 32
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %57, %50
  ret void
}

declare dso_local i32 @tcp_time_stamp_raw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
