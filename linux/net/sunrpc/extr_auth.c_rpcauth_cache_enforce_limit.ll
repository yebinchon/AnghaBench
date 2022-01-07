; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_cache_enforce_limit.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_cache_enforce_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@number_cred_unused = common dso_local global i64 0, align 8
@auth_max_cred_cachesize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rpcauth_cache_enforce_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpcauth_cache_enforce_limit() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @number_cred_unused, align 8
  %4 = load i64, i64* @auth_max_cred_cachesize, align 8
  %5 = icmp sle i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %21

7:                                                ; preds = %0
  %8 = load i64, i64* @number_cred_unused, align 8
  %9 = load i64, i64* @auth_max_cred_cachesize, align 8
  %10 = sub nsw i64 %8, %9
  store i64 %10, i64* %1, align 8
  store i32 100, i32* %2, align 4
  %11 = load i64, i64* %1, align 8
  %12 = load i32, i32* %2, align 4
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = load i64, i64* %1, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %7
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @rpcauth_cache_do_shrink(i32 %19)
  br label %21

21:                                               ; preds = %18, %6
  ret void
}

declare dso_local i32 @rpcauth_cache_do_shrink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
