; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_xfrm_policy2sec_ctx_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_xfrm_policy2sec_ctx_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { %struct.xfrm_sec_ctx* }
%struct.xfrm_sec_ctx = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy*)* @pfkey_xfrm_policy2sec_ctx_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_xfrm_policy2sec_ctx_size(%struct.xfrm_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfrm_policy*, align 8
  %4 = alloca %struct.xfrm_sec_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %3, align 8
  %6 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %7 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %6, i32 0, i32 0
  %8 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %7, align 8
  store %struct.xfrm_sec_ctx* %8, %struct.xfrm_sec_ctx** %4, align 8
  %9 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %4, align 8
  %10 = icmp ne %struct.xfrm_sec_ctx* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  store i32 4, i32* %5, align 4
  %12 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @PFKEY_ALIGN8(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %11
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @PFKEY_ALIGN8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
