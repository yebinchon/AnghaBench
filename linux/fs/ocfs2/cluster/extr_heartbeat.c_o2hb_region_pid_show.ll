; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_region_pid_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_region_pid_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.o2hb_region = type { i64 }

@o2hb_live_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @o2hb_region_pid_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2hb_region_pid_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.o2hb_region*, align 8
  %7 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.config_item*, %struct.config_item** %4, align 8
  %9 = call %struct.o2hb_region* @to_o2hb_region(%struct.config_item* %8)
  store %struct.o2hb_region* %9, %struct.o2hb_region** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = call i32 @spin_lock(i32* @o2hb_live_lock)
  %11 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %12 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %17 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @task_pid_nr(i64 %18)
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %15, %2
  %21 = call i32 @spin_unlock(i32* @o2hb_live_lock)
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %29

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %24
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.o2hb_region* @to_o2hb_region(%struct.config_item*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @task_pid_nr(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
