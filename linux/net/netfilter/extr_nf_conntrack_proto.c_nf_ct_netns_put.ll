; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto.c_nf_ct_netns_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto.c_nf_ct_netns_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }

@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@NFPROTO_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_ct_netns_put(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %16 [
    i32 129, label %6
    i32 128, label %9
  ]

6:                                                ; preds = %2
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = call i32 @nf_ct_netns_do_put(%struct.net* %7, i32 129)
  br label %9

9:                                                ; preds = %2, %6
  %10 = load %struct.net*, %struct.net** %3, align 8
  %11 = load i32, i32* @NFPROTO_IPV4, align 4
  %12 = call i32 @nf_ct_netns_do_put(%struct.net* %10, i32 %11)
  %13 = load %struct.net*, %struct.net** %3, align 8
  %14 = load i32, i32* @NFPROTO_IPV6, align 4
  %15 = call i32 @nf_ct_netns_do_put(%struct.net* %13, i32 %14)
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.net*, %struct.net** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @nf_ct_netns_do_put(%struct.net* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %9
  ret void
}

declare dso_local i32 @nf_ct_netns_do_put(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
