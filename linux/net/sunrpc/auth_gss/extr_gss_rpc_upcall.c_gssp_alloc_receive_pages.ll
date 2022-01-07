; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_upcall.c_gssp_alloc_receive_pages.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_upcall.c_gssp_alloc_receive_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gssx_arg_accept_sec_context = type { i32, i32 }

@NGROUPS_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gssx_arg_accept_sec_context*)* @gssp_alloc_receive_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gssp_alloc_receive_pages(%struct.gssx_arg_accept_sec_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gssx_arg_accept_sec_context*, align 8
  store %struct.gssx_arg_accept_sec_context* %0, %struct.gssx_arg_accept_sec_context** %3, align 8
  %4 = load i32, i32* @NGROUPS_MAX, align 4
  %5 = mul nsw i32 %4, 4
  %6 = load i32, i32* @PAGE_SIZE, align 4
  %7 = call i32 @DIV_ROUND_UP(i32 %5, i32 %6)
  %8 = load %struct.gssx_arg_accept_sec_context*, %struct.gssx_arg_accept_sec_context** %3, align 8
  %9 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, %struct.gssx_arg_accept_sec_context* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %struct.gssx_arg_accept_sec_context*, %struct.gssx_arg_accept_sec_context** %3, align 8
  %11 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, %struct.gssx_arg_accept_sec_context* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @kcalloc(i32 %12, i32 8, i32 %13)
  %15 = load %struct.gssx_arg_accept_sec_context*, %struct.gssx_arg_accept_sec_context** %3, align 8
  %16 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, %struct.gssx_arg_accept_sec_context* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.gssx_arg_accept_sec_context*, %struct.gssx_arg_accept_sec_context** %3, align 8
  %18 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, %struct.gssx_arg_accept_sec_context* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
