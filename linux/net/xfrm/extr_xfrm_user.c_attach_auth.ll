; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_attach_auth.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_attach_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_algo_auth = type { i32, i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.xfrm_algo = type { i32, i32, i32 }
%struct.xfrm_algo_desc = type { %struct.TYPE_6__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_algo_auth**, i32*, %struct.nlattr*)* @attach_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_auth(%struct.xfrm_algo_auth** %0, i32* %1, %struct.nlattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_algo_auth**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.xfrm_algo*, align 8
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
  br label %81

14:                                               ; preds = %3
  %15 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %16 = call %struct.xfrm_algo* @nla_data(%struct.nlattr* %15)
  store %struct.xfrm_algo* %16, %struct.xfrm_algo** %8, align 8
  %17 = load %struct.xfrm_algo*, %struct.xfrm_algo** %8, align 8
  %18 = getelementptr inbounds %struct.xfrm_algo, %struct.xfrm_algo* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.xfrm_algo_desc* @xfrm_aalg_get_byname(i32 %19, i32 1)
  store %struct.xfrm_algo_desc* %20, %struct.xfrm_algo_desc** %10, align 8
  %21 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %22 = icmp ne %struct.xfrm_algo_desc* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load i32, i32* @ENOSYS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %81

26:                                               ; preds = %14
  %27 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %28 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.xfrm_algo*, %struct.xfrm_algo** %8, align 8
  %33 = getelementptr inbounds %struct.xfrm_algo, %struct.xfrm_algo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 7
  %36 = sdiv i32 %35, 8
  %37 = sext i32 %36 to i64
  %38 = add i64 16, %37
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.xfrm_algo_auth* @kmalloc(i32 %39, i32 %40)
  store %struct.xfrm_algo_auth* %41, %struct.xfrm_algo_auth** %9, align 8
  %42 = load %struct.xfrm_algo_auth*, %struct.xfrm_algo_auth** %9, align 8
  %43 = icmp ne %struct.xfrm_algo_auth* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %26
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %81

47:                                               ; preds = %26
  %48 = load %struct.xfrm_algo_auth*, %struct.xfrm_algo_auth** %9, align 8
  %49 = getelementptr inbounds %struct.xfrm_algo_auth, %struct.xfrm_algo_auth* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %52 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @strcpy(i32 %50, i32 %53)
  %55 = load %struct.xfrm_algo*, %struct.xfrm_algo** %8, align 8
  %56 = getelementptr inbounds %struct.xfrm_algo, %struct.xfrm_algo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.xfrm_algo_auth*, %struct.xfrm_algo_auth** %9, align 8
  %59 = getelementptr inbounds %struct.xfrm_algo_auth, %struct.xfrm_algo_auth* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %61 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.xfrm_algo_auth*, %struct.xfrm_algo_auth** %9, align 8
  %66 = getelementptr inbounds %struct.xfrm_algo_auth, %struct.xfrm_algo_auth* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.xfrm_algo_auth*, %struct.xfrm_algo_auth** %9, align 8
  %68 = getelementptr inbounds %struct.xfrm_algo_auth, %struct.xfrm_algo_auth* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.xfrm_algo*, %struct.xfrm_algo** %8, align 8
  %71 = getelementptr inbounds %struct.xfrm_algo, %struct.xfrm_algo* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.xfrm_algo*, %struct.xfrm_algo** %8, align 8
  %74 = getelementptr inbounds %struct.xfrm_algo, %struct.xfrm_algo* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 7
  %77 = sdiv i32 %76, 8
  %78 = call i32 @memcpy(i32 %69, i32 %72, i32 %77)
  %79 = load %struct.xfrm_algo_auth*, %struct.xfrm_algo_auth** %9, align 8
  %80 = load %struct.xfrm_algo_auth**, %struct.xfrm_algo_auth*** %5, align 8
  store %struct.xfrm_algo_auth* %79, %struct.xfrm_algo_auth** %80, align 8
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %47, %44, %23, %13
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.xfrm_algo* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.xfrm_algo_desc* @xfrm_aalg_get_byname(i32, i32) #1

declare dso_local %struct.xfrm_algo_auth* @kmalloc(i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
