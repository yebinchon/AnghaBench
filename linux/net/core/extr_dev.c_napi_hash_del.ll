; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_napi_hash_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_napi_hash_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32, i32 }

@napi_hash_lock = common dso_local global i32 0, align 4
@NAPI_STATE_HASHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @napi_hash_del(%struct.napi_struct* %0) #0 {
  %2 = alloca %struct.napi_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 @spin_lock(i32* @napi_hash_lock)
  %5 = load i32, i32* @NAPI_STATE_HASHED, align 4
  %6 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %7 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %6, i32 0, i32 1
  %8 = call i64 @test_and_clear_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  %11 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %12 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %11, i32 0, i32 0
  %13 = call i32 @hlist_del_rcu(i32* %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = call i32 @spin_unlock(i32* @napi_hash_lock)
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
