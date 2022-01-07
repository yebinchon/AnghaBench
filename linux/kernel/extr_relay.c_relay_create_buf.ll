; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_create_buf.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_create_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rchan_buf = type { %struct.rchan_buf*, %struct.rchan*, i32 }
%struct.rchan = type { i32, i32, i32 }

@KMALLOC_MAX_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rchan_buf* (%struct.rchan*)* @relay_create_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rchan_buf* @relay_create_buf(%struct.rchan* %0) #0 {
  %2 = alloca %struct.rchan_buf*, align 8
  %3 = alloca %struct.rchan*, align 8
  %4 = alloca %struct.rchan_buf*, align 8
  store %struct.rchan* %0, %struct.rchan** %3, align 8
  %5 = load %struct.rchan*, %struct.rchan** %3, align 8
  %6 = getelementptr inbounds %struct.rchan, %struct.rchan* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = load i32, i32* @KMALLOC_MAX_SIZE, align 4
  %10 = sext i32 %9 to i64
  %11 = udiv i64 %10, 8
  %12 = icmp ugt i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.rchan_buf* null, %struct.rchan_buf** %2, align 8
  br label %62

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.rchan_buf* @kzalloc(i32 24, i32 %15)
  store %struct.rchan_buf* %16, %struct.rchan_buf** %4, align 8
  %17 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %18 = icmp ne %struct.rchan_buf* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store %struct.rchan_buf* null, %struct.rchan_buf** %2, align 8
  br label %62

20:                                               ; preds = %14
  %21 = load %struct.rchan*, %struct.rchan** %3, align 8
  %22 = getelementptr inbounds %struct.rchan, %struct.rchan* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.rchan_buf* @kmalloc_array(i32 %23, i32 8, i32 %24)
  %26 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %27 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %26, i32 0, i32 0
  store %struct.rchan_buf* %25, %struct.rchan_buf** %27, align 8
  %28 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %29 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %28, i32 0, i32 0
  %30 = load %struct.rchan_buf*, %struct.rchan_buf** %29, align 8
  %31 = icmp ne %struct.rchan_buf* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %20
  br label %55

33:                                               ; preds = %20
  %34 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %35 = load %struct.rchan*, %struct.rchan** %3, align 8
  %36 = getelementptr inbounds %struct.rchan, %struct.rchan* %35, i32 0, i32 2
  %37 = call i32 @relay_alloc_buf(%struct.rchan_buf* %34, i32* %36)
  %38 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %39 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %41 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  br label %55

45:                                               ; preds = %33
  %46 = load %struct.rchan*, %struct.rchan** %3, align 8
  %47 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %48 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %47, i32 0, i32 1
  store %struct.rchan* %46, %struct.rchan** %48, align 8
  %49 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %50 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %49, i32 0, i32 1
  %51 = load %struct.rchan*, %struct.rchan** %50, align 8
  %52 = getelementptr inbounds %struct.rchan, %struct.rchan* %51, i32 0, i32 1
  %53 = call i32 @kref_get(i32* %52)
  %54 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  store %struct.rchan_buf* %54, %struct.rchan_buf** %2, align 8
  br label %62

55:                                               ; preds = %44, %32
  %56 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %57 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %56, i32 0, i32 0
  %58 = load %struct.rchan_buf*, %struct.rchan_buf** %57, align 8
  %59 = call i32 @kfree(%struct.rchan_buf* %58)
  %60 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %61 = call i32 @kfree(%struct.rchan_buf* %60)
  store %struct.rchan_buf* null, %struct.rchan_buf** %2, align 8
  br label %62

62:                                               ; preds = %55, %45, %19, %13
  %63 = load %struct.rchan_buf*, %struct.rchan_buf** %2, align 8
  ret %struct.rchan_buf* %63
}

declare dso_local %struct.rchan_buf* @kzalloc(i32, i32) #1

declare dso_local %struct.rchan_buf* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @relay_alloc_buf(%struct.rchan_buf*, i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @kfree(%struct.rchan_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
