; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_em_ipset.c_em_ipset_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_em_ipset.c_em_ipset_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tcf_ematch = type { i32, i64 }
%struct.xt_set_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i8*, i32, %struct.tcf_ematch*)* @em_ipset_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_ipset_change(%struct.net* %0, i8* %1, i32 %2, %struct.tcf_ematch* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcf_ematch*, align 8
  %10 = alloca %struct.xt_set_info*, align 8
  %11 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.tcf_ematch* %3, %struct.tcf_ematch** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.xt_set_info*
  store %struct.xt_set_info* %13, %struct.xt_set_info** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 4
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %54

20:                                               ; preds = %4
  %21 = load %struct.net*, %struct.net** %6, align 8
  %22 = load %struct.xt_set_info*, %struct.xt_set_info** %10, align 8
  %23 = getelementptr inbounds %struct.xt_set_info, %struct.xt_set_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @ip_set_nfnl_get_byindex(%struct.net* %21, i32 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @IPSET_INVALID_ID, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %54

32:                                               ; preds = %20
  %33 = load %struct.tcf_ematch*, %struct.tcf_ematch** %9, align 8
  %34 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %33, i32 0, i32 0
  store i32 4, i32* %34, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.tcf_ematch*, %struct.tcf_ematch** %9, align 8
  %37 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i64 @kmemdup(i8* %35, i32 %38, i32 %39)
  %41 = load %struct.tcf_ematch*, %struct.tcf_ematch** %9, align 8
  %42 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.tcf_ematch*, %struct.tcf_ematch** %9, align 8
  %44 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %54

48:                                               ; preds = %32
  %49 = load %struct.net*, %struct.net** %6, align 8
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @ip_set_nfnl_put(%struct.net* %49, i64 %50)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %48, %47, %29, %17
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i64 @ip_set_nfnl_get_byindex(%struct.net*, i32) #1

declare dso_local i64 @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @ip_set_nfnl_put(%struct.net*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
