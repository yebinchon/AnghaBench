; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_backing-dev.c_bdi_init.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_backing-dev.c_bdi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backing_dev_info = type { i32, i32, i32, i32, i32, i64, i32, i32* }

@FPROP_FRAC_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backing_dev_info*)* @bdi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdi_init(%struct.backing_dev_info* %0) #0 {
  %2 = alloca %struct.backing_dev_info*, align 8
  %3 = alloca i32, align 4
  store %struct.backing_dev_info* %0, %struct.backing_dev_info** %2, align 8
  %4 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %5 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %4, i32 0, i32 7
  store i32* null, i32** %5, align 8
  %6 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %7 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %6, i32 0, i32 6
  %8 = call i32 @kref_init(i32* %7)
  %9 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %10 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %9, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %12 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %11, i32 0, i32 0
  store i32 100, i32* %12, align 8
  %13 = load i32, i32* @FPROP_FRAC_BASE, align 4
  %14 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %15 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 8
  %16 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %17 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %16, i32 0, i32 3
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %20 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %19, i32 0, i32 2
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %23 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %22, i32 0, i32 1
  %24 = call i32 @init_waitqueue_head(i32* %23)
  %25 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %26 = call i32 @cgwb_bdi_init(%struct.backing_dev_info* %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @cgwb_bdi_init(%struct.backing_dev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
