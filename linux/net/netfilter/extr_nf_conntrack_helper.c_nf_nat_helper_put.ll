; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_helper.c_nf_nat_helper_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_helper.c_nf_nat_helper_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_helper = type { i32 }
%struct.nf_conntrack_nat_helper = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_nat_helper_put(%struct.nf_conntrack_helper* %0) #0 {
  %2 = alloca %struct.nf_conntrack_helper*, align 8
  %3 = alloca %struct.nf_conntrack_nat_helper*, align 8
  store %struct.nf_conntrack_helper* %0, %struct.nf_conntrack_helper** %2, align 8
  %4 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %2, align 8
  %5 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.nf_conntrack_nat_helper* @nf_conntrack_nat_helper_find(i32 %6)
  store %struct.nf_conntrack_nat_helper* %7, %struct.nf_conntrack_nat_helper** %3, align 8
  %8 = load %struct.nf_conntrack_nat_helper*, %struct.nf_conntrack_nat_helper** %3, align 8
  %9 = icmp ne %struct.nf_conntrack_nat_helper* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON_ONCE(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.nf_conntrack_nat_helper*, %struct.nf_conntrack_nat_helper** %3, align 8
  %17 = getelementptr inbounds %struct.nf_conntrack_nat_helper, %struct.nf_conntrack_nat_helper* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @module_put(i32 %18)
  br label %20

20:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.nf_conntrack_nat_helper* @nf_conntrack_nat_helper_find(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
