; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c___blist_add_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c___blist_add_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.journal_head = type { %struct.journal_head*, %struct.journal_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.journal_head**, %struct.journal_head*)* @__blist_add_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__blist_add_buffer(%struct.journal_head** %0, %struct.journal_head* %1) #0 {
  %3 = alloca %struct.journal_head**, align 8
  %4 = alloca %struct.journal_head*, align 8
  %5 = alloca %struct.journal_head*, align 8
  %6 = alloca %struct.journal_head*, align 8
  store %struct.journal_head** %0, %struct.journal_head*** %3, align 8
  store %struct.journal_head* %1, %struct.journal_head** %4, align 8
  %7 = load %struct.journal_head**, %struct.journal_head*** %3, align 8
  %8 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %9 = icmp ne %struct.journal_head* %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %12 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %13 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %12, i32 0, i32 0
  store %struct.journal_head* %11, %struct.journal_head** %13, align 8
  %14 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %15 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %14, i32 0, i32 1
  store %struct.journal_head* %11, %struct.journal_head** %15, align 8
  %16 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %17 = load %struct.journal_head**, %struct.journal_head*** %3, align 8
  store %struct.journal_head* %16, %struct.journal_head** %17, align 8
  br label %35

18:                                               ; preds = %2
  %19 = load %struct.journal_head**, %struct.journal_head*** %3, align 8
  %20 = load %struct.journal_head*, %struct.journal_head** %19, align 8
  store %struct.journal_head* %20, %struct.journal_head** %5, align 8
  %21 = load %struct.journal_head*, %struct.journal_head** %5, align 8
  %22 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %21, i32 0, i32 0
  %23 = load %struct.journal_head*, %struct.journal_head** %22, align 8
  store %struct.journal_head* %23, %struct.journal_head** %6, align 8
  %24 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %25 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %26 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %25, i32 0, i32 0
  store %struct.journal_head* %24, %struct.journal_head** %26, align 8
  %27 = load %struct.journal_head*, %struct.journal_head** %5, align 8
  %28 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %29 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %28, i32 0, i32 1
  store %struct.journal_head* %27, %struct.journal_head** %29, align 8
  %30 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %31 = load %struct.journal_head*, %struct.journal_head** %5, align 8
  %32 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %31, i32 0, i32 0
  store %struct.journal_head* %30, %struct.journal_head** %32, align 8
  %33 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %34 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %33, i32 0, i32 1
  store %struct.journal_head* %30, %struct.journal_head** %34, align 8
  br label %35

35:                                               ; preds = %18, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
