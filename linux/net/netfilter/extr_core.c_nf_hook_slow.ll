; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_core.c_nf_hook_slow.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_core.c_nf_hook_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { i32 }
%struct.nf_hook_entries = type { i32, i32* }

@NF_VERDICT_MASK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_hook_slow(%struct.sk_buff* %0, %struct.nf_hook_state* %1, %struct.nf_hook_entries* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nf_hook_state*, align 8
  %8 = alloca %struct.nf_hook_entries*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.nf_hook_state* %1, %struct.nf_hook_state** %7, align 8
  store %struct.nf_hook_entries* %2, %struct.nf_hook_entries** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %12

12:                                               ; preds = %57, %4
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %8, align 8
  %15 = getelementptr inbounds %struct.nf_hook_entries, %struct.nf_hook_entries* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %60

18:                                               ; preds = %12
  %19 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %8, align 8
  %20 = getelementptr inbounds %struct.nf_hook_entries, %struct.nf_hook_entries* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %27 = call i32 @nf_hook_entry_hookfn(i32* %24, %struct.sk_buff* %25, %struct.nf_hook_state* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @NF_VERDICT_MASK, align 4
  %30 = and i32 %28, %29
  switch i32 %30, label %55 [
    i32 130, label %31
    i32 129, label %32
    i32 128, label %44
  ]

31:                                               ; preds = %18
  br label %56

32:                                               ; preds = %18
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call i32 @kfree_skb(%struct.sk_buff* %33)
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @NF_DROP_GETERR(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @EPERM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %39, %32
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %61

44:                                               ; preds = %18
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @nf_queue(%struct.sk_buff* %45, %struct.nf_hook_state* %46, i32 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %57

53:                                               ; preds = %44
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %5, align 4
  br label %61

55:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %61

56:                                               ; preds = %31
  br label %57

57:                                               ; preds = %56, %52
  %58 = load i32, i32* %9, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %12

60:                                               ; preds = %12
  store i32 1, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %55, %53, %42
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @nf_hook_entry_hookfn(i32*, %struct.sk_buff*, %struct.nf_hook_state*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @NF_DROP_GETERR(i32) #1

declare dso_local i32 @nf_queue(%struct.sk_buff*, %struct.nf_hook_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
