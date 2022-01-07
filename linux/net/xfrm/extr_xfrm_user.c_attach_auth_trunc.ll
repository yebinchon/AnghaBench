; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_attach_auth_trunc.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_attach_auth_trunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_algo_auth = type { i64, i32 }
%struct.nlattr = type { i32 }
%struct.xfrm_algo_desc = type { %struct.TYPE_6__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_algo_auth**, i32*, %struct.nlattr*)* @attach_auth_trunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_auth_trunc(%struct.xfrm_algo_auth** %0, i32* %1, %struct.nlattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_algo_auth**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.xfrm_algo_auth*, align 8
  %9 = alloca %struct.xfrm_algo_auth*, align 8
  %10 = alloca %struct.xfrm_algo_desc*, align 8
  store %struct.xfrm_algo_auth** %0, %struct.xfrm_algo_auth*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nlattr* %2, %struct.nlattr** %7, align 8
  %11 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %12 = icmp ne %struct.nlattr* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %78

14:                                               ; preds = %3
  %15 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %16 = call %struct.xfrm_algo_auth* @nla_data(%struct.nlattr* %15)
  store %struct.xfrm_algo_auth* %16, %struct.xfrm_algo_auth** %9, align 8
  %17 = load %struct.xfrm_algo_auth*, %struct.xfrm_algo_auth** %9, align 8
  %18 = getelementptr inbounds %struct.xfrm_algo_auth, %struct.xfrm_algo_auth* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.xfrm_algo_desc* @xfrm_aalg_get_byname(i32 %19, i32 1)
  store %struct.xfrm_algo_desc* %20, %struct.xfrm_algo_desc** %10, align 8
  %21 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %22 = icmp ne %struct.xfrm_algo_desc* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load i32, i32* @ENOSYS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %78

26:                                               ; preds = %14
  %27 = load %struct.xfrm_algo_auth*, %struct.xfrm_algo_auth** %9, align 8
  %28 = getelementptr inbounds %struct.xfrm_algo_auth, %struct.xfrm_algo_auth* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %31 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %29, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %78

39:                                               ; preds = %26
  %40 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %41 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.xfrm_algo_auth*, %struct.xfrm_algo_auth** %9, align 8
  %46 = load %struct.xfrm_algo_auth*, %struct.xfrm_algo_auth** %9, align 8
  %47 = call i32 @xfrm_alg_auth_len(%struct.xfrm_algo_auth* %46)
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.xfrm_algo_auth* @kmemdup(%struct.xfrm_algo_auth* %45, i32 %47, i32 %48)
  store %struct.xfrm_algo_auth* %49, %struct.xfrm_algo_auth** %8, align 8
  %50 = load %struct.xfrm_algo_auth*, %struct.xfrm_algo_auth** %8, align 8
  %51 = icmp ne %struct.xfrm_algo_auth* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %39
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %78

55:                                               ; preds = %39
  %56 = load %struct.xfrm_algo_auth*, %struct.xfrm_algo_auth** %8, align 8
  %57 = getelementptr inbounds %struct.xfrm_algo_auth, %struct.xfrm_algo_auth* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %60 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @strcpy(i32 %58, i32 %61)
  %63 = load %struct.xfrm_algo_auth*, %struct.xfrm_algo_auth** %8, align 8
  %64 = getelementptr inbounds %struct.xfrm_algo_auth, %struct.xfrm_algo_auth* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %55
  %68 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %69 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.xfrm_algo_auth*, %struct.xfrm_algo_auth** %8, align 8
  %74 = getelementptr inbounds %struct.xfrm_algo_auth, %struct.xfrm_algo_auth* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %67, %55
  %76 = load %struct.xfrm_algo_auth*, %struct.xfrm_algo_auth** %8, align 8
  %77 = load %struct.xfrm_algo_auth**, %struct.xfrm_algo_auth*** %5, align 8
  store %struct.xfrm_algo_auth* %76, %struct.xfrm_algo_auth** %77, align 8
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %75, %52, %36, %23, %13
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.xfrm_algo_auth* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.xfrm_algo_desc* @xfrm_aalg_get_byname(i32, i32) #1

declare dso_local %struct.xfrm_algo_auth* @kmemdup(%struct.xfrm_algo_auth*, i32, i32) #1

declare dso_local i32 @xfrm_alg_auth_len(%struct.xfrm_algo_auth*) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
