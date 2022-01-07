; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_synproxy_core.c_synproxy_check_timestamp_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_synproxy_core.c_synproxy_check_timestamp_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synproxy_options = type { i32, i32, i32 }

@NF_SYNPROXY_OPT_WSCALE = common dso_local global i32 0, align 4
@NF_SYNPROXY_OPT_SACK_PERM = common dso_local global i32 0, align 4
@NF_SYNPROXY_OPT_ECN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.synproxy_options*)* @synproxy_check_timestamp_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synproxy_check_timestamp_cookie(%struct.synproxy_options* %0) #0 {
  %2 = alloca %struct.synproxy_options*, align 8
  store %struct.synproxy_options* %0, %struct.synproxy_options** %2, align 8
  %3 = load %struct.synproxy_options*, %struct.synproxy_options** %2, align 8
  %4 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 15
  %7 = load %struct.synproxy_options*, %struct.synproxy_options** %2, align 8
  %8 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.synproxy_options*, %struct.synproxy_options** %2, align 8
  %10 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 15
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @NF_SYNPROXY_OPT_WSCALE, align 4
  %15 = load %struct.synproxy_options*, %struct.synproxy_options** %2, align 8
  %16 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.synproxy_options*, %struct.synproxy_options** %2, align 8
  %21 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 16
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @NF_SYNPROXY_OPT_SACK_PERM, align 4
  br label %28

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = load %struct.synproxy_options*, %struct.synproxy_options** %2, align 8
  %31 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.synproxy_options*, %struct.synproxy_options** %2, align 8
  %35 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* @NF_SYNPROXY_OPT_ECN, align 4
  br label %42

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 0, %41 ]
  %44 = load %struct.synproxy_options*, %struct.synproxy_options** %2, align 8
  %45 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
