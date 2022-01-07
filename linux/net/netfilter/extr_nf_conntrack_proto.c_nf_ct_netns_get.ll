; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto.c_nf_ct_netns_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto.c_nf_ct_netns_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_ct_netns_get(%struct.net* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %28 [
    i32 128, label %8
    i32 129, label %11
  ]

8:                                                ; preds = %2
  %9 = load %struct.net*, %struct.net** %4, align 8
  %10 = call i32 @nf_ct_netns_inet_get(%struct.net* %9)
  store i32 %10, i32* %6, align 4
  br label %32

11:                                               ; preds = %2
  %12 = load %struct.net*, %struct.net** %4, align 8
  %13 = call i32 @nf_ct_netns_do_get(%struct.net* %12, i32 129)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %34

18:                                               ; preds = %11
  %19 = load %struct.net*, %struct.net** %4, align 8
  %20 = call i32 @nf_ct_netns_inet_get(%struct.net* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.net*, %struct.net** %4, align 8
  %25 = call i32 @nf_ct_netns_put(%struct.net* %24, i32 129)
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %34

27:                                               ; preds = %18
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.net*, %struct.net** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @nf_ct_netns_do_get(%struct.net* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %27, %8
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %23, %16
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @nf_ct_netns_inet_get(%struct.net*) #1

declare dso_local i32 @nf_ct_netns_do_get(%struct.net*, i32) #1

declare dso_local i32 @nf_ct_netns_put(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
