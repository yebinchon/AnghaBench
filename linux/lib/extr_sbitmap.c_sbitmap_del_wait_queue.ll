; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_sbitmap.c_sbitmap_del_wait_queue.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_sbitmap.c_sbitmap_del_wait_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbq_wait = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbitmap_del_wait_queue(%struct.sbq_wait* %0) #0 {
  %2 = alloca %struct.sbq_wait*, align 8
  store %struct.sbq_wait* %0, %struct.sbq_wait** %2, align 8
  %3 = load %struct.sbq_wait*, %struct.sbq_wait** %2, align 8
  %4 = getelementptr inbounds %struct.sbq_wait, %struct.sbq_wait* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = call i32 @list_del_init(i32* %5)
  %7 = load %struct.sbq_wait*, %struct.sbq_wait** %2, align 8
  %8 = getelementptr inbounds %struct.sbq_wait, %struct.sbq_wait* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.sbq_wait*, %struct.sbq_wait** %2, align 8
  %13 = getelementptr inbounds %struct.sbq_wait, %struct.sbq_wait* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @atomic_dec(i32* %15)
  %17 = load %struct.sbq_wait*, %struct.sbq_wait** %2, align 8
  %18 = getelementptr inbounds %struct.sbq_wait, %struct.sbq_wait* %17, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %18, align 8
  br label %19

19:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
