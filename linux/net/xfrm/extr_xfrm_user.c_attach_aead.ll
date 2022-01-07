; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_attach_aead.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_attach_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, %struct.xfrm_algo_aead*, %struct.TYPE_5__ }
%struct.xfrm_algo_aead = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.xfrm_algo_desc = type { %struct.TYPE_8__, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.nlattr*)* @attach_aead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_aead(%struct.xfrm_state* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.xfrm_algo_aead*, align 8
  %7 = alloca %struct.xfrm_algo_aead*, align 8
  %8 = alloca %struct.xfrm_algo_desc*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %9 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %10 = icmp ne %struct.nlattr* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

12:                                               ; preds = %2
  %13 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %14 = call %struct.xfrm_algo_aead* @nla_data(%struct.nlattr* %13)
  store %struct.xfrm_algo_aead* %14, %struct.xfrm_algo_aead** %7, align 8
  %15 = load %struct.xfrm_algo_aead*, %struct.xfrm_algo_aead** %7, align 8
  %16 = getelementptr inbounds %struct.xfrm_algo_aead, %struct.xfrm_algo_aead* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.xfrm_algo_aead*, %struct.xfrm_algo_aead** %7, align 8
  %19 = getelementptr inbounds %struct.xfrm_algo_aead, %struct.xfrm_algo_aead* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.xfrm_algo_desc* @xfrm_aead_get_byname(i32 %17, i32 %20, i32 1)
  store %struct.xfrm_algo_desc* %21, %struct.xfrm_algo_desc** %8, align 8
  %22 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %8, align 8
  %23 = icmp ne %struct.xfrm_algo_desc* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %12
  %25 = load i32, i32* @ENOSYS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %63

27:                                               ; preds = %12
  %28 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %8, align 8
  %29 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %33 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.xfrm_algo_aead*, %struct.xfrm_algo_aead** %7, align 8
  %36 = load %struct.xfrm_algo_aead*, %struct.xfrm_algo_aead** %7, align 8
  %37 = call i32 @aead_len(%struct.xfrm_algo_aead* %36)
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.xfrm_algo_aead* @kmemdup(%struct.xfrm_algo_aead* %35, i32 %37, i32 %38)
  store %struct.xfrm_algo_aead* %39, %struct.xfrm_algo_aead** %6, align 8
  %40 = load %struct.xfrm_algo_aead*, %struct.xfrm_algo_aead** %6, align 8
  %41 = icmp ne %struct.xfrm_algo_aead* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %27
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %63

45:                                               ; preds = %27
  %46 = load %struct.xfrm_algo_aead*, %struct.xfrm_algo_aead** %6, align 8
  %47 = getelementptr inbounds %struct.xfrm_algo_aead, %struct.xfrm_algo_aead* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %8, align 8
  %50 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @strcpy(i32 %48, i32 %51)
  %53 = load %struct.xfrm_algo_aead*, %struct.xfrm_algo_aead** %6, align 8
  %54 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %55 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %54, i32 0, i32 1
  store %struct.xfrm_algo_aead* %53, %struct.xfrm_algo_aead** %55, align 8
  %56 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %8, align 8
  %57 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %62 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %45, %42, %24, %11
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.xfrm_algo_aead* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.xfrm_algo_desc* @xfrm_aead_get_byname(i32, i32, i32) #1

declare dso_local %struct.xfrm_algo_aead* @kmemdup(%struct.xfrm_algo_aead*, i32, i32) #1

declare dso_local i32 @aead_len(%struct.xfrm_algo_aead*) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
