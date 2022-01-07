; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_key.c_key_invalidate.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_key.c_key_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@KEY_FLAG_INVALIDATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_invalidate(%struct.key* %0) #0 {
  %2 = alloca %struct.key*, align 8
  store %struct.key* %0, %struct.key** %2, align 8
  %3 = load %struct.key*, %struct.key** %2, align 8
  %4 = call i32 @key_serial(%struct.key* %3)
  %5 = call i32 @kenter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load %struct.key*, %struct.key** %2, align 8
  %7 = call i32 @key_check(%struct.key* %6)
  %8 = load i32, i32* @KEY_FLAG_INVALIDATED, align 4
  %9 = load %struct.key*, %struct.key** %2, align 8
  %10 = getelementptr inbounds %struct.key, %struct.key* %9, i32 0, i32 1
  %11 = call i32 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %1
  %14 = load %struct.key*, %struct.key** %2, align 8
  %15 = getelementptr inbounds %struct.key, %struct.key* %14, i32 0, i32 0
  %16 = call i32 @down_write_nested(i32* %15, i32 1)
  %17 = load i32, i32* @KEY_FLAG_INVALIDATED, align 4
  %18 = load %struct.key*, %struct.key** %2, align 8
  %19 = getelementptr inbounds %struct.key, %struct.key* %18, i32 0, i32 1
  %20 = call i32 @test_and_set_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %13
  %23 = call i32 (...) @key_schedule_gc_links()
  br label %24

24:                                               ; preds = %22, %13
  %25 = load %struct.key*, %struct.key** %2, align 8
  %26 = getelementptr inbounds %struct.key, %struct.key* %25, i32 0, i32 0
  %27 = call i32 @up_write(i32* %26)
  br label %28

28:                                               ; preds = %24, %1
  ret void
}

declare dso_local i32 @kenter(i8*, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local i32 @key_check(%struct.key*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @down_write_nested(i32*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @key_schedule_gc_links(...) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
