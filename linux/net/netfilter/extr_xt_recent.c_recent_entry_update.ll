; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_recent.c_recent_entry_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_recent.c_recent_entry_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recent_table = type { i32, i32 }
%struct.recent_entry = type { i32, i32, i32, i32* }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.recent_table*, %struct.recent_entry*)* @recent_entry_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recent_entry_update(%struct.recent_table* %0, %struct.recent_entry* %1) #0 {
  %3 = alloca %struct.recent_table*, align 8
  %4 = alloca %struct.recent_entry*, align 8
  store %struct.recent_table* %0, %struct.recent_table** %3, align 8
  store %struct.recent_entry* %1, %struct.recent_entry** %4, align 8
  %5 = load %struct.recent_table*, %struct.recent_table** %3, align 8
  %6 = getelementptr inbounds %struct.recent_table, %struct.recent_table* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.recent_entry*, %struct.recent_entry** %4, align 8
  %9 = getelementptr inbounds %struct.recent_entry, %struct.recent_entry* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @jiffies, align 4
  %13 = load %struct.recent_entry*, %struct.recent_entry** %4, align 8
  %14 = getelementptr inbounds %struct.recent_entry, %struct.recent_entry* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.recent_entry*, %struct.recent_entry** %4, align 8
  %17 = getelementptr inbounds %struct.recent_entry, %struct.recent_entry* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i32, i32* %15, i64 %20
  store i32 %12, i32* %21, align 4
  %22 = load %struct.recent_entry*, %struct.recent_entry** %4, align 8
  %23 = getelementptr inbounds %struct.recent_entry, %struct.recent_entry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.recent_entry*, %struct.recent_entry** %4, align 8
  %26 = getelementptr inbounds %struct.recent_entry, %struct.recent_entry* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.recent_entry*, %struct.recent_entry** %4, align 8
  %31 = getelementptr inbounds %struct.recent_entry, %struct.recent_entry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.recent_entry*, %struct.recent_entry** %4, align 8
  %34 = getelementptr inbounds %struct.recent_entry, %struct.recent_entry* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %29, %2
  %36 = load %struct.recent_entry*, %struct.recent_entry** %4, align 8
  %37 = getelementptr inbounds %struct.recent_entry, %struct.recent_entry* %36, i32 0, i32 0
  %38 = load %struct.recent_table*, %struct.recent_table** %3, align 8
  %39 = getelementptr inbounds %struct.recent_table, %struct.recent_table* %38, i32 0, i32 0
  %40 = call i32 @list_move_tail(i32* %37, i32* %39)
  ret void
}

declare dso_local i32 @list_move_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
