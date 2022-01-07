; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_rsvp.h_gen_tunnel.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_rsvp.h_gen_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsvp_head = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsvp_head*)* @gen_tunnel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_tunnel(%struct.rsvp_head* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsvp_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rsvp_head* %0, %struct.rsvp_head** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %38, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %41

9:                                                ; preds = %6
  store i32 255, i32* %4, align 4
  br label %10

10:                                               ; preds = %32, %9
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = load %struct.rsvp_head*, %struct.rsvp_head** %3, align 8
  %15 = getelementptr inbounds %struct.rsvp_head, %struct.rsvp_head* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %15, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.rsvp_head*, %struct.rsvp_head** %3, align 8
  %21 = getelementptr inbounds %struct.rsvp_head, %struct.rsvp_head* %20, i32 0, i32 0
  store i64 1, i64* %21, align 8
  br label %22

22:                                               ; preds = %19, %13
  %23 = load %struct.rsvp_head*, %struct.rsvp_head** %3, align 8
  %24 = call i64 @tunnel_bts(%struct.rsvp_head* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.rsvp_head*, %struct.rsvp_head** %3, align 8
  %28 = getelementptr inbounds %struct.rsvp_head, %struct.rsvp_head* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %42

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %4, align 4
  br label %10

35:                                               ; preds = %10
  %36 = load %struct.rsvp_head*, %struct.rsvp_head** %3, align 8
  %37 = call i32 @tunnel_recycle(%struct.rsvp_head* %36)
  br label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %6

41:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @tunnel_bts(%struct.rsvp_head*) #1

declare dso_local i32 @tunnel_recycle(%struct.rsvp_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
