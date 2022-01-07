; ModuleID = '/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_latent_entropy_plugin.c_handle_tail_calls.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_latent_entropy_plugin.c_handle_tail_calls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @handle_tail_calls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_tail_calls(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @gsi_start_bb(i32 %9)
  store i32 %10, i32* %6, align 4
  br label %11

11:                                               ; preds = %33, %2
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @gsi_end_p(i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @gsi_stmt(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @is_gimple_call(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %33

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  %25 = call i32* @as_a_gcall(i32 %24)
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @gimple_call_tail_p(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %33

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @__perturb_latent_entropy(i32* %6, i32 %31)
  store i32 1, i32* %3, align 4
  br label %36

33:                                               ; preds = %29, %22
  %34 = call i32 @gsi_next(i32* %6)
  br label %11

35:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @gsi_start_bb(i32) #1

declare dso_local i32 @gsi_end_p(i32) #1

declare dso_local i32 @gsi_stmt(i32) #1

declare dso_local i32 @is_gimple_call(i32) #1

declare dso_local i32* @as_a_gcall(i32) #1

declare dso_local i32 @gimple_call_tail_p(i32*) #1

declare dso_local i32 @__perturb_latent_entropy(i32*, i32) #1

declare dso_local i32 @gsi_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
