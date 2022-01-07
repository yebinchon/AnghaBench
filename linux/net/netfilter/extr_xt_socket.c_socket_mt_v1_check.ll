; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_socket.c_socket_mt_v1_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_socket.c_socket_mt_v1_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { i32, i32, i64 }
%struct.xt_socket_mtinfo1 = type { i32 }

@XT_SOCKET_FLAGS_V1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unknown flags 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @socket_mt_v1_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_mt_v1_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_socket_mtinfo1*, align 8
  %5 = alloca i32, align 4
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %6 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.xt_socket_mtinfo1*
  store %struct.xt_socket_mtinfo1* %9, %struct.xt_socket_mtinfo1** %4, align 8
  %10 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %11 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %14 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @socket_mt_enable_defrag(i32 %12, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %40

21:                                               ; preds = %1
  %22 = load %struct.xt_socket_mtinfo1*, %struct.xt_socket_mtinfo1** %4, align 8
  %23 = getelementptr inbounds %struct.xt_socket_mtinfo1, %struct.xt_socket_mtinfo1* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @XT_SOCKET_FLAGS_V1, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %21
  %30 = load %struct.xt_socket_mtinfo1*, %struct.xt_socket_mtinfo1** %4, align 8
  %31 = getelementptr inbounds %struct.xt_socket_mtinfo1, %struct.xt_socket_mtinfo1* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @XT_SOCKET_FLAGS_V1, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %29, %19
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @socket_mt_enable_defrag(i32, i32) #1

declare dso_local i32 @pr_info_ratelimited(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
