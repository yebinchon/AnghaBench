; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c___nd_alloc_stack.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c___nd_alloc_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, %struct.saved*, i32 }
%struct.saved = type { i32 }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@MAXSYMLINKS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*)* @__nd_alloc_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nd_alloc_stack(%struct.nameidata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nameidata*, align 8
  %4 = alloca %struct.saved*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %3, align 8
  %5 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %6 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @LOOKUP_RCU, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load i32, i32* @MAXSYMLINKS, align 4
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.saved* @kmalloc_array(i32 %12, i32 4, i32 %13)
  store %struct.saved* %14, %struct.saved** %4, align 8
  %15 = load %struct.saved*, %struct.saved** %4, align 8
  %16 = icmp ne %struct.saved* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load i32, i32* @ECHILD, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %48

24:                                               ; preds = %11
  br label %39

25:                                               ; preds = %1
  %26 = load i32, i32* @MAXSYMLINKS, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.saved* @kmalloc_array(i32 %26, i32 4, i32 %27)
  store %struct.saved* %28, %struct.saved** %4, align 8
  %29 = load %struct.saved*, %struct.saved** %4, align 8
  %30 = icmp ne %struct.saved* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %48

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %24
  %40 = load %struct.saved*, %struct.saved** %4, align 8
  %41 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %42 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @memcpy(%struct.saved* %40, i32 %43, i32 4)
  %45 = load %struct.saved*, %struct.saved** %4, align 8
  %46 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %47 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %46, i32 0, i32 1
  store %struct.saved* %45, %struct.saved** %47, align 8
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %39, %35, %21
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.saved* @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(%struct.saved*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
