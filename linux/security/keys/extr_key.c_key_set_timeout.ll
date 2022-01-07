; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_key.c_key_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_key.c_key_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, i32 }

@key_gc_delay = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_set_timeout(%struct.key* %0, i32 %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.key*, %struct.key** %3, align 8
  %7 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 1
  %8 = call i32 @down_write(i32* %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ugt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = call i32 (...) @ktime_get_real_seconds()
  %13 = load i32, i32* %4, align 4
  %14 = add i32 %12, %13
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.key*, %struct.key** %3, align 8
  %18 = getelementptr inbounds %struct.key, %struct.key* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.key*, %struct.key** %3, align 8
  %20 = getelementptr inbounds %struct.key, %struct.key* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @key_gc_delay, align 4
  %23 = add i32 %21, %22
  %24 = call i32 @key_schedule_gc(i32 %23)
  %25 = load %struct.key*, %struct.key** %3, align 8
  %26 = getelementptr inbounds %struct.key, %struct.key* %25, i32 0, i32 1
  %27 = call i32 @up_write(i32* %26)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @key_schedule_gc(i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
