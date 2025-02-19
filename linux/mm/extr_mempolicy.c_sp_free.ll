; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_sp_free.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_sp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp_node = type { i32 }

@sn_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sp_node*)* @sp_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sp_free(%struct.sp_node* %0) #0 {
  %2 = alloca %struct.sp_node*, align 8
  store %struct.sp_node* %0, %struct.sp_node** %2, align 8
  %3 = load %struct.sp_node*, %struct.sp_node** %2, align 8
  %4 = getelementptr inbounds %struct.sp_node, %struct.sp_node* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @mpol_put(i32 %5)
  %7 = load i32, i32* @sn_cache, align 4
  %8 = load %struct.sp_node*, %struct.sp_node** %2, align 8
  %9 = call i32 @kmem_cache_free(i32 %7, %struct.sp_node* %8)
  ret void
}

declare dso_local i32 @mpol_put(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.sp_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
