; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_attach_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_attach_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, %struct.xfrm_algo*, %struct.TYPE_5__ }
%struct.xfrm_algo = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.xfrm_algo_desc = type { %struct.TYPE_8__, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.nlattr*)* @attach_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_crypt(%struct.xfrm_state* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.xfrm_algo*, align 8
  %7 = alloca %struct.xfrm_algo*, align 8
  %8 = alloca %struct.xfrm_algo_desc*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %9 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %10 = icmp ne %struct.nlattr* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

12:                                               ; preds = %2
  %13 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %14 = call %struct.xfrm_algo* @nla_data(%struct.nlattr* %13)
  store %struct.xfrm_algo* %14, %struct.xfrm_algo** %7, align 8
  %15 = load %struct.xfrm_algo*, %struct.xfrm_algo** %7, align 8
  %16 = getelementptr inbounds %struct.xfrm_algo, %struct.xfrm_algo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.xfrm_algo_desc* @xfrm_ealg_get_byname(i32 %17, i32 1)
  store %struct.xfrm_algo_desc* %18, %struct.xfrm_algo_desc** %8, align 8
  %19 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %8, align 8
  %20 = icmp ne %struct.xfrm_algo_desc* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* @ENOSYS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %60

24:                                               ; preds = %12
  %25 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %8, align 8
  %26 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %30 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.xfrm_algo*, %struct.xfrm_algo** %7, align 8
  %33 = load %struct.xfrm_algo*, %struct.xfrm_algo** %7, align 8
  %34 = call i32 @xfrm_alg_len(%struct.xfrm_algo* %33)
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.xfrm_algo* @kmemdup(%struct.xfrm_algo* %32, i32 %34, i32 %35)
  store %struct.xfrm_algo* %36, %struct.xfrm_algo** %6, align 8
  %37 = load %struct.xfrm_algo*, %struct.xfrm_algo** %6, align 8
  %38 = icmp ne %struct.xfrm_algo* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %24
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %60

42:                                               ; preds = %24
  %43 = load %struct.xfrm_algo*, %struct.xfrm_algo** %6, align 8
  %44 = getelementptr inbounds %struct.xfrm_algo, %struct.xfrm_algo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %8, align 8
  %47 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strcpy(i32 %45, i32 %48)
  %50 = load %struct.xfrm_algo*, %struct.xfrm_algo** %6, align 8
  %51 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %52 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %51, i32 0, i32 1
  store %struct.xfrm_algo* %50, %struct.xfrm_algo** %52, align 8
  %53 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %8, align 8
  %54 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %59 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %42, %39, %21, %11
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.xfrm_algo* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.xfrm_algo_desc* @xfrm_ealg_get_byname(i32, i32) #1

declare dso_local %struct.xfrm_algo* @kmemdup(%struct.xfrm_algo*, i32, i32) #1

declare dso_local i32 @xfrm_alg_len(%struct.xfrm_algo*) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
