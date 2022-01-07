; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_btree.c_btree_init.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_btree.c_btree_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_head = type { i32 }

@btree_alloc = common dso_local global i32 0, align 4
@btree_free = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btree_init(%struct.btree_head* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btree_head*, align 8
  store %struct.btree_head* %0, %struct.btree_head** %3, align 8
  %4 = load %struct.btree_head*, %struct.btree_head** %3, align 8
  %5 = call i32 @__btree_init(%struct.btree_head* %4)
  %6 = load i32, i32* @btree_alloc, align 4
  %7 = load i32, i32* @btree_free, align 4
  %8 = call i32 @mempool_create(i32 0, i32 %6, i32 %7, i32* null)
  %9 = load %struct.btree_head*, %struct.btree_head** %3, align 8
  %10 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.btree_head*, %struct.btree_head** %3, align 8
  %12 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @__btree_init(%struct.btree_head*) #1

declare dso_local i32 @mempool_create(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
