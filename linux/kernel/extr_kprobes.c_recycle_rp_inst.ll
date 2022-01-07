; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kprobes.c_recycle_rp_inst.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kprobes.c_recycle_rp_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kretprobe_instance = type { i32, %struct.kretprobe* }
%struct.kretprobe = type { i32, %struct.hlist_head }
%struct.hlist_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @recycle_rp_inst(%struct.kretprobe_instance* %0, %struct.hlist_head* %1) #0 {
  %3 = alloca %struct.kretprobe_instance*, align 8
  %4 = alloca %struct.hlist_head*, align 8
  %5 = alloca %struct.kretprobe*, align 8
  store %struct.kretprobe_instance* %0, %struct.kretprobe_instance** %3, align 8
  store %struct.hlist_head* %1, %struct.hlist_head** %4, align 8
  %6 = load %struct.kretprobe_instance*, %struct.kretprobe_instance** %3, align 8
  %7 = getelementptr inbounds %struct.kretprobe_instance, %struct.kretprobe_instance* %6, i32 0, i32 1
  %8 = load %struct.kretprobe*, %struct.kretprobe** %7, align 8
  store %struct.kretprobe* %8, %struct.kretprobe** %5, align 8
  %9 = load %struct.kretprobe_instance*, %struct.kretprobe_instance** %3, align 8
  %10 = getelementptr inbounds %struct.kretprobe_instance, %struct.kretprobe_instance* %9, i32 0, i32 0
  %11 = call i32 @hlist_del(i32* %10)
  %12 = load %struct.kretprobe_instance*, %struct.kretprobe_instance** %3, align 8
  %13 = getelementptr inbounds %struct.kretprobe_instance, %struct.kretprobe_instance* %12, i32 0, i32 0
  %14 = call i32 @INIT_HLIST_NODE(i32* %13)
  %15 = load %struct.kretprobe*, %struct.kretprobe** %5, align 8
  %16 = call i64 @likely(%struct.kretprobe* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.kretprobe*, %struct.kretprobe** %5, align 8
  %20 = getelementptr inbounds %struct.kretprobe, %struct.kretprobe* %19, i32 0, i32 0
  %21 = call i32 @raw_spin_lock(i32* %20)
  %22 = load %struct.kretprobe_instance*, %struct.kretprobe_instance** %3, align 8
  %23 = getelementptr inbounds %struct.kretprobe_instance, %struct.kretprobe_instance* %22, i32 0, i32 0
  %24 = load %struct.kretprobe*, %struct.kretprobe** %5, align 8
  %25 = getelementptr inbounds %struct.kretprobe, %struct.kretprobe* %24, i32 0, i32 1
  %26 = call i32 @hlist_add_head(i32* %23, %struct.hlist_head* %25)
  %27 = load %struct.kretprobe*, %struct.kretprobe** %5, align 8
  %28 = getelementptr inbounds %struct.kretprobe, %struct.kretprobe* %27, i32 0, i32 0
  %29 = call i32 @raw_spin_unlock(i32* %28)
  br label %35

30:                                               ; preds = %2
  %31 = load %struct.kretprobe_instance*, %struct.kretprobe_instance** %3, align 8
  %32 = getelementptr inbounds %struct.kretprobe_instance, %struct.kretprobe_instance* %31, i32 0, i32 0
  %33 = load %struct.hlist_head*, %struct.hlist_head** %4, align 8
  %34 = call i32 @hlist_add_head(i32* %32, %struct.hlist_head* %33)
  br label %35

35:                                               ; preds = %30, %18
  ret void
}

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i64 @likely(%struct.kretprobe*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, %struct.hlist_head*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
