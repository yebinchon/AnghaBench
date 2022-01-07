; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_lockdep.c_keyhashentry.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_lockdep.c_keyhashentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.lock_class_key = type { i32 }

@KEYHASH_BITS = common dso_local global i32 0, align 4
@lock_keys_hash = common dso_local global %struct.hlist_head* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_head* (%struct.lock_class_key*)* @keyhashentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_head* @keyhashentry(%struct.lock_class_key* %0) #0 {
  %2 = alloca %struct.lock_class_key*, align 8
  %3 = alloca i64, align 8
  store %struct.lock_class_key* %0, %struct.lock_class_key** %2, align 8
  %4 = load %struct.lock_class_key*, %struct.lock_class_key** %2, align 8
  %5 = ptrtoint %struct.lock_class_key* %4 to i64
  %6 = load i32, i32* @KEYHASH_BITS, align 4
  %7 = call i64 @hash_long(i64 %5, i32 %6)
  store i64 %7, i64* %3, align 8
  %8 = load %struct.hlist_head*, %struct.hlist_head** @lock_keys_hash, align 8
  %9 = load i64, i64* %3, align 8
  %10 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %8, i64 %9
  ret %struct.hlist_head* %10
}

declare dso_local i64 @hash_long(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
