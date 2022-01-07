; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kprobes.c_add_new_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kprobes.c_add_new_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe = type { i64, i32 }

@aggr_post_handler = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kprobe*, %struct.kprobe*)* @add_new_kprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_new_kprobe(%struct.kprobe* %0, %struct.kprobe* %1) #0 {
  %3 = alloca %struct.kprobe*, align 8
  %4 = alloca %struct.kprobe*, align 8
  store %struct.kprobe* %0, %struct.kprobe** %3, align 8
  store %struct.kprobe* %1, %struct.kprobe** %4, align 8
  %5 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %6 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %11 = call i32 @unoptimize_kprobe(%struct.kprobe* %10, i32 1)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %14 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %13, i32 0, i32 1
  %15 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %16 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %15, i32 0, i32 1
  %17 = call i32 @list_add_rcu(i32* %14, i32* %16)
  %18 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %19 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %12
  %23 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %24 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i64, i64* @aggr_post_handler, align 8
  %29 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %30 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %27, %22, %12
  ret i32 0
}

declare dso_local i32 @unoptimize_kprobe(%struct.kprobe*, i32) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
