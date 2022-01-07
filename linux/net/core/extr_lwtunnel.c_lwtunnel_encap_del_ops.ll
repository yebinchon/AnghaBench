; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_lwtunnel.c_lwtunnel_encap_del_ops.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_lwtunnel.c_lwtunnel_encap_del_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwtunnel_encap_ops = type { i32 }

@LWTUNNEL_ENCAP_NONE = common dso_local global i32 0, align 4
@LWTUNNEL_ENCAP_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@lwtun_encaps = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwtunnel_encap_del_ops(%struct.lwtunnel_encap_ops* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lwtunnel_encap_ops*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lwtunnel_encap_ops* %0, %struct.lwtunnel_encap_ops** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @LWTUNNEL_ENCAP_NONE, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @LWTUNNEL_ENCAP_MAX, align 4
  %13 = icmp ugt i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @ERANGE, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %31

17:                                               ; preds = %10
  %18 = load i32*, i32** @lwtun_encaps, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = bitcast i32* %21 to %struct.lwtunnel_encap_ops**
  %23 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %4, align 8
  %24 = call %struct.lwtunnel_encap_ops* @cmpxchg(%struct.lwtunnel_encap_ops** %22, %struct.lwtunnel_encap_ops* %23, i32* null)
  %25 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %4, align 8
  %26 = icmp eq %struct.lwtunnel_encap_ops* %24, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 0, i32 -1
  store i32 %28, i32* %6, align 4
  %29 = call i32 (...) @synchronize_net()
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %17, %14
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.lwtunnel_encap_ops* @cmpxchg(%struct.lwtunnel_encap_ops**, %struct.lwtunnel_encap_ops*, i32*) #1

declare dso_local i32 @synchronize_net(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
