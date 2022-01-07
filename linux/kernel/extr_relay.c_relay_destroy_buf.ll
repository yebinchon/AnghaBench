; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_destroy_buf.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_destroy_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rchan_buf = type { i32, %struct.rchan_buf*, i32, i32*, i32, %struct.rchan* }
%struct.rchan = type { i32, i32 }

@relay_destroy_channel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rchan_buf*)* @relay_destroy_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @relay_destroy_buf(%struct.rchan_buf* %0) #0 {
  %2 = alloca %struct.rchan_buf*, align 8
  %3 = alloca %struct.rchan*, align 8
  %4 = alloca i32, align 4
  store %struct.rchan_buf* %0, %struct.rchan_buf** %2, align 8
  %5 = load %struct.rchan_buf*, %struct.rchan_buf** %2, align 8
  %6 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %5, i32 0, i32 5
  %7 = load %struct.rchan*, %struct.rchan** %6, align 8
  store %struct.rchan* %7, %struct.rchan** %3, align 8
  %8 = load %struct.rchan_buf*, %struct.rchan_buf** %2, align 8
  %9 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @likely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %1
  %14 = load %struct.rchan_buf*, %struct.rchan_buf** %2, align 8
  %15 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @vunmap(i32 %16)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %33, %13
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.rchan_buf*, %struct.rchan_buf** %2, align 8
  %21 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.rchan_buf*, %struct.rchan_buf** %2, align 8
  %26 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @__free_page(i32 %31)
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %18

36:                                               ; preds = %18
  %37 = load %struct.rchan_buf*, %struct.rchan_buf** %2, align 8
  %38 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @relay_free_page_array(i32* %39)
  br label %41

41:                                               ; preds = %36, %1
  %42 = load %struct.rchan*, %struct.rchan** %3, align 8
  %43 = getelementptr inbounds %struct.rchan, %struct.rchan* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rchan_buf*, %struct.rchan_buf** %2, align 8
  %46 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32** @per_cpu_ptr(i32 %44, i32 %47)
  store i32* null, i32** %48, align 8
  %49 = load %struct.rchan_buf*, %struct.rchan_buf** %2, align 8
  %50 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %49, i32 0, i32 1
  %51 = load %struct.rchan_buf*, %struct.rchan_buf** %50, align 8
  %52 = call i32 @kfree(%struct.rchan_buf* %51)
  %53 = load %struct.rchan_buf*, %struct.rchan_buf** %2, align 8
  %54 = call i32 @kfree(%struct.rchan_buf* %53)
  %55 = load %struct.rchan*, %struct.rchan** %3, align 8
  %56 = getelementptr inbounds %struct.rchan, %struct.rchan* %55, i32 0, i32 0
  %57 = load i32, i32* @relay_destroy_channel, align 4
  %58 = call i32 @kref_put(i32* %56, i32 %57)
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vunmap(i32) #1

declare dso_local i32 @__free_page(i32) #1

declare dso_local i32 @relay_free_page_array(i32*) #1

declare dso_local i32** @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @kfree(%struct.rchan_buf*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
