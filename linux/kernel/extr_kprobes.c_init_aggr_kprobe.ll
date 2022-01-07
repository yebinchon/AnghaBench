; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kprobes.c_init_aggr_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kprobes.c_init_aggr_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe = type { i32, i32, i32, i64, i32, i32, i32 }

@KPROBE_FLAG_OPTIMIZED = common dso_local global i32 0, align 4
@aggr_pre_handler = common dso_local global i32 0, align 4
@aggr_fault_handler = common dso_local global i32 0, align 4
@aggr_post_handler = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kprobe*, %struct.kprobe*)* @init_aggr_kprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_aggr_kprobe(%struct.kprobe* %0, %struct.kprobe* %1) #0 {
  %3 = alloca %struct.kprobe*, align 8
  %4 = alloca %struct.kprobe*, align 8
  store %struct.kprobe* %0, %struct.kprobe** %3, align 8
  store %struct.kprobe* %1, %struct.kprobe** %4, align 8
  %5 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %6 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %7 = call i32 @copy_kprobe(%struct.kprobe* %5, %struct.kprobe* %6)
  %8 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %9 = call i32 @flush_insn_slot(%struct.kprobe* %8)
  %10 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %11 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %14 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %16 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @KPROBE_FLAG_OPTIMIZED, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %22 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @aggr_pre_handler, align 4
  %24 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %25 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @aggr_fault_handler, align 4
  %27 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %28 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %30 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %2
  %34 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %35 = call i32 @kprobe_gone(%struct.kprobe* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* @aggr_post_handler, align 8
  %39 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %40 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %39, i32 0, i32 3
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %33, %2
  %42 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %43 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %42, i32 0, i32 2
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %46 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %45, i32 0, i32 1
  %47 = call i32 @INIT_HLIST_NODE(i32* %46)
  %48 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %49 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %48, i32 0, i32 2
  %50 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %51 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %50, i32 0, i32 2
  %52 = call i32 @list_add_rcu(i32* %49, i32* %51)
  %53 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %54 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %53, i32 0, i32 1
  %55 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %56 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %55, i32 0, i32 1
  %57 = call i32 @hlist_replace_rcu(i32* %54, i32* %56)
  ret void
}

declare dso_local i32 @copy_kprobe(%struct.kprobe*, %struct.kprobe*) #1

declare dso_local i32 @flush_insn_slot(%struct.kprobe*) #1

declare dso_local i32 @kprobe_gone(%struct.kprobe*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @hlist_replace_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
