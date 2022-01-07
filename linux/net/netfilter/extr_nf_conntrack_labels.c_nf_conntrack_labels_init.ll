; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_labels.c_nf_conntrack_labels_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_labels.c_nf_conntrack_labels_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NF_CT_LABELS_MAX_SIZE = common dso_local global i32 0, align 4
@U8_MAX = common dso_local global i32 0, align 4
@labels_extend = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_conntrack_labels_init() #0 {
  %1 = load i32, i32* @NF_CT_LABELS_MAX_SIZE, align 4
  %2 = sext i32 %1 to i64
  %3 = udiv i64 %2, 8
  %4 = load i32, i32* @U8_MAX, align 4
  %5 = sext i32 %4 to i64
  %6 = icmp uge i64 %3, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUILD_BUG_ON(i32 %7)
  %9 = call i32 @nf_ct_extend_register(i32* @labels_extend)
  ret i32 %9
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @nf_ct_extend_register(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
