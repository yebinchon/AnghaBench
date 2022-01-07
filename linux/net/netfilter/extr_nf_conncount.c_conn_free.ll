; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conncount.c_conn_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conncount.c_conn_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conncount_list = type { i32, i32 }
%struct.nf_conncount_tuple = type { i32 }

@conncount_conn_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conncount_list*, %struct.nf_conncount_tuple*)* @conn_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conn_free(%struct.nf_conncount_list* %0, %struct.nf_conncount_tuple* %1) #0 {
  %3 = alloca %struct.nf_conncount_list*, align 8
  %4 = alloca %struct.nf_conncount_tuple*, align 8
  store %struct.nf_conncount_list* %0, %struct.nf_conncount_list** %3, align 8
  store %struct.nf_conncount_tuple* %1, %struct.nf_conncount_tuple** %4, align 8
  %5 = load %struct.nf_conncount_list*, %struct.nf_conncount_list** %3, align 8
  %6 = getelementptr inbounds %struct.nf_conncount_list, %struct.nf_conncount_list* %5, i32 0, i32 1
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load %struct.nf_conncount_list*, %struct.nf_conncount_list** %3, align 8
  %9 = getelementptr inbounds %struct.nf_conncount_list, %struct.nf_conncount_list* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.nf_conncount_tuple*, %struct.nf_conncount_tuple** %4, align 8
  %13 = getelementptr inbounds %struct.nf_conncount_tuple, %struct.nf_conncount_tuple* %12, i32 0, i32 0
  %14 = call i32 @list_del(i32* %13)
  %15 = load i32, i32* @conncount_conn_cachep, align 4
  %16 = load %struct.nf_conncount_tuple*, %struct.nf_conncount_tuple** %4, align 8
  %17 = call i32 @kmem_cache_free(i32 %15, %struct.nf_conncount_tuple* %16)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.nf_conncount_tuple*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
