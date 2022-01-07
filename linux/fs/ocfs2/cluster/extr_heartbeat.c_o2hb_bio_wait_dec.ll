; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_bio_wait_dec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_bio_wait_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2hb_bio_wait_ctxt = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.o2hb_bio_wait_ctxt*, i32)* @o2hb_bio_wait_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2hb_bio_wait_dec(%struct.o2hb_bio_wait_ctxt* %0, i32 %1) #0 {
  %3 = alloca %struct.o2hb_bio_wait_ctxt*, align 8
  %4 = alloca i32, align 4
  store %struct.o2hb_bio_wait_ctxt* %0, %struct.o2hb_bio_wait_ctxt** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %22, %2
  %6 = load i32, i32* %4, align 4
  %7 = add i32 %6, -1
  store i32 %7, i32* %4, align 4
  %8 = icmp ne i32 %6, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load %struct.o2hb_bio_wait_ctxt*, %struct.o2hb_bio_wait_ctxt** %3, align 8
  %11 = getelementptr inbounds %struct.o2hb_bio_wait_ctxt, %struct.o2hb_bio_wait_ctxt* %10, i32 0, i32 1
  %12 = call i64 @atomic_dec_and_test(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = icmp ugt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.o2hb_bio_wait_ctxt*, %struct.o2hb_bio_wait_ctxt** %3, align 8
  %20 = getelementptr inbounds %struct.o2hb_bio_wait_ctxt, %struct.o2hb_bio_wait_ctxt* %19, i32 0, i32 0
  %21 = call i32 @complete(i32* %20)
  br label %22

22:                                               ; preds = %14, %9
  br label %5

23:                                               ; preds = %5
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
