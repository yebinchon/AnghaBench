; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_nd_alloc_stack.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_nd_alloc_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i64, i64, i64 }

@EMBEDDED_LEVELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*)* @nd_alloc_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_alloc_stack(%struct.nameidata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nameidata*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %3, align 8
  %4 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %5 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @EMBEDDED_LEVELS, align 8
  %8 = icmp ne i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i64 @likely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

13:                                               ; preds = %1
  %14 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %15 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %18 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @likely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %28

25:                                               ; preds = %13
  %26 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %27 = call i32 @__nd_alloc_stack(%struct.nameidata* %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %24, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @__nd_alloc_stack(%struct.nameidata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
