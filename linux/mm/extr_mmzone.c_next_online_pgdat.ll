; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmzone.c_next_online_pgdat.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmzone.c_next_online_pgdat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pglist_data = type { i32 }

@MAX_NUMNODES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pglist_data* @next_online_pgdat(%struct.pglist_data* %0) #0 {
  %2 = alloca %struct.pglist_data*, align 8
  %3 = alloca %struct.pglist_data*, align 8
  %4 = alloca i32, align 4
  store %struct.pglist_data* %0, %struct.pglist_data** %3, align 8
  %5 = load %struct.pglist_data*, %struct.pglist_data** %3, align 8
  %6 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @next_online_node(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MAX_NUMNODES, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.pglist_data* null, %struct.pglist_data** %2, align 8
  br label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.pglist_data* @NODE_DATA(i32 %14)
  store %struct.pglist_data* %15, %struct.pglist_data** %2, align 8
  br label %16

16:                                               ; preds = %13, %12
  %17 = load %struct.pglist_data*, %struct.pglist_data** %2, align 8
  ret %struct.pglist_data* %17
}

declare dso_local i32 @next_online_node(i32) #1

declare dso_local %struct.pglist_data* @NODE_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
