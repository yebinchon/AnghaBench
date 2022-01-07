; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_recv.c_rds_ib_cache_xfer_to_ready.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_recv.c_rds_ib_cache_xfer_to_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_refill_cache = type { %struct.list_head*, i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_ib_refill_cache*)* @rds_ib_cache_xfer_to_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_ib_cache_xfer_to_ready(%struct.rds_ib_refill_cache* %0) #0 {
  %2 = alloca %struct.rds_ib_refill_cache*, align 8
  %3 = alloca %struct.list_head*, align 8
  store %struct.rds_ib_refill_cache* %0, %struct.rds_ib_refill_cache** %2, align 8
  %4 = load %struct.rds_ib_refill_cache*, %struct.rds_ib_refill_cache** %2, align 8
  %5 = getelementptr inbounds %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache* %4, i32 0, i32 1
  %6 = call %struct.list_head* @xchg(i32* %5, i32* null)
  store %struct.list_head* %6, %struct.list_head** %3, align 8
  %7 = load %struct.list_head*, %struct.list_head** %3, align 8
  %8 = icmp ne %struct.list_head* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.rds_ib_refill_cache*, %struct.rds_ib_refill_cache** %2, align 8
  %11 = getelementptr inbounds %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache* %10, i32 0, i32 0
  %12 = load %struct.list_head*, %struct.list_head** %11, align 8
  %13 = icmp ne %struct.list_head* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.list_head*, %struct.list_head** %3, align 8
  %16 = load %struct.rds_ib_refill_cache*, %struct.rds_ib_refill_cache** %2, align 8
  %17 = getelementptr inbounds %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache* %16, i32 0, i32 0
  %18 = load %struct.list_head*, %struct.list_head** %17, align 8
  %19 = call i32 @list_splice_entire_tail(%struct.list_head* %15, %struct.list_head* %18)
  br label %24

20:                                               ; preds = %9
  %21 = load %struct.list_head*, %struct.list_head** %3, align 8
  %22 = load %struct.rds_ib_refill_cache*, %struct.rds_ib_refill_cache** %2, align 8
  %23 = getelementptr inbounds %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache* %22, i32 0, i32 0
  store %struct.list_head* %21, %struct.list_head** %23, align 8
  br label %24

24:                                               ; preds = %20, %14
  br label %25

25:                                               ; preds = %24, %1
  ret void
}

declare dso_local %struct.list_head* @xchg(i32*, i32*) #1

declare dso_local i32 @list_splice_entire_tail(%struct.list_head*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
