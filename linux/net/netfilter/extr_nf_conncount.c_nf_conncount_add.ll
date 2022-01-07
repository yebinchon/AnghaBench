; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conncount.c_nf_conncount_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conncount.c_nf_conncount_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nf_conncount_list = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conntrack_zone = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_conncount_add(%struct.net* %0, %struct.nf_conncount_list* %1, %struct.nf_conntrack_tuple* %2, %struct.nf_conntrack_zone* %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.nf_conncount_list*, align 8
  %7 = alloca %struct.nf_conntrack_tuple*, align 8
  %8 = alloca %struct.nf_conntrack_zone*, align 8
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.nf_conncount_list* %1, %struct.nf_conncount_list** %6, align 8
  store %struct.nf_conntrack_tuple* %2, %struct.nf_conntrack_tuple** %7, align 8
  store %struct.nf_conntrack_zone* %3, %struct.nf_conntrack_zone** %8, align 8
  %10 = load %struct.nf_conncount_list*, %struct.nf_conncount_list** %6, align 8
  %11 = getelementptr inbounds %struct.nf_conncount_list, %struct.nf_conncount_list* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.net*, %struct.net** %5, align 8
  %14 = load %struct.nf_conncount_list*, %struct.nf_conncount_list** %6, align 8
  %15 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %16 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %8, align 8
  %17 = call i32 @__nf_conncount_add(%struct.net* %13, %struct.nf_conncount_list* %14, %struct.nf_conntrack_tuple* %15, %struct.nf_conntrack_zone* %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.nf_conncount_list*, %struct.nf_conncount_list** %6, align 8
  %19 = getelementptr inbounds %struct.nf_conncount_list, %struct.nf_conncount_list* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock_bh(i32* %19)
  %21 = load i32, i32* %9, align 4
  ret i32 %21
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__nf_conncount_add(%struct.net*, %struct.nf_conncount_list*, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_zone*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
