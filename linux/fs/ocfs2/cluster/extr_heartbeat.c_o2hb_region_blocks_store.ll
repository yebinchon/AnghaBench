; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_region_blocks_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_region_blocks_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.o2hb_region = type { i32, i64 }

@EINVAL = common dso_local global i64 0, align 8
@O2NM_MAX_NODES = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @o2hb_region_blocks_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @o2hb_region_blocks_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.o2hb_region*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.config_item*, %struct.config_item** %5, align 8
  %12 = call %struct.o2hb_region* @to_o2hb_region(%struct.config_item* %11)
  store %struct.o2hb_region* %12, %struct.o2hb_region** %8, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %10, align 8
  %14 = load %struct.o2hb_region*, %struct.o2hb_region** %8, align 8
  %15 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %4, align 8
  br label %55

21:                                               ; preds = %3
  %22 = load i8*, i8** %10, align 8
  %23 = call i64 @simple_strtoul(i8* %22, i8** %10, i32 0)
  store i64 %23, i64* %9, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i8*, i8** %10, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 10
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %21
  %37 = load i64, i64* @EINVAL, align 8
  %38 = sub i64 0, %37
  store i64 %38, i64* %4, align 8
  br label %55

39:                                               ; preds = %31, %26
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @O2NM_MAX_NODES, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %9, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43, %39
  %47 = load i64, i64* @ERANGE, align 8
  %48 = sub i64 0, %47
  store i64 %48, i64* %4, align 8
  br label %55

49:                                               ; preds = %43
  %50 = load i64, i64* %9, align 8
  %51 = trunc i64 %50 to i32
  %52 = load %struct.o2hb_region*, %struct.o2hb_region** %8, align 8
  %53 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i64, i64* %7, align 8
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %49, %46, %36, %18
  %56 = load i64, i64* %4, align 8
  ret i64 %56
}

declare dso_local %struct.o2hb_region* @to_o2hb_region(%struct.config_item*) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
