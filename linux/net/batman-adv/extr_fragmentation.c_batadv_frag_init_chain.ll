; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_fragmentation.c_batadv_frag_init_chain.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_fragmentation.c_batadv_frag_init_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_frag_table_entry = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_frag_table_entry*, i64)* @batadv_frag_init_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_frag_init_chain(%struct.batadv_frag_table_entry* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.batadv_frag_table_entry*, align 8
  %5 = alloca i64, align 8
  store %struct.batadv_frag_table_entry* %0, %struct.batadv_frag_table_entry** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.batadv_frag_table_entry*, %struct.batadv_frag_table_entry** %4, align 8
  %7 = getelementptr inbounds %struct.batadv_frag_table_entry, %struct.batadv_frag_table_entry* %6, i32 0, i32 3
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.batadv_frag_table_entry*, %struct.batadv_frag_table_entry** %4, align 8
  %10 = getelementptr inbounds %struct.batadv_frag_table_entry, %struct.batadv_frag_table_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

15:                                               ; preds = %2
  %16 = load %struct.batadv_frag_table_entry*, %struct.batadv_frag_table_entry** %4, align 8
  %17 = getelementptr inbounds %struct.batadv_frag_table_entry, %struct.batadv_frag_table_entry* %16, i32 0, i32 2
  %18 = call i32 @hlist_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load %struct.batadv_frag_table_entry*, %struct.batadv_frag_table_entry** %4, align 8
  %22 = getelementptr inbounds %struct.batadv_frag_table_entry, %struct.batadv_frag_table_entry* %21, i32 0, i32 2
  %23 = call i32 @batadv_frag_clear_chain(i32* %22, i32 1)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load %struct.batadv_frag_table_entry*, %struct.batadv_frag_table_entry** %4, align 8
  %26 = getelementptr inbounds %struct.batadv_frag_table_entry, %struct.batadv_frag_table_entry* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.batadv_frag_table_entry*, %struct.batadv_frag_table_entry** %4, align 8
  %29 = getelementptr inbounds %struct.batadv_frag_table_entry, %struct.batadv_frag_table_entry* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %24, %14
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @hlist_empty(i32*) #1

declare dso_local i32 @batadv_frag_clear_chain(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
