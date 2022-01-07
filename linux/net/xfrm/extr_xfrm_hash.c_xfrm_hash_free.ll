; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_hash.c_xfrm_hash_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_hash.c_xfrm_hash_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@hashdist = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfrm_hash_free(%struct.hlist_head* %0, i32 %1) #0 {
  %3 = alloca %struct.hlist_head*, align 8
  %4 = alloca i32, align 4
  store %struct.hlist_head* %0, %struct.hlist_head** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @PAGE_SIZE, align 4
  %7 = icmp ule i32 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.hlist_head*, %struct.hlist_head** %3, align 8
  %10 = call i32 @kfree(%struct.hlist_head* %9)
  br label %24

11:                                               ; preds = %2
  %12 = load i64, i64* @hashdist, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load %struct.hlist_head*, %struct.hlist_head** %3, align 8
  %16 = call i32 @vfree(%struct.hlist_head* %15)
  br label %23

17:                                               ; preds = %11
  %18 = load %struct.hlist_head*, %struct.hlist_head** %3, align 8
  %19 = ptrtoint %struct.hlist_head* %18 to i64
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @get_order(i32 %20)
  %22 = call i32 @free_pages(i64 %19, i32 %21)
  br label %23

23:                                               ; preds = %17, %14
  br label %24

24:                                               ; preds = %23, %8
  ret void
}

declare dso_local i32 @kfree(%struct.hlist_head*) #1

declare dso_local i32 @vfree(%struct.hlist_head*) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
