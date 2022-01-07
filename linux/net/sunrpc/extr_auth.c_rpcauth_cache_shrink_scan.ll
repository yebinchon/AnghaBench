; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_cache_shrink_scan.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_cache_shrink_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shrinker = type { i32 }
%struct.shrink_control = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SHRINK_STOP = common dso_local global i64 0, align 8
@cred_unused = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.shrinker*, %struct.shrink_control*)* @rpcauth_cache_shrink_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rpcauth_cache_shrink_scan(%struct.shrinker* %0, %struct.shrink_control* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.shrinker*, align 8
  %5 = alloca %struct.shrink_control*, align 8
  store %struct.shrinker* %0, %struct.shrinker** %4, align 8
  store %struct.shrink_control* %1, %struct.shrink_control** %5, align 8
  %6 = load %struct.shrink_control*, %struct.shrink_control** %5, align 8
  %7 = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @SHRINK_STOP, align 8
  store i64 %14, i64* %3, align 8
  br label %25

15:                                               ; preds = %2
  %16 = call i64 @list_empty(i32* @cred_unused)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i64, i64* @SHRINK_STOP, align 8
  store i64 %19, i64* %3, align 8
  br label %25

20:                                               ; preds = %15
  %21 = load %struct.shrink_control*, %struct.shrink_control** %5, align 8
  %22 = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @rpcauth_cache_do_shrink(i32 %23)
  store i64 %24, i64* %3, align 8
  br label %25

25:                                               ; preds = %20, %18, %13
  %26 = load i64, i64* %3, align 8
  ret i64 %26
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @rpcauth_cache_do_shrink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
