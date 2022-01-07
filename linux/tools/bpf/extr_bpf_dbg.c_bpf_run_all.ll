; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_dbg.c_bpf_run_all.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_dbg.c_bpf_run_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.sock_filter = type { i32 }

@bpf_curr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock_filter*, i32, i32*, i32, i32)* @bpf_run_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_run_all(%struct.sock_filter* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sock_filter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sock_filter* %0, %struct.sock_filter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %31, %5
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bpf_curr, i32 0, i32 0), align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* %11, align 4
  %17 = icmp eq i32 %16, 0
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i1 [ false, %12 ], [ %17, %15 ]
  br i1 %19, label %20, label %41

20:                                               ; preds = %18
  %21 = call i32 (...) @bpf_safe_regs()
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bpf_curr, i32 0, i32 1), align 8
  %23 = call i64 @bpf_pc_has_breakpoint(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.sock_filter*, %struct.sock_filter** %6, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @bpf_handle_breakpoint(%struct.TYPE_4__* @bpf_curr, %struct.sock_filter* %26, i32* %27, i32 %28, i32 %29)
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %25, %20
  %32 = load %struct.sock_filter*, %struct.sock_filter** %6, align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bpf_curr, i32 0, i32 1), align 8
  %34 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %32, i64 %33
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @bpf_single_step(%struct.TYPE_4__* @bpf_curr, %struct.sock_filter* %34, i32* %35, i32 %36, i32 %37)
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bpf_curr, i32 0, i32 1), align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bpf_curr, i32 0, i32 1), align 8
  br label %12

41:                                               ; preds = %18
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %47

45:                                               ; preds = %41
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bpf_curr, i32 0, i32 2), align 8
  br label %47

47:                                               ; preds = %45, %44
  %48 = phi i32 [ -1, %44 ], [ %46, %45 ]
  ret i32 %48
}

declare dso_local i32 @bpf_safe_regs(...) #1

declare dso_local i64 @bpf_pc_has_breakpoint(i64) #1

declare dso_local i32 @bpf_handle_breakpoint(%struct.TYPE_4__*, %struct.sock_filter*, i32*, i32, i32) #1

declare dso_local i32 @bpf_single_step(%struct.TYPE_4__*, %struct.sock_filter*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
