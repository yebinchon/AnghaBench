; ModuleID = '/home/carl/AnghaBench/linux/net/appletalk/extr_aarp.c___aarp_expire_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/appletalk/extr_aarp.c___aarp_expire_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aarp_entry = type { %struct.aarp_entry*, i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aarp_entry**)* @__aarp_expire_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__aarp_expire_timer(%struct.aarp_entry** %0) #0 {
  %2 = alloca %struct.aarp_entry**, align 8
  %3 = alloca %struct.aarp_entry*, align 8
  store %struct.aarp_entry** %0, %struct.aarp_entry*** %2, align 8
  br label %4

4:                                                ; preds = %30, %1
  %5 = load %struct.aarp_entry**, %struct.aarp_entry*** %2, align 8
  %6 = load %struct.aarp_entry*, %struct.aarp_entry** %5, align 8
  %7 = icmp ne %struct.aarp_entry* %6, null
  br i1 %7, label %8, label %31

8:                                                ; preds = %4
  %9 = load i32, i32* @jiffies, align 4
  %10 = load %struct.aarp_entry**, %struct.aarp_entry*** %2, align 8
  %11 = load %struct.aarp_entry*, %struct.aarp_entry** %10, align 8
  %12 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @time_after(i32 %9, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %8
  %17 = load %struct.aarp_entry**, %struct.aarp_entry*** %2, align 8
  %18 = load %struct.aarp_entry*, %struct.aarp_entry** %17, align 8
  store %struct.aarp_entry* %18, %struct.aarp_entry** %3, align 8
  %19 = load %struct.aarp_entry**, %struct.aarp_entry*** %2, align 8
  %20 = load %struct.aarp_entry*, %struct.aarp_entry** %19, align 8
  %21 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %20, i32 0, i32 0
  %22 = load %struct.aarp_entry*, %struct.aarp_entry** %21, align 8
  %23 = load %struct.aarp_entry**, %struct.aarp_entry*** %2, align 8
  store %struct.aarp_entry* %22, %struct.aarp_entry** %23, align 8
  %24 = load %struct.aarp_entry*, %struct.aarp_entry** %3, align 8
  %25 = call i32 @__aarp_expire(%struct.aarp_entry* %24)
  br label %30

26:                                               ; preds = %8
  %27 = load %struct.aarp_entry**, %struct.aarp_entry*** %2, align 8
  %28 = load %struct.aarp_entry*, %struct.aarp_entry** %27, align 8
  %29 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %28, i32 0, i32 0
  store %struct.aarp_entry** %29, %struct.aarp_entry*** %2, align 8
  br label %30

30:                                               ; preds = %26, %16
  br label %4

31:                                               ; preds = %4
  ret void
}

declare dso_local i64 @time_after(i32, i32) #1

declare dso_local i32 @__aarp_expire(%struct.aarp_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
