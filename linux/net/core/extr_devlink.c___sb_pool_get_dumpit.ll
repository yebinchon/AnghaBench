; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c___sb_pool_get_dumpit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c___sb_pool_get_dumpit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink = type { i32 }
%struct.devlink_sb = type { i32 }

@DEVLINK_CMD_SB_POOL_NEW = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32*, %struct.devlink*, %struct.devlink_sb*, i32, i32)* @__sb_pool_get_dumpit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sb_pool_get_dumpit(%struct.sk_buff* %0, i32 %1, i32* %2, %struct.devlink* %3, %struct.devlink_sb* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.devlink*, align 8
  %13 = alloca %struct.devlink_sb*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store %struct.devlink* %3, %struct.devlink** %12, align 8
  store %struct.devlink_sb* %4, %struct.devlink_sb** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.devlink_sb*, %struct.devlink_sb** %13, align 8
  %20 = call i64 @devlink_sb_pool_count(%struct.devlink_sb* %19)
  store i64 %20, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %21

21:                                               ; preds = %52, %7
  %22 = load i64, i64* %17, align 8
  %23 = load i64, i64* %16, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %21
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %52

34:                                               ; preds = %25
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = load %struct.devlink*, %struct.devlink** %12, align 8
  %37 = load %struct.devlink_sb*, %struct.devlink_sb** %13, align 8
  %38 = load i64, i64* %17, align 8
  %39 = load i32, i32* @DEVLINK_CMD_SB_POOL_NEW, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @NLM_F_MULTI, align 4
  %43 = call i32 @devlink_nl_sb_pool_fill(%struct.sk_buff* %35, %struct.devlink* %36, %struct.devlink_sb* %37, i64 %38, i32 %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %18, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i32, i32* %18, align 4
  store i32 %47, i32* %8, align 4
  br label %56

48:                                               ; preds = %34
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %48, %30
  %53 = load i64, i64* %17, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %17, align 8
  br label %21

55:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %55, %46
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i64 @devlink_sb_pool_count(%struct.devlink_sb*) #1

declare dso_local i32 @devlink_nl_sb_pool_fill(%struct.sk_buff*, %struct.devlink*, %struct.devlink_sb*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
