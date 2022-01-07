; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_key.c_key_put.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_key.c_key_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }

@key_gc_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_put(%struct.key* %0) #0 {
  %2 = alloca %struct.key*, align 8
  store %struct.key* %0, %struct.key** %2, align 8
  %3 = load %struct.key*, %struct.key** %2, align 8
  %4 = icmp ne %struct.key* %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load %struct.key*, %struct.key** %2, align 8
  %7 = call i32 @key_check(%struct.key* %6)
  %8 = load %struct.key*, %struct.key** %2, align 8
  %9 = getelementptr inbounds %struct.key, %struct.key* %8, i32 0, i32 0
  %10 = call i64 @refcount_dec_and_test(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = call i32 @schedule_work(i32* @key_gc_work)
  br label %14

14:                                               ; preds = %12, %5
  br label %15

15:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @key_check(%struct.key*) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
