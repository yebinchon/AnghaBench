; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_key.c_key_revoke.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_key.c_key_revoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.key*)* }

@KEY_FLAG_REVOKED = common dso_local global i32 0, align 4
@key_gc_delay = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_revoke(%struct.key* %0) #0 {
  %2 = alloca %struct.key*, align 8
  %3 = alloca i64, align 8
  store %struct.key* %0, %struct.key** %2, align 8
  %4 = load %struct.key*, %struct.key** %2, align 8
  %5 = call i32 @key_check(%struct.key* %4)
  %6 = load %struct.key*, %struct.key** %2, align 8
  %7 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 1
  %8 = call i32 @down_write_nested(i32* %7, i32 1)
  %9 = load i32, i32* @KEY_FLAG_REVOKED, align 4
  %10 = load %struct.key*, %struct.key** %2, align 8
  %11 = getelementptr inbounds %struct.key, %struct.key* %10, i32 0, i32 3
  %12 = call i32 @test_and_set_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %1
  %15 = load %struct.key*, %struct.key** %2, align 8
  %16 = getelementptr inbounds %struct.key, %struct.key* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.key*)*, i32 (%struct.key*)** %18, align 8
  %20 = icmp ne i32 (%struct.key*)* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load %struct.key*, %struct.key** %2, align 8
  %23 = getelementptr inbounds %struct.key, %struct.key* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.key*)*, i32 (%struct.key*)** %25, align 8
  %27 = load %struct.key*, %struct.key** %2, align 8
  %28 = call i32 %26(%struct.key* %27)
  br label %29

29:                                               ; preds = %21, %14, %1
  %30 = call i64 (...) @ktime_get_real_seconds()
  store i64 %30, i64* %3, align 8
  %31 = load %struct.key*, %struct.key** %2, align 8
  %32 = getelementptr inbounds %struct.key, %struct.key* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.key*, %struct.key** %2, align 8
  %37 = getelementptr inbounds %struct.key, %struct.key* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35, %29
  %42 = load i64, i64* %3, align 8
  %43 = load %struct.key*, %struct.key** %2, align 8
  %44 = getelementptr inbounds %struct.key, %struct.key* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.key*, %struct.key** %2, align 8
  %46 = getelementptr inbounds %struct.key, %struct.key* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @key_gc_delay, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @key_schedule_gc(i64 %49)
  br label %51

51:                                               ; preds = %41, %35
  %52 = load %struct.key*, %struct.key** %2, align 8
  %53 = getelementptr inbounds %struct.key, %struct.key* %52, i32 0, i32 1
  %54 = call i32 @up_write(i32* %53)
  ret void
}

declare dso_local i32 @key_check(%struct.key*) #1

declare dso_local i32 @down_write_nested(i32*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local i32 @key_schedule_gc(i64) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
