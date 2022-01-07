; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_region_block_bytes_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_region_block_bytes_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.o2hb_region = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @o2hb_region_block_bytes_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2hb_region_block_bytes_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.o2hb_region*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.config_item*, %struct.config_item** %5, align 8
  %13 = call %struct.o2hb_region* @to_o2hb_region(%struct.config_item* %12)
  store %struct.o2hb_region* %13, %struct.o2hb_region** %8, align 8
  %14 = load %struct.o2hb_region*, %struct.o2hb_region** %8, align 8
  %15 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %39

21:                                               ; preds = %3
  %22 = load %struct.o2hb_region*, %struct.o2hb_region** %8, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @o2hb_read_block_input(%struct.o2hb_region* %22, i8* %23, i64* %10, i32* %11)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %39

29:                                               ; preds = %21
  %30 = load i64, i64* %10, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.o2hb_region*, %struct.o2hb_region** %8, align 8
  %33 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.o2hb_region*, %struct.o2hb_region** %8, align 8
  %36 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i64, i64* %7, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %29, %27, %18
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.o2hb_region* @to_o2hb_region(%struct.config_item*) #1

declare dso_local i32 @o2hb_read_block_input(%struct.o2hb_region*, i8*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
