; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_read_slots.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_read_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2hb_region = type { i32 }
%struct.o2hb_bio_wait_ctxt = type { i32, i32 }
%struct.bio = type { i32 }

@REQ_OP_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.o2hb_region*, i32, i32)* @o2hb_read_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2hb_read_slots(%struct.o2hb_region* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.o2hb_region*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.o2hb_bio_wait_ctxt, align 4
  %10 = alloca %struct.bio*, align 8
  store %struct.o2hb_region* %0, %struct.o2hb_region** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %7, align 4
  %12 = call i32 @o2hb_bio_wait_init(%struct.o2hb_bio_wait_ctxt* %9)
  br label %13

13:                                               ; preds = %30, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @REQ_OP_READ, align 4
  %21 = call %struct.bio* @o2hb_setup_one_bio(%struct.o2hb_region* %18, %struct.o2hb_bio_wait_ctxt* %9, i32* %7, i32 %19, i32 %20, i32 0)
  store %struct.bio* %21, %struct.bio** %10, align 8
  %22 = load %struct.bio*, %struct.bio** %10, align 8
  %23 = call i64 @IS_ERR(%struct.bio* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load %struct.bio*, %struct.bio** %10, align 8
  %27 = call i32 @PTR_ERR(%struct.bio* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @mlog_errno(i32 %28)
  br label %36

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.o2hb_bio_wait_ctxt, %struct.o2hb_bio_wait_ctxt* %9, i32 0, i32 1
  %32 = call i32 @atomic_inc(i32* %31)
  %33 = load %struct.bio*, %struct.bio** %10, align 8
  %34 = call i32 @submit_bio(%struct.bio* %33)
  br label %13

35:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %35, %25
  %37 = call i32 @o2hb_wait_on_io(%struct.o2hb_bio_wait_ctxt* %9)
  %38 = getelementptr inbounds %struct.o2hb_bio_wait_ctxt, %struct.o2hb_bio_wait_ctxt* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.o2hb_bio_wait_ctxt, %struct.o2hb_bio_wait_ctxt* %9, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %44, %41, %36
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local i32 @o2hb_bio_wait_init(%struct.o2hb_bio_wait_ctxt*) #1

declare dso_local %struct.bio* @o2hb_setup_one_bio(%struct.o2hb_region*, %struct.o2hb_bio_wait_ctxt*, i32*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.bio*) #1

declare dso_local i32 @PTR_ERR(%struct.bio*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

declare dso_local i32 @o2hb_wait_on_io(%struct.o2hb_bio_wait_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
