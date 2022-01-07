; ModuleID = '/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_kvp_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_kvp_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.kvp_record* }
%struct.kvp_record = type { i32, i32 }

@HV_KVP_EXCHANGE_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@HV_KVP_EXCHANGE_MAX_VALUE_SIZE = common dso_local global i32 0, align 4
@kvp_file_info = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32*, i32)* @kvp_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvp_get_value(i32 %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.kvp_record*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @HV_KVP_EXCHANGE_MAX_KEY_SIZE, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @HV_KVP_EXCHANGE_MAX_VALUE_SIZE, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %5
  store i32 1, i32* %6, align 4
  br label %68

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @kvp_update_mem_state(i32 %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %13, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load %struct.kvp_record*, %struct.kvp_record** %36, align 8
  store %struct.kvp_record* %37, %struct.kvp_record** %14, align 8
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %64, %23
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %38
  %43 = load i32*, i32** %8, align 8
  %44 = load %struct.kvp_record*, %struct.kvp_record** %14, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %44, i64 %46
  %48 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @memcmp(i32* %43, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %64

54:                                               ; preds = %42
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.kvp_record*, %struct.kvp_record** %14, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %56, i64 %58
  %60 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @memcpy(i32* %55, i32 %61, i32 %62)
  store i32 0, i32* %6, align 4
  br label %68

64:                                               ; preds = %53
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %38

67:                                               ; preds = %38
  store i32 1, i32* %6, align 4
  br label %68

68:                                               ; preds = %67, %54, %22
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @kvp_update_mem_state(i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
