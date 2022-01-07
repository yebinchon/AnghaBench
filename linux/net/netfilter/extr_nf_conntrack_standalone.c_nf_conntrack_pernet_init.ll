; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_standalone.c_nf_conntrack_pernet_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_standalone.c_nf_conntrack_pernet_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@enable_hooks = common dso_local global i64 0, align 8
@NFPROTO_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*)* @nf_conntrack_pernet_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_conntrack_pernet_init(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  %5 = load %struct.net*, %struct.net** %3, align 8
  %6 = getelementptr inbounds %struct.net, %struct.net* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = load %struct.net*, %struct.net** %3, align 8
  %9 = call i32 @nf_conntrack_standalone_init_sysctl(%struct.net* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.net*, %struct.net** %3, align 8
  %16 = call i32 @nf_conntrack_standalone_init_proc(%struct.net* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %44

20:                                               ; preds = %14
  %21 = load %struct.net*, %struct.net** %3, align 8
  %22 = call i32 @nf_conntrack_init_net(%struct.net* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %41

26:                                               ; preds = %20
  %27 = load i64, i64* @enable_hooks, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.net*, %struct.net** %3, align 8
  %31 = load i32, i32* @NFPROTO_INET, align 4
  %32 = call i32 @nf_ct_netns_get(%struct.net* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %38

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %26
  store i32 0, i32* %2, align 4
  br label %48

38:                                               ; preds = %35
  %39 = load %struct.net*, %struct.net** %3, align 8
  %40 = call i32 @nf_conntrack_cleanup_net(%struct.net* %39)
  br label %41

41:                                               ; preds = %38, %25
  %42 = load %struct.net*, %struct.net** %3, align 8
  %43 = call i32 @nf_conntrack_standalone_fini_proc(%struct.net* %42)
  br label %44

44:                                               ; preds = %41, %19
  %45 = load %struct.net*, %struct.net** %3, align 8
  %46 = call i32 @nf_conntrack_standalone_fini_sysctl(%struct.net* %45)
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %37, %12
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @nf_conntrack_standalone_init_sysctl(%struct.net*) #1

declare dso_local i32 @nf_conntrack_standalone_init_proc(%struct.net*) #1

declare dso_local i32 @nf_conntrack_init_net(%struct.net*) #1

declare dso_local i32 @nf_ct_netns_get(%struct.net*, i32) #1

declare dso_local i32 @nf_conntrack_cleanup_net(%struct.net*) #1

declare dso_local i32 @nf_conntrack_standalone_fini_proc(%struct.net*) #1

declare dso_local i32 @nf_conntrack_standalone_fini_sysctl(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
