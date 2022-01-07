; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_xfrm_policy2msg_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_xfrm_policy2msg_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, %struct.xfrm_tmpl*, i32 }
%struct.xfrm_tmpl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy*)* @pfkey_xfrm_policy2msg_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_xfrm_policy2msg_size(%struct.xfrm_policy* %0) #0 {
  %2 = alloca %struct.xfrm_policy*, align 8
  %3 = alloca %struct.xfrm_tmpl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %2, align 8
  %7 = load %struct.xfrm_policy*, %struct.xfrm_policy** %2, align 8
  %8 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @pfkey_sockaddr_size(i32 %9)
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %32, %1
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.xfrm_policy*, %struct.xfrm_policy** %2, align 8
  %14 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  %18 = load %struct.xfrm_policy*, %struct.xfrm_policy** %2, align 8
  %19 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %18, i32 0, i32 1
  %20 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %20, i64 %22
  store %struct.xfrm_tmpl* %23, %struct.xfrm_tmpl** %3, align 8
  %24 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %3, align 8
  %25 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @pfkey_sockaddr_len(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %17
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %11

35:                                               ; preds = %11
  %36 = load i32, i32* %4, align 4
  %37 = mul nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = add i64 24, %38
  %40 = add i64 %39, 4
  %41 = load %struct.xfrm_policy*, %struct.xfrm_policy** %2, align 8
  %42 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = add i64 %40, %45
  %47 = load i32, i32* %5, align 4
  %48 = mul nsw i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = add i64 %46, %49
  %51 = load %struct.xfrm_policy*, %struct.xfrm_policy** %2, align 8
  %52 = call i32 @pfkey_xfrm_policy2sec_ctx_size(%struct.xfrm_policy* %51)
  %53 = sext i32 %52 to i64
  %54 = add i64 %50, %53
  %55 = trunc i64 %54 to i32
  ret i32 %55
}

declare dso_local i32 @pfkey_sockaddr_size(i32) #1

declare dso_local i64 @pfkey_sockaddr_len(i32) #1

declare dso_local i32 @pfkey_xfrm_policy2sec_ctx_size(%struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
