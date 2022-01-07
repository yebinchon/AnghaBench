; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_proc.c_snmp6_unregister_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_proc.c_snmp6_unregister_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp6_unregister_dev(%struct.inet6_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inet6_dev*, align 8
  %4 = alloca %struct.net*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %3, align 8
  %5 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %6 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.net* @dev_net(i32 %7)
  store %struct.net* %8, %struct.net** %4, align 8
  %9 = load %struct.net*, %struct.net** %4, align 8
  %10 = getelementptr inbounds %struct.net, %struct.net* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %35

17:                                               ; preds = %1
  %18 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %19 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %35

26:                                               ; preds = %17
  %27 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %28 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @proc_remove(i32* %30)
  %32 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %33 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %26, %23, %14
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i32 @proc_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
