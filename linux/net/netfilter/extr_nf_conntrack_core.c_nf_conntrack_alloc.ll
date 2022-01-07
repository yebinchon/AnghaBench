; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.net = type { i32 }
%struct.nf_conntrack_zone = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nf_conn* @nf_conntrack_alloc(%struct.net* %0, %struct.nf_conntrack_zone* %1, %struct.nf_conntrack_tuple* %2, %struct.nf_conntrack_tuple* %3, i32 %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.nf_conntrack_zone*, align 8
  %8 = alloca %struct.nf_conntrack_tuple*, align 8
  %9 = alloca %struct.nf_conntrack_tuple*, align 8
  %10 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.nf_conntrack_zone* %1, %struct.nf_conntrack_zone** %7, align 8
  store %struct.nf_conntrack_tuple* %2, %struct.nf_conntrack_tuple** %8, align 8
  store %struct.nf_conntrack_tuple* %3, %struct.nf_conntrack_tuple** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.net*, %struct.net** %6, align 8
  %12 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %7, align 8
  %13 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %14 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call %struct.nf_conn* @__nf_conntrack_alloc(%struct.net* %11, %struct.nf_conntrack_zone* %12, %struct.nf_conntrack_tuple* %13, %struct.nf_conntrack_tuple* %14, i32 %15, i32 0)
  ret %struct.nf_conn* %16
}

declare dso_local %struct.nf_conn* @__nf_conntrack_alloc(%struct.net*, %struct.nf_conntrack_zone*, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
