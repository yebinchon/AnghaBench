; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_queue.c_nf_iterate.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_queue.c_nf_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { i32 }
%struct.nf_hook_entries = type { i32, %struct.nf_hook_entry* }
%struct.nf_hook_entry = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_REPEAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_hook_state*, %struct.nf_hook_entries*, i32*)* @nf_iterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_iterate(%struct.sk_buff* %0, %struct.nf_hook_state* %1, %struct.nf_hook_entries* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nf_hook_state*, align 8
  %8 = alloca %struct.nf_hook_entries*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nf_hook_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.nf_hook_state* %1, %struct.nf_hook_state** %7, align 8
  store %struct.nf_hook_entries* %2, %struct.nf_hook_entries** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %12, align 4
  br label %15

15:                                               ; preds = %45, %4
  %16 = load i32, i32* %12, align 4
  %17 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %8, align 8
  %18 = getelementptr inbounds %struct.nf_hook_entries, %struct.nf_hook_entries* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %15
  %22 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %8, align 8
  %23 = getelementptr inbounds %struct.nf_hook_entries, %struct.nf_hook_entries* %22, i32 0, i32 1
  %24 = load %struct.nf_hook_entry*, %struct.nf_hook_entry** %23, align 8
  %25 = load i32, i32* %12, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.nf_hook_entry, %struct.nf_hook_entry* %24, i64 %26
  store %struct.nf_hook_entry* %27, %struct.nf_hook_entry** %10, align 8
  br label %28

28:                                               ; preds = %44, %21
  %29 = load %struct.nf_hook_entry*, %struct.nf_hook_entry** %10, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %32 = call i32 @nf_hook_entry_hookfn(%struct.nf_hook_entry* %29, %struct.sk_buff* %30, %struct.nf_hook_state* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @NF_ACCEPT, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load i32, i32* %12, align 4
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @NF_REPEAT, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %52

44:                                               ; preds = %36
  br label %28

45:                                               ; preds = %28
  %46 = load i32, i32* %12, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %15

48:                                               ; preds = %15
  %49 = load i32, i32* %12, align 4
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %48, %42
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @nf_hook_entry_hookfn(%struct.nf_hook_entry*, %struct.sk_buff*, %struct.nf_hook_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
