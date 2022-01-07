; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_upcall.c_gssp_free_receive_pages.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_upcall.c_gssp_free_receive_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gssx_arg_accept_sec_context = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gssx_arg_accept_sec_context*)* @gssp_free_receive_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gssp_free_receive_pages(%struct.gssx_arg_accept_sec_context* %0) #0 {
  %2 = alloca %struct.gssx_arg_accept_sec_context*, align 8
  %3 = alloca i32, align 4
  store %struct.gssx_arg_accept_sec_context* %0, %struct.gssx_arg_accept_sec_context** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %30, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.gssx_arg_accept_sec_context*, %struct.gssx_arg_accept_sec_context** %2, align 8
  %7 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, %struct.gssx_arg_accept_sec_context* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = load %struct.gssx_arg_accept_sec_context*, %struct.gssx_arg_accept_sec_context** %2, align 8
  %12 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, %struct.gssx_arg_accept_sec_context* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %10, %4
  %20 = phi i1 [ false, %4 ], [ %18, %10 ]
  br i1 %20, label %21, label %33

21:                                               ; preds = %19
  %22 = load %struct.gssx_arg_accept_sec_context*, %struct.gssx_arg_accept_sec_context** %2, align 8
  %23 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, %struct.gssx_arg_accept_sec_context* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @__free_page(i64 %28)
  br label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %4

33:                                               ; preds = %19
  %34 = load %struct.gssx_arg_accept_sec_context*, %struct.gssx_arg_accept_sec_context** %2, align 8
  %35 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, %struct.gssx_arg_accept_sec_context* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = call i32 @kfree(i64* %36)
  ret void
}

declare dso_local i32 @__free_page(i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
