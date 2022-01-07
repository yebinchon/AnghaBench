; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_groups.c_groups_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_groups.c_groups_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group_info = type { i32, i32 }

@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.group_info* @groups_alloc(i32 %0) #0 {
  %2 = alloca %struct.group_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.group_info*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 4, %7
  %9 = add i64 8, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %13 = load i32, i32* @__GFP_NOWARN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @__GFP_NORETRY, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.group_info* @kmalloc(i32 %11, i32 %16)
  store %struct.group_info* %17, %struct.group_info** %4, align 8
  %18 = load %struct.group_info*, %struct.group_info** %4, align 8
  %19 = icmp ne %struct.group_info* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %23 = load i32, i32* @PAGE_KERNEL, align 4
  %24 = call %struct.group_info* @__vmalloc(i32 %21, i32 %22, i32 %23)
  store %struct.group_info* %24, %struct.group_info** %4, align 8
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.group_info*, %struct.group_info** %4, align 8
  %27 = icmp ne %struct.group_info* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store %struct.group_info* null, %struct.group_info** %2, align 8
  br label %37

29:                                               ; preds = %25
  %30 = load %struct.group_info*, %struct.group_info** %4, align 8
  %31 = getelementptr inbounds %struct.group_info, %struct.group_info* %30, i32 0, i32 1
  %32 = call i32 @atomic_set(i32* %31, i32 1)
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.group_info*, %struct.group_info** %4, align 8
  %35 = getelementptr inbounds %struct.group_info, %struct.group_info* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.group_info*, %struct.group_info** %4, align 8
  store %struct.group_info* %36, %struct.group_info** %2, align 8
  br label %37

37:                                               ; preds = %29, %28
  %38 = load %struct.group_info*, %struct.group_info** %2, align 8
  ret %struct.group_info* %38
}

declare dso_local %struct.group_info* @kmalloc(i32, i32) #1

declare dso_local %struct.group_info* @__vmalloc(i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
