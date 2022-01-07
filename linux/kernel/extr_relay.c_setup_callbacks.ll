; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_relay.c_setup_callbacks.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_relay.c_setup_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rchan_callbacks = type { i64, i64, i64, i64, i64 }
%struct.rchan = type { %struct.rchan_callbacks* }

@default_channel_callbacks = common dso_local global %struct.rchan_callbacks zeroinitializer, align 8
@subbuf_start_default_callback = common dso_local global i64 0, align 8
@buf_mapped_default_callback = common dso_local global i64 0, align 8
@buf_unmapped_default_callback = common dso_local global i64 0, align 8
@create_buf_file_default_callback = common dso_local global i64 0, align 8
@remove_buf_file_default_callback = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rchan*, %struct.rchan_callbacks*)* @setup_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_callbacks(%struct.rchan* %0, %struct.rchan_callbacks* %1) #0 {
  %3 = alloca %struct.rchan*, align 8
  %4 = alloca %struct.rchan_callbacks*, align 8
  store %struct.rchan* %0, %struct.rchan** %3, align 8
  store %struct.rchan_callbacks* %1, %struct.rchan_callbacks** %4, align 8
  %5 = load %struct.rchan_callbacks*, %struct.rchan_callbacks** %4, align 8
  %6 = icmp ne %struct.rchan_callbacks* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load %struct.rchan*, %struct.rchan** %3, align 8
  %9 = getelementptr inbounds %struct.rchan, %struct.rchan* %8, i32 0, i32 0
  store %struct.rchan_callbacks* @default_channel_callbacks, %struct.rchan_callbacks** %9, align 8
  br label %59

10:                                               ; preds = %2
  %11 = load %struct.rchan_callbacks*, %struct.rchan_callbacks** %4, align 8
  %12 = getelementptr inbounds %struct.rchan_callbacks, %struct.rchan_callbacks* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load i64, i64* @subbuf_start_default_callback, align 8
  %17 = load %struct.rchan_callbacks*, %struct.rchan_callbacks** %4, align 8
  %18 = getelementptr inbounds %struct.rchan_callbacks, %struct.rchan_callbacks* %17, i32 0, i32 4
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %15, %10
  %20 = load %struct.rchan_callbacks*, %struct.rchan_callbacks** %4, align 8
  %21 = getelementptr inbounds %struct.rchan_callbacks, %struct.rchan_callbacks* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* @buf_mapped_default_callback, align 8
  %26 = load %struct.rchan_callbacks*, %struct.rchan_callbacks** %4, align 8
  %27 = getelementptr inbounds %struct.rchan_callbacks, %struct.rchan_callbacks* %26, i32 0, i32 3
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %19
  %29 = load %struct.rchan_callbacks*, %struct.rchan_callbacks** %4, align 8
  %30 = getelementptr inbounds %struct.rchan_callbacks, %struct.rchan_callbacks* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* @buf_unmapped_default_callback, align 8
  %35 = load %struct.rchan_callbacks*, %struct.rchan_callbacks** %4, align 8
  %36 = getelementptr inbounds %struct.rchan_callbacks, %struct.rchan_callbacks* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.rchan_callbacks*, %struct.rchan_callbacks** %4, align 8
  %39 = getelementptr inbounds %struct.rchan_callbacks, %struct.rchan_callbacks* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* @create_buf_file_default_callback, align 8
  %44 = load %struct.rchan_callbacks*, %struct.rchan_callbacks** %4, align 8
  %45 = getelementptr inbounds %struct.rchan_callbacks, %struct.rchan_callbacks* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %37
  %47 = load %struct.rchan_callbacks*, %struct.rchan_callbacks** %4, align 8
  %48 = getelementptr inbounds %struct.rchan_callbacks, %struct.rchan_callbacks* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i64, i64* @remove_buf_file_default_callback, align 8
  %53 = load %struct.rchan_callbacks*, %struct.rchan_callbacks** %4, align 8
  %54 = getelementptr inbounds %struct.rchan_callbacks, %struct.rchan_callbacks* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %51, %46
  %56 = load %struct.rchan_callbacks*, %struct.rchan_callbacks** %4, align 8
  %57 = load %struct.rchan*, %struct.rchan** %3, align 8
  %58 = getelementptr inbounds %struct.rchan, %struct.rchan* %57, i32 0, i32 0
  store %struct.rchan_callbacks* %56, %struct.rchan_callbacks** %58, align 8
  br label %59

59:                                               ; preds = %55, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
