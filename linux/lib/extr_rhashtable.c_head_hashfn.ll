; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_head_hashfn.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_head_hashfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhashtable = type { i32 }
%struct.bucket_table = type { i32 }
%struct.rhash_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rhashtable*, %struct.bucket_table*, %struct.rhash_head*)* @head_hashfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @head_hashfn(%struct.rhashtable* %0, %struct.bucket_table* %1, %struct.rhash_head* %2) #0 {
  %4 = alloca %struct.rhashtable*, align 8
  %5 = alloca %struct.bucket_table*, align 8
  %6 = alloca %struct.rhash_head*, align 8
  store %struct.rhashtable* %0, %struct.rhashtable** %4, align 8
  store %struct.bucket_table* %1, %struct.bucket_table** %5, align 8
  store %struct.rhash_head* %2, %struct.rhash_head** %6, align 8
  %7 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %8 = load %struct.bucket_table*, %struct.bucket_table** %5, align 8
  %9 = load %struct.rhash_head*, %struct.rhash_head** %6, align 8
  %10 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %11 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @rht_head_hashfn(%struct.rhashtable* %7, %struct.bucket_table* %8, %struct.rhash_head* %9, i32 %12)
  ret i32 %13
}

declare dso_local i32 @rht_head_hashfn(%struct.rhashtable*, %struct.bucket_table*, %struct.rhash_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
