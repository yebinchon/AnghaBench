; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_core.c_allocate_hook_entries_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_core.c_allocate_hook_entries_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_hook_entries = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nf_hook_entries* (i32)* @allocate_hook_entries_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nf_hook_entries* @allocate_hook_entries_size(i32 %0) #0 {
  %2 = alloca %struct.nf_hook_entries*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_hook_entries*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 4, %7
  %9 = add i64 4, %8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 8, %11
  %13 = add i64 %9, %12
  %14 = add i64 %13, 4
  store i64 %14, i64* %5, align 8
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store %struct.nf_hook_entries* null, %struct.nf_hook_entries** %2, align 8
  br label %30

18:                                               ; preds = %1
  %19 = load i64, i64* %5, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.nf_hook_entries* @kvzalloc(i64 %19, i32 %20)
  store %struct.nf_hook_entries* %21, %struct.nf_hook_entries** %4, align 8
  %22 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %4, align 8
  %23 = icmp ne %struct.nf_hook_entries* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %4, align 8
  %27 = getelementptr inbounds %struct.nf_hook_entries, %struct.nf_hook_entries* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %18
  %29 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %4, align 8
  store %struct.nf_hook_entries* %29, %struct.nf_hook_entries** %2, align 8
  br label %30

30:                                               ; preds = %28, %17
  %31 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %2, align 8
  ret %struct.nf_hook_entries* %31
}

declare dso_local %struct.nf_hook_entries* @kvzalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
