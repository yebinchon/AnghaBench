; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_devmap.c_dev_map_create_hash.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_devmap.c_dev_map_create_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_head* (i32)* @dev_map_create_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_head* @dev_map_create_hash(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hlist_head*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.hlist_head* @kmalloc_array(i32 %5, i32 4, i32 %6)
  store %struct.hlist_head* %7, %struct.hlist_head** %4, align 8
  %8 = load %struct.hlist_head*, %struct.hlist_head** %4, align 8
  %9 = icmp ne %struct.hlist_head* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %21, %10
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load %struct.hlist_head*, %struct.hlist_head** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %16, i64 %18
  %20 = call i32 @INIT_HLIST_HEAD(%struct.hlist_head* %19)
  br label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %11

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.hlist_head*, %struct.hlist_head** %4, align 8
  ret %struct.hlist_head* %26
}

declare dso_local %struct.hlist_head* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(%struct.hlist_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
