; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_hash.c_batadv_hash_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_hash.c_batadv_hash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hashtable = type { i64, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_hashtable*)* @batadv_hash_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_hash_init(%struct.batadv_hashtable* %0) #0 {
  %2 = alloca %struct.batadv_hashtable*, align 8
  %3 = alloca i64, align 8
  store %struct.batadv_hashtable* %0, %struct.batadv_hashtable** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %23, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %2, align 8
  %7 = getelementptr inbounds %struct.batadv_hashtable, %struct.batadv_hashtable* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %4
  %11 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %2, align 8
  %12 = getelementptr inbounds %struct.batadv_hashtable, %struct.batadv_hashtable* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = call i32 @INIT_HLIST_HEAD(i32* %15)
  %17 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %2, align 8
  %18 = getelementptr inbounds %struct.batadv_hashtable, %struct.batadv_hashtable* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = call i32 @spin_lock_init(i32* %21)
  br label %23

23:                                               ; preds = %10
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %3, align 8
  br label %4

26:                                               ; preds = %4
  %27 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %2, align 8
  %28 = getelementptr inbounds %struct.batadv_hashtable, %struct.batadv_hashtable* %27, i32 0, i32 1
  %29 = call i32 @atomic_set(i32* %28, i32 0)
  ret void
}

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
