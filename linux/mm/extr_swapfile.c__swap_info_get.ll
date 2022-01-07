; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c__swap_info_get.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c__swap_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"swap_info_get: %s%08lx\0A\00", align 1
@Unused_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.swap_info_struct* (i32)* @_swap_info_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.swap_info_struct* @_swap_info_get(i32 %0) #0 {
  %2 = alloca %struct.swap_info_struct*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca %struct.swap_info_struct*, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 %0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.swap_info_struct* @__swap_info_get(i32 %7)
  store %struct.swap_info_struct* %8, %struct.swap_info_struct** %4, align 8
  %9 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %10 = icmp ne %struct.swap_info_struct* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %14 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @swp_offset(i32 %17)
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  br label %25

23:                                               ; preds = %12
  %24 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  store %struct.swap_info_struct* %24, %struct.swap_info_struct** %2, align 8
  br label %31

25:                                               ; preds = %22
  %26 = load i32, i32* @Unused_offset, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %25, %11
  store %struct.swap_info_struct* null, %struct.swap_info_struct** %2, align 8
  br label %31

31:                                               ; preds = %30, %23
  %32 = load %struct.swap_info_struct*, %struct.swap_info_struct** %2, align 8
  ret %struct.swap_info_struct* %32
}

declare dso_local %struct.swap_info_struct* @__swap_info_get(i32) #1

declare dso_local i64 @swp_offset(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
